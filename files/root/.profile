#BEGIN GOOGLE SHELL PROMPT CUSTOMIZATION
function google_prompt
{
 myUid=`id -u`
local WHITE="\[\033[01;37m\]"
local BLUE="\[\033[01;34m\]"
local RED="\[\033[01;31m\]"
local YELLOW="\[\033[01;33m\]"
local GREEN="\[\033[01;32m\]"
local BLACK="\[\033[01;30m\]"
local DEFAULT="\[\033[00;00m\]"
hostname=`hostname | cut -d . -f 1`
PS1="[${BLUE}G${RED}o${YELLOW}o${BLUE}g${GREEN}l${RED}e${DEFAULT} \h:${BLUE}\w${DEFAULT}]# "
}
[ "$TERM" = "xterm" ] && TERM="xterm-color"
alias ls='ls --color'
google_prompt
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin
