# Install Fest Script

## Prerequisites

### XCode Command Line Tools

Do _not_ install XCode from the App Store. Doing so will install the IDE and lots of stuff you don't need and will take a long time and use a lot of disk space!

Better is to install XCode from the Terminal. Note that installing from the Terminal and installing from the App Store are incompatible.

To install the XCode Command Line Tools from the Terminal:

```bash
xcode-select --install
xcode-select -p            # /Library/Developer/CommandLineTools
```

### What if I already have XCode installed from the App Store?

If `xcode-select -p` returns "/Applications/Xcode.app/Contents/Developer", then you are doing it wrong (see above)! To fix this I recommend removing XCode from the /Applications folder and then installing from the Terminal:

```bash
xcode-select -p            # /Applications/Xcode.app/Contents/Developer
sudo rm -rf /Applications/Xcode.app
xcode-select --install
xcode-select -p            # /Library/Developer/CommandLineTools
```

## How to Run the Install Fest Script

Use Safari to download a zip file of this project from GitHub:

* URL: [https://github.com/drmikeh/install-fest](https://github.com/drmikeh/install-fest)
* Click on the "Download ZIP" button on the right.

## How to Run

From the terminal, cd to the directory containing the downloaded zip (which has been conveniently unzipped by Safari) and run the `install-fest` script:

```
cd ~/Downloads/install-fest-master
./install-fest
```

## How to Verify

Open a new terminal window and verify that you have a pretty Bash prompt.
Then run the following:

```
brew list
git --version
ruby --version
node --version
```
