############################
#      bash aliases        #
############################
alias ll='ls -l --color=auto'
alias la='ls -al --color=auto'
alias cls='clear' #清屏

alias cp='cp -v'
alias mv='mv -v'
alias cpr='cp -r'

alias ..='cd ..'
alias cdd='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'
#alias home='cd ~'

############################
#    homebrew aliases      #
############################
alias bi='brew install'
alias bs='brew search'
alias bu='brew update'
alias bug='brew upgrade'


############################
#      git aliases         #
############################
alias ga='git add'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -D'
alias gc='git commit -m'
alias gcl='git clone'
alias gco='git checkout'
alias gd='git diff'
alias gdi='git di'
alias gl='git log'
alias glg='git lg'
alias grv='git remote -v'
alias gs='git status'
alias gss='git status -s'
alias gull='git pull origin'
alias gush='git push origin'


############################
#      tool                #
############################
alias myip='curl ifconfig.me' # ip
alias tq='curl wttr.in/quanzhou' # 天气

#创建目录并进入
mcd (){
	mkdir -pv "$@"
	cd "$@"
}
# 修改rm  形成回收站
alias rm=trash
alias r=trash
alias rl='ls ~/.trash/'
trash (){
    if [ ! -d ~/.trash ]
    then
        mkdir ~/.trash/
        fi
    mv $@ ~/.trash/
}

# 完全删除
alias rrm='/bin/rm' # macos

# 清空回收站
alias clt=cleartrash
cleartrash (){
    read -p "clear trash???" confirm
    [ $confirm == 'y' ] || [ $confirm == 'Y' ] && /bin/rm -rf ~/.trash/*
}
# 恢复文件
undelfile (){
    mv -i ~/.trash/$@ ./
}
# 作用：查看pid
# 用法：pss ps 
alias pss=psss 
psss(){
    ps -ax|grep $1 |grep -v grep|awk '{printf $1"\t"$5"\n"}'
}


# 作用：删除当前目录下所有（包括子目录）由finder生成的.DS_Store隐藏目录
alias rmdss=removeDSStore
removeDSStore(){
    find ./ -name ".DS_Store" -depth -exec /bin/rm \;
}