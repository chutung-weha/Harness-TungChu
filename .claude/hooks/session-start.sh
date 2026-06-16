#!/bin/bash
# session-start.sh
# Hook: Chạy khi bắt đầu phiên làm việc mới
# Mục đích: In checklist khởi động để đảm bảo Claude bắt đầu đúng cách

set -e

TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

echo ""
echo "╔══════════════════════════════════════════╗"
echo "║        VIBE CODE SESSION START           ║"
echo "╚══════════════════════════════════════════╝"
echo "  Thời gian: $TIMESTAMP"
echo ""
echo "📋 CHECKLIST ĐẦU PHIÊN — Hãy thực hiện trước khi code:"
echo ""
echo "  [ ] 1. Đọc CLAUDE.md để hiểu context project"
echo "  [ ] 2. Đọc rules trong .claude/rules/ liên quan tới task"
echo "  [ ] 3. Xác định rõ task cần làm hôm nay"
echo "  [ ] 4. Xác định phạm vi (làm gì / không làm gì)"
echo "  [ ] 5. Hỏi lại nếu yêu cầu chưa rõ"
echo ""
echo "⚠️  NGUYÊN TẮC:"
echo "  - Không code khi chưa hiểu đầu bài"
echo "  - Không sửa ngoài phạm vi task"
echo "  - Gọi human review khi gặp điểm rủi ro cao"
echo ""
echo "══════════════════════════════════════════════"
echo ""

exit 0
