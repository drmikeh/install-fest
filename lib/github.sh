SECTION="GIT HUB"
log_banner "$SECTION"

pause "Please register for an account on github.com if you haven't already done so."

read -p "Enter your First Name: "    fname
read -p "Enter your Last Name: "     lname
read -p "Github Username: "          github_name
read -p "Github Email: "             github_email
read -s -p "Github Password: "       github_password

# SSH keys establish a secure connection between your computer and GitHub
# This script follows these instructions
# `https://help.github.com/articles/generating-ssh-keys`

# SSH Keygen
pause "Generate an SSH key. When you see the prompt 'Enter a file in which to save the key', just press Enter! Your passphrase can be anything that's memorable."

do_exec ssh-keygen -t rsa -C $github_email
do_exec ssh-add id_rsa

public_key=$(cat ~/.ssh/id_rsa.pub)

# Upload to github
do_exec curl https://api.github.com/user/keys \
  -H "User-Agent: WDIInstallFest" \
  -H "Accept: application/vnd.github.v3+json" \
  -u "$github_name:$github_password" \
  -d '{"title":"WDI Installfest", "key":"'"$public_key"'"}'

# TODO (h4w5) add assertion around ... "ssh -T git@github.com"
