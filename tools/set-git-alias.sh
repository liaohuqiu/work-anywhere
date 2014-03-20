#!/bin/bash

. ../base.sh

templatedir=$HOME/.git/templates
hooks_dir=$templatedir/hooks
mkdir -p $hooks_dir

pre_commit_hook_file=$hooks_dir/pre-commit
cp -f $root_dir/sample/git-hooks-pre-commit $pre_commit_hook_file
chmod a+x $pre_commit_hook_file

git config --global init.templatedir $templatedir
git config --global alias.st 'status'
git config --global alias.ci 'commit'
git config --global alias.sb 'submodule'
git config --global alias.co 'checkout'
git config --global alias.lg "log --all --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ci) %C(bold blue)<%an>%Creset' --abbrev-commit"
