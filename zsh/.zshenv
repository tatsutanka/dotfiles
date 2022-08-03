#!/bin/sh
#
export PATH="/home/tanaka/.local/bin:$PATH"
#TASKRC
export TASKRC="$HOME/.config/task/.taskrc"
export TASKDATA="$HOME/.config/task/task"
#Git repo variables
export GIT_AUTHOR_NAME="Tanaka"
export GIT_AUTHOR_EMAIL="tanaka012@outlook.com"
#less history
export LESSHISTFILE="$HOME/.config/less"
#xinit
export XINITRC="$HOME/.config/X11/xinitrc"
export XSERVERRC="$HOME/.config/X11/xserverrc"
#dictionarie
export STARDICT_DATA_DIR="$HOME/.config/stardic"
#npm
export NPM_CONFIG_USERCONFIG="$HOME/.config/npm"
#cargo
export CARGO_HOME="$HOME/.config/cargo"
#java
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$HOME/.config/java"
#nv
export CUDA_CACHE_PATH="$HOME/.config/nv"
#pass
export PASSWORD_STORE_DIR="$HOME/.config/pass"

#Ruby
export GEM_HOME="$HOME/.config/gem"
export GEM_SPEC_CACHE="$HOME/.config/gem"

#Gnupg
export GNUPGHOME="$HOME/.config/gnupg"
#ZSH
export ZSH="$HOME/dotfiles/oh-my-zsh"
export ZDOTDIR="$HOME/dotfiles/zsh"

#environment variables for nvim
export PATH="/home/tanaka/.config/gem/ruby/2.7.0/bin:$PATH"
export GOPATH=$HOME/.config/go
export PATH=$PATH:$GOPATH/bin
export EDITOR=nvim
#LF environment variables (LF environment variable put by hand )
export LF_CONFIG_LOCATION="$HOME/dotfiles/lf/lfrc"

#environmental variables for tmux
#environment variables for ibus
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
#########################################
# icons for LF file menager
export LF_ICONS="\
di=:\
fi=:\
ln=:\
or=:\
ex=:\
*.c=:\
*.cc=:\
*.clj=:\
*.coffee=:\
*.cpp=:\
*.css=:\
*.d=:\
*.dart=:\
*.erl=:\
*.exs=:\
*.fs=:\
*.go=:\
*.h=:\
*.hh=:\
*.hpp=:\
*.hs=:\
*.html=:\
*.java=:\
*.jl=:\
*.js=:\
*.json=:\
*.lua=:\
*.md=:\
*.php=:\
*.pl=:\
*.pro=:\
*.py=:\
*.rb=:\
*.rs=:\
*.scala=:\
*.ts=:\
*.vim=:\
*.cmd=:\
*.ps1=:\
*.sh=:\
*.bash=:\
*.zsh=:\
*.fish=:\
*.tar=:\
*.tgz=:\
*.arc=:\
*.arj=:\
*.taz=:\
*.lha=:\
*.lz4=:\
*.lzh=:\
*.lzma=:\
*.tlz=:\
*.txz=:\
*.tzo=:\
*.t7z=:\
*.zip=:\
*.z=:\
*.dz=:\
*.gz=:\
*.lrz=:\
*.lz=:\
*.lzo=:\
*.xz=:\
*.zst=:\
*.tzst=:\
*.bz2=:\
*.bz=:\
*.tbz=:\
*.tbz2=:\
*.tz=:\
*.deb=:\
*.rpm=:\
*.jar=:\
*.war=:\
*.ear=:\
*.sar=:\
*.rar=:\
*.alz=:\
*.ace=:\
*.zoo=:\
*.cpio=:\
*.7z=:\
*.rz=:\
*.cab=:\
*.wim=:\
*.swm=:\
*.dwm=:\
*.esd=:\
*.jpg=:\
*.jpeg=:\
*.mjpg=:\
*.mjpeg=:\
*.gif=:\
*.bmp=:\
*.pbm=:\
*.pgm=:\
*.ppm=:\
*.tga=:\
*.xbm=:\
*.xpm=:\
*.tif=:\
*.tiff=:\
*.png=:\
*.svg=:\
*.svgz=:\
*.mng=:\
*.pcx=:\
*.mov=:\
*.mpg=:\
*.mpeg=:\
*.m2v=:\
*.mkv=:\
*.webm=:\
*.ogm=:\
*.mp4=:\
*.m4v=:\
*.mp4v=:\
*.vob=:\
*.qt=:\
*.nuv=:\
*.wmv=:\
*.asf=:\
*.rm=:\
*.rmvb=:\
*.flc=:\
*.avi=:\
*.fli=:\
*.flv=:\
*.gl=:\
*.dl=:\
*.xcf=:\
*.xwd=:\
*.yuv=:\
*.cgm=:\
*.emf=:\
*.ogv=:\
*.ogx=:\
*.aac=:\
*.au=:\
*.flac=:\
*.m4a=:\
*.mid=:\
*.midi=:\
*.mka=:\
*.mp3=:\
*.mpc=:\
*.ogg=:\
*.ra=:\
*.wav=:\
*.oga=:\
*.opus=:\
*.spx=:\
*.xspf=:\
*.pdf=:\
*.nix=:\
"
. "/home/tanaka/.config/cargo/env"
