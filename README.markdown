![Oh My Zsh](https://s3.amazonaws.com/ohmyzsh/oh-my-zsh-logo.png)


Oh My Zsh is an open source, community-driven framework for managing your [zsh](http://www.zsh.org/) configuration. That sounds boring. Let's try this again.

__Oh My Zsh is a way of life!__ Once installed, your terminal prompt will become the talk of the town _or your money back!_ Each time you interface with your command prompt, you'll be able take advantage of the hundreds of bundled plugins and pretty themes. Strangers will come up to you in cafés and ask you, _"that is amazing. are you some sort of genius?"_ Finally, you'll begin to get the sort of attention that you always felt that you deserved. ...or maybe you'll just use the time that you saved to start flossing more often.

To learn more, visit http://ohmyz.sh and/or follow [ohmyzsh](https://twitter.com/ohmyzsh) on twitter.

## Getting Started

### Prerequisites

__Disclaimer:__ _Oh My Zsh works best on Mac OS X and Linux._

* Unix-based operating system (Mac OS X or Linux)
* [Zsh](http://www.zsh.org) should be installed (v4.3.9 or more recent). If not a simple `brew install zsh` should do the job
* `curl` or `wget` should be installed
* `git` should be installed

### Basic Installation

#### 1. Clone the repository:

`git clone https://github.com/ladislas/oh-my-zsh ~/.oh-my-zsh`

#### 2. *Optionally*, backup your existing `~/.zshrc` file:

`cp ~/.zshrc ~/.zshrc.orig`

#### 3. Symlink the configuration file

I've customized a great `.zshrc` file that should get you up and running!

`ln -s ~/.oh-my-zsh/templates/zshrcDot.zsh-template ~/.zshrc`

You can also create a new zsh config file by copying the template that we included for you.

`cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc`

#### 4. Change your default shell

`chsh -s /bin/zsh` or `chsh -s $(which zsh)` if using `brew`. Note that you should edit `/etc/shells` on OS X Yosemite.

## LICENSE

Oh My Zsh is released under the [MIT license](https://github.com/robbyrussell/oh-my-zsh/blob/master/MIT-LICENSE.txt).
