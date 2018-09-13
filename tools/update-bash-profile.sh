#!/bin/bash


___this_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
__root_dir="$(dirname $___this_dir)"

. $__root_dir/base.sh

bash_profile="$HOME/.bash_profile"
sample_file_name="$__root_dir/sample/bash-history-config"
tag_str="tag_bash_history"

exe_cmd "copy_from_sample $bash_profile $sample_file_name $tag_str"
