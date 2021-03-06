# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# load bash flagment
if [ -d "${HOME}/.bash.d" ] ; then
    for f in "${HOME}"/.bash.d/*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

PATH=$PATH:$HOME/.local/bin:$HOME/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin
export PATH=~/.rbenv/bin:~/.rbenv/shims:$PATH
eval "$(rbenv init -)"

export PATH
export DB_NAME=avalonsphere
export DB_HOST=localhost
