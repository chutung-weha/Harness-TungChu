#!/bin/bash
# pre-tool-use.sh
# Hook: Chạy TRƯỚC khi agent sử dụng tool
# Mục đích: Log action và nhắc kiểm tra scope

set -e

TOOL_NAME="${1:-unknown}"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

echo ""
echo "=========================================="
echo "[PRE-TOOL-USE] [$TIMESTAMP]"
echo "[PRE-TOOL-USE] Tool chuẩn bị dùng: $TOOL_NAME"
echo "=========================================="

# Nhắc nhở về scope
echo "[PRE-TOOL-USE] ⚠️  Nhắc nhở:"
echo "  - Chỉ thực hiện trong phạm vi task đã chốt"
echo "  - Không sửa file ngoài scope"
echo "  - Nếu cần mở rộng scope, hỏi lại con người trước"
echo ""

exit 0
