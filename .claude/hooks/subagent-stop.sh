#!/bin/bash
# subagent-stop.sh
# Hook: Chạy khi sub-agent hoàn thành nhiệm vụ
# Mục đích: Kiểm tra output của sub-agent trước khi tiếp tục

set -e

AGENT_NAME="${1:-unknown}"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

echo ""
echo "╔══════════════════════════════════════════╗"
echo "║         SUB-AGENT COMPLETED              ║"
echo "╚══════════════════════════════════════════╝"
echo "  Agent: $AGENT_NAME"
echo "  Thời gian: $TIMESTAMP"
echo ""
echo "📋 CHECKLIST SAU SUB-AGENT:"
echo ""
echo "  [ ] 1. Output của agent có đủ và đúng format không?"
echo "  [ ] 2. Có rủi ro nào agent phát hiện cần xử lý không?"
echo "  [ ] 3. Có cần con người review kết quả trước khi tiếp tục không?"
echo "  [ ] 4. Có cần gọi thêm agent nào khác không?"
echo ""
echo "⚠️  Lưu ý:"
echo "  - Không tự ý tiếp tục nếu agent báo có vấn đề Critical"
echo "  - Báo cho con người nếu output không rõ ràng"
echo ""
echo "══════════════════════════════════════════════"
echo ""

exit 0
