#!/bin/bash -
#==============================================================================
#title           :git-install.sh
#description     :This script set up my git settings as I like
#author          :BENCSIK Janos
#date            :20140113
#version         :0.0
#usage           :bash git-install.sh
#==============================================================================
display_usage() {
	echo "Script sets up git settings as I (owner) like"
	echo -e "\nUsage:\n$0 projektname \n"
}
# if less than two arguments supplied, display usage
	if [  $# -eq 0 ]
	then
		display_usage
		exit 1
	fi

# check whether user had supplied -h or --help . If yes display usage
	if [[ ( $# == "--help") ||  $# == "-h" ]]
	then
                display_usage
		exit 0
	fi

git config --global user.name "BENCSIK Janos"
git config --global user.email "git@butyi.hu"
git config --global alias.up 'push origin master'
git config --global alias.down 'pull origin master'
git config --global alias.c 'commit -m'
git config --global alias.aa 'add --all'
git config --global alias.s 'status'
git config --global alias.lgd 'log --graph --decorate --oneline --all --simplify-by-decoration'
git config --global alias.lgt 'log --graph --decorate --oneline'
git config --global alias.lg 'log --graph --decorate --oneline --all'
git config --global color.ui auto
git remote add origin https://github.com/butyi/$1.git

