#!/bin/bash

PROJECT_DIR=$(realpath .)
TARGET_DIR="$HOME/.vim/plugin/zim2line"

mkdir -p "$TARGET_DIR"

ln -sf "$PROJECT_DIR/zim2line.vim"  "$TARGET_DIR/"
ln -sf "$PROJECT_DIR/html2toc"  "$TARGET_DIR/"

tree "$TARGET_DIR"
