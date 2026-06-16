# Plugin Marketplace

Danh sách plugin có thể tích hợp vào Vibe Code Harness.

## Plugin cốt lõi (có sẵn)

| Plugin | Mô tả | Trạng thái |
|--------|-------|-----------|
| ba-flow | Phân tích yêu cầu BA tự động | ✅ Có trong skills/ |
| code-reviewer | Review code tự động | ✅ Có trong agents/ |
| security-audit | Kiểm tra bảo mật | ✅ Có trong agents/ |

## Plugin có thể thêm

| Plugin | Mô tả | Cách cài |
|--------|-------|---------|
| slack-notify | Gửi thông báo Slack khi deploy | Thêm hook + webhook URL |
| jira-sync | Đồng bộ task với Jira | Thêm MCP server Jira |
| playwright-report | Tạo report E2E đẹp | Cài Playwright reporter |
| coverage-check | Check coverage threshold | Thêm vào CI/CD |

## Cách thêm plugin mới

1. Tạo thư mục `plugins/<tên>/`
2. Viết `plugin.md` theo format chuẩn
3. Thêm vào bảng trên
4. Cập nhật `.claude/settings.json` nếu cần thêm permission
