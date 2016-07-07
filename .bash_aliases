alias u="~/Scripts/update"
alias u+="~/Scripts/upgrade"
alias uu="u && u+"
alias weather="telnet rainmaker.wunderground.com"
alias c="clear"
alias vi=vim
alias install="sudo apt-get install"
alias wanip="dig +short myip.opendns.com @resolver1.opendns.com"
alias cmatrix="cmatrix -absC cyan"
alias uname="uname -snrvmo"
alias ls="ls --color=auto"
alias ll="ls --color -al"
alias grep="grep --color=auto"
alias histg="history | grep"
alias meminfo="free -m -l -t"
alias psa="ps aux | grep"
alias cputemp='sensors | grep Core'

myinfo () {
  printf "CPU: "
  cat /proc/cpuinfo | grep "model name" | head -1 | awk '{ for (i = 4; i <= NF; i++) printf "%s ", $i }'
  printf "\n"

  cat /etc/issue | awk '{ printf "OS: %s %s %s %s | " , $1 , $2 , $3 , $4 }'
  uname -a | awk '{ printf "Kernel: %s " , $3 }'
  uname -m | awk '{ printf "%s | " , $1 }'
 # kded4 --version | grep "KDE Development Platform" | awk '{ printf "KDE: %s", $4 }'
  printf "\n"
  uptime | awk '{ printf "Uptime: %s %s %s", $3, $4, $5 }' | sed 's/,//g'
  printf "\n"
  cputemp | head -1 | awk '{ printf "%s %s %s\n", $1, $2, $3 }'
  cputemp | tail -1 | awk '{ printf "%s %s %s\n", $1, $2, $3 }'
  #cputemp | awk '{ printf "%s %s", $1 $2 }'
}

    alias gmail='curl -u GMAILID --silent "https://mail.google.com/mail/feed/atom" | awk '"'"'BEGIN{FS="\n";RS="(</entry>\n)?<entry>"}NR!=1{print "\033[1;31m"$9"\033[0;32m ("$10")\033[0m:\t\033[1;33m"$2"\033[0m"}'"'"' | sed -e '"'"'s,<[^>]*>,,g'"'"' | column -t -s $'"'"'\t'"'"''


