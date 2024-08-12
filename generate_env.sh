#!/bin/bash

# .env 파일 생성 경로
TARGET_DIR=$1

# .env 파일 생성
echo "# please replace 'your_api_key_here' with your actual API key" > "$TARGET_DIR/.env"
echo "GOOGLE_API_KEY=your_api_key_here" >> "$TARGET_DIR/.env"
echo "GPT_API_KEY=your_api_key_here" >> "$TARGET_DIR/.env"
echo "# Other environment variables can be added here" >> "$TARGET_DIR/.env"
