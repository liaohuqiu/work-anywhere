#!/bin/bash

my_dir="$(dirname "$0")"
my_dir="$(dirname "$my_dir")"

. $my_dir/base.sh

template_dir=$HOME/.git-templates
tempalte_hooks_dir=$template_dir/hooks
exe_cmd "mkdir -p $template_dir"
exe_cmd "cp -rf $my_dir/sample/git-template/hooks $template_dir/"
exe_cmd "chmod -R a+x $tempalte_hooks_dir"

exe_cmd "git config --global init.templatedir $template_dir"
exe_cmd "git config --global core.fileMode false"
git config --global alias.st 'status'
git config --global alias.ci 'commit'
git config --global alias.sb 'submodule'
git config --global alias.co 'checkout'
git config --global alias.pm 'push origin master'
git config --global alias.pd 'push origin dev'
git config --global alias.lg "log --all --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ci) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.d difftool

git config --global alias.sm 'git branch --set-upstream-to=origin/master master'

git config --global diff.tool vimdiff
git config --global difftool.prompt false
