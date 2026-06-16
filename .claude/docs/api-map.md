# API Map — Danh sách API

<!-- Cập nhật khi thêm/sửa/xóa API endpoint -->

## Convention

Xem chi tiết tại `.claude/rules/api-conventions.md`

- Base URL: `https://[ĐIỀN-DOMAIN]/api/v1`
- Auth: Bearer Token trong header `Authorization`
- Format: JSON

---

## Authentication

| Method | Endpoint | Mô tả | Auth |
|--------|----------|-------|------|
| POST | `/auth/login` | Đăng nhập | Không |
| POST | `/auth/logout` | Đăng xuất | Có |
| POST | `/auth/refresh` | Refresh token | Có |
| POST | `/auth/register` | Đăng ký tài khoản | Không |

---

## Users

| Method | Endpoint | Mô tả | Auth | Quyền |
|--------|----------|-------|------|-------|
| GET | `/users` | Danh sách user | Có | Admin |
| GET | `/users/:id` | Chi tiết user | Có | Admin / Chính chủ |
| PUT | `/users/:id` | Cập nhật user | Có | Chính chủ |
| DELETE | `/users/:id` | Xóa user | Có | Admin |

---

## [Module khác — thêm vào đây]

| Method | Endpoint | Mô tả | Auth | Quyền |
|--------|----------|-------|------|-------|
| [ĐIỀN] | [ĐIỀN] | [ĐIỀN] | [ĐIỀN] | [ĐIỀN] |

---

## Error Response Format

```json
{
  "error": {
    "code": "VALIDATION_ERROR",
    "message": "Dữ liệu không hợp lệ",
    "details": [
      {
        "field": "email",
        "message": "Email không đúng định dạng"
      }
    ]
  }
}
```
