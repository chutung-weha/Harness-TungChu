#!/bin/bash
# validate-bash.sh
# Hook: Kiểm tra và chặn các lệnh bash nguy hiểm trước khi thực thi

set -e

# Lấy lệnh cần kiểm tra từ stdin hoặc argument
COMMAND="${1:-}"

# Danh sách lệnh nguy hiểm cần chặn
DANGEROUS_PATTERNS=(
    "rm -rf /"
    "rm -rf ~"
    "rm -rf \*"
    "> /dev/sda"
    "dd if=/dev/zero"
    "mkfs"
    ":(){:|:&};:"
    "git push --force"
    "git push -f"
    "DROP TABLE"
    "TRUNCATE TABLE"
    "DELETE FROM"
)

echo "[VALIDATE-BASH] Kiểm tra lệnh: $COMMAND"

# Kiểm tra từng pattern nguy hiểm
for PATTERN in "${DANGEROUS_PATTERNS[@]}"; do
    if echo "$COMMAND" | grep -qi "$PATTERN"; then
        echo "[VALIDATE-BASH] ⛔ CHẶN: Phát hiện lệnh nguy hiểm: '$PATTERN'"
        echo "[VALIDATE-BASH] Lệnh cần được xem xét thủ công bởi con người trước khi thực thi."
        exit 1
    fi
done

echo "[VALIDATE-BASH] ✅ Lệnh đã qua kiểm tra cơ bản."
exit 0
