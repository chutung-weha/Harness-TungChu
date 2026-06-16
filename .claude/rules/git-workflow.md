# Git Workflow

## Mục tiêu

Đảm bảo lịch sử commit rõ ràng, dễ trace, dễ rollback và quy trình PR nhất quán cho cả team.

## Phạm vi áp dụng

Áp dụng cho toàn bộ thành viên khi làm việc với repository.

## Quy định bắt buộc

### Branch Naming
- Feature: `feature/<tên-ngắn>` — VD: `feature/user-login`
- Bug fix: `fix/<mô-tả-bug>` — VD: `fix/login-redirect-error`
- Hotfix: `hotfix/<mô-tả>` — VD: `hotfix/payment-timeout`
- Release: `release/<version>` — VD: `release/1.2.0`
- Refactor: `refactor/<mô-tả>` — VD: `refactor/user-service`

### Commit Message
Dùng Conventional Commits:
```
<type>(<scope>): <mô tả ngắn>

[body - giải thích chi tiết nếu cần]
```

Type cho phép: `feat`, `fix`, `refactor`, `test`, `docs`, `chore`, `style`, `perf`

Ví dụ:
- `feat(auth): thêm chức năng đăng nhập qua Google`
- `fix(order): sửa lỗi tính tổng tiền khi giảm giá`
- `refactor(user-service): tách logic tìm kiếm ra helper`

### PR Checklist
- [ ] Branch đúng naming convention
- [ ] Commit message đúng format
- [ ] Đã self-review trước khi tạo PR
- [ ] Đã test trên local
- [ ] Đã update unit/integration test nếu có thay đổi logic
- [ ] Đã điền đầy đủ mô tả PR

### Review Checklist
- [ ] Code dễ đọc, đúng convention
- [ ] Logic đúng yêu cầu
- [ ] Không có lỗ hổng bảo mật rõ ràng
- [ ] Không có performance issue dễ thấy
- [ ] Test đủ cho scope thay đổi

## Checklist trước khi hoàn thành

- [ ] Branch đúng naming
- [ ] Commit message theo Conventional Commits
- [ ] PR có mô tả đầy đủ
- [ ] Đã review ít nhất 1 người khác
