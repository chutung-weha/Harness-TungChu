#!/bin/bash
# stop.sh
# Hook: Chạy khi agent kết thúc phiên làm việc
# Mục đích: In checklist cuối phiên để đảm bảo không bỏ sót gì

set -e

TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

echo ""
echo "╔══════════════════════════════════════════╗"
echo "║         VIBE CODE SESSION STOP           ║"
echo "╚══════════════════════════════════════════╝"
echo "  Thời gian kết thúc: $TIMESTAMP"
echo ""
echo "📋 CHECKLIST CUỐI PHIÊN — Kiểm tra trước khi dừng:"
echo ""
echo "  [ ] 1. Đã tóm tắt những gì đã làm chưa?"
echo "  [ ] 2. Đã chạy test chưa? Kết quả có pass không?"
echo "  [ ] 3. Đã ghi lại rủi ro còn tồn tại chưa?"
echo "  [ ] 4. Có việc gì cần con người review không?"
echo "  [ ] 5. Có cần thông báo cho team về thay đổi quan trọng không?"
echo ""
echo "⚠️  Nhắc nhở:"
echo "  - Đừng merge khi chưa có review"
echo "  - Đừng deploy khi chưa xong checklist release"
echo "  - Ghi lại next step nếu task chưa xong"
echo ""
echo "══════════════════════════════════════════════"
echo ""

exit 0
