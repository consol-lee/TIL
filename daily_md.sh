#!/bin/bash

# 현재 날짜에서 월만 추출해서 YYYY-MM 형식으로 저장합니다.
this_month=$(date +%Y-%m)

# 현재 월에 해당하는 디렉토리 경로를 생성합니다.
folder_path="$this_month"
if [ ! -d "$folder_path" ]; then
    mkdir -p "$folder_path"
fi

# 현재 날짜를 YYYY-MM-DD 형식으로 저장합니다.
today=$(date +%F)

# Markdown 파일 경로를 생성합니다.
file_path="$folder_path/$today.md"

# 파일이 존재하지 않으면 새 파일을 만듭니다.
if [ ! -f "$file_path" ]; then
    echo "# $today" > "$file_path"
fi


yesterday=$(date -d '1 days ago'  "+%Y-%m-%d")
commit_message="TIL 날짜: ${yesterday}"

# add, commit, push 실행
git add .
git commit -m "${commit_message}"
git push

