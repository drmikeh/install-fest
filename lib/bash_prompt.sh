SECTION="BASH_PROMPT"
log_banner "$SECTION"

do_exec cp dotfiles/bash_prompt ~/bash_prompt

# Add to bash_profile
do_exec "echo '' >> ~/.bash_profile"
do_exec "echo '# added by installfest script' >> ~/.bash_profile"
do_exec "echo 'source ~/bash_prompt' >> ~/.bash_profile"
