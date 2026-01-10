#!/bin/bash

source ./bash-base.sh

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --do)
            DRY_RUN=0
            export DRY_RUN
            shift
            ;;
        --help|-h)
            echo "Usage: $0 [OPTIONS]"
            echo ""
            echo "Options:"
            echo "  --do             Actually execute commands (default is dry-run mode)"
            echo "  --help, -h       Show this help message"
            echo ""
            echo "Note: By default, the script runs in dry-run mode and only shows what"
            echo "      would be done. Use --do to actually make changes."
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            echo "Use --help for usage information"
            exit 1
            ;;
    esac
done

print_dry_run_banner

roles_dir="./roles/one/files"

function import_karabiner() {
    run_cmd "cp -rf $roles_dir/karabiner.json ~/.config/karabiner"
}

function setup_xcode() {
    run_cmd "xcode-select --install"
}

function setup_bash() {
    run_cmd "chsh -s /bin/bash"
    run_cmd "cp -rf $roles_dir/.bash_profile ~/.bash_profile"
    run_cmd "cp -rf $roles_dir/.bash_profile_simple ~/.bash_profile_simple"
}

function setup_vim_anywhere() {
    local git_dir="~/git/liaohuqiu/vim_anywhere"
    run_cmd "mkdir -p $git_dir"
    run_cmd "git clone https://gitee.com/liaohuqiu/vim_anywhere.git $git_dir"
    run_cmd "cd $git_dir"
    run_cmd "bash fast-setup.sh"
}

function install_homebrew() {
    export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
    run_cmd "git clone --depth=1 https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/install.git brew-install"
    run_cmd "/bin/bash brew-install/install.sh"
    run_cmd "rm -rf brew-install"
}