#!/bin/bash

# .env 파일 생성 경로
TARGET_DIR=$1

# .env 파일 생성
echo "# API 키를 추가해주세요." > "$TARGET_DIR/.env"
echo "API_KEY=your_api_key_here" >> "$TARGET_DIR/.env"
echo "# Other environment variables can be added here" >> "$TARGET_DIR/.env"
