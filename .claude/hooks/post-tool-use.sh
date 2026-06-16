#!/bin/bash
# post-tool-use.sh
# Hook: Chạy SAU khi agent sử dụng tool
# Mục đích: Log kết quả và nhắc kiểm tra output

set -e

TOOL_NAME="${1:-unknown}"
EXIT_CODE="${2:-0}"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

echo ""
echo "=========================================="
echo "[POST-TOOL-USE] [$TIMESTAMP]"
echo "[POST-TOOL-USE] Tool vừa dùng: $TOOL_NAME | Exit code: $EXIT_CODE"
echo "=========================================="

# Cảnh báo nếu tool fail
if [ "$EXIT_CODE" != "0" ]; then
    echo "[POST-TOOL-USE] ⚠️  Tool kết thúc với lỗi (exit code $EXIT_CODE)"
    echo "[POST-TOOL-USE] Hãy kiểm tra output và xem có cần can thiệp thủ công không."
else
    echo "[POST-TOOL-USE] ✅ Tool hoàn thành thành công."
fi

# Nhắc nhở kiểm tra output
echo ""
echo "[POST-TOOL-USE] Checklist:"
echo "  - Kết quả có đúng mong đợi không?"
echo "  - Có file nào bị thay đổi ngoài ý muốn không?"
echo "  - Cần test lại flow người dùng không?"
echo ""

exit 0
