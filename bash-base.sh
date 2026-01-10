#!/bin/bash

# Dry-run mode flag (can be set by environment variable or command line)
# Default to 1 (dry-run enabled) for safety - use --do flag to actually execute
DRY_RUN=${DRY_RUN:-1}

function run_cmd() {
    local t=`date`
    if [ "$DRY_RUN" -eq 1 ]; then
        echo "$t: [DRY-RUN] Would execute: $1"
    else
        echo "$t: [EXEC] $1"
        eval $1
    fi
}

function run_cmd_silent() {
    if [ "$DRY_RUN" -eq 1 ]; then
        echo "[DRY-RUN] Would execute: $1"
    else
        eval $1 > /dev/null 2>&1
    fi
}

function ensure_dir() {
    if [ ! -d $1 ]; then
        run_cmd "mkdir -p $1"
    fi
}

function ensure_dir_for_file() {
    ensure_dir $(dirname $1)
}

function print_dry_run_banner() {
    if [ "$DRY_RUN" -eq 1 ]; then
        echo "========================================"
        echo "  DRY-RUN MODE - No changes will be made"
        echo "  Use --do to actually execute commands"
        echo "========================================"
        echo ""
    else
        echo "========================================"
        echo "  EXECUTION MODE - Changes will be made"
        echo "========================================"
        echo ""
    fi
}
