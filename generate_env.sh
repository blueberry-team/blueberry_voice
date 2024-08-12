#!/bin/bash

# .env 파일 생성
echo "# API 키를 추가해주세요." >> .env
echo "API_KEY=your_api_key_here" >> .env
echo "# Other environment variables can be added here" >> .env

# 파일 생성 후 권한 변경 (선택 사항)
chmod 600 .env