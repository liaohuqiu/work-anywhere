#!/bin/bash

. ../base.sh

current_dir=`pwd`
root_dir=$(dirname $current_dir)
bash_profile="$HOME/.bash_profile"
sample_file_name="$root_dir/sample/bash-history-config"
tag_str="tag_bash_history"

exe_cmd "copy_from_sample $bash_profile $sample_file_name $tag_str"
