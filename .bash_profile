. .profile

if [ -f .profile_local ];then
    . .profile_local
fi

PS1='\[\e[1;38;5;23m\]\D{%H:%M} \[\033[01;32m\]\u@\h:\[\033[01;34m\]\w\[\033[00m\]\$ '
