# Release Note Template

<!-- Copy và điền file này cho mỗi lần release -->

## Thông tin Release

| Mục | Thông tin |
|-----|-----------|
| Version | [v1.x.x] |
| Ngày release | [ĐIỀN] |
| Môi trường | [Staging / Production] |
| Người release | [ĐIỀN] |

---

## Tính năng mới (Feature Added)

- **[Tên feature]**: [Mô tả ngắn gọn cho người dùng]
- **[Tên feature]**: [Mô tả ngắn gọn cho người dùng]

---

## Bug đã sửa (Bug Fixed)

- **[BUG-ID]** [Mô tả bug đã sửa]
- **[BUG-ID]** [Mô tả bug đã sửa]

---

## Cải tiến (Improvements)

- [Mô tả cải tiến hiệu năng / UX / v.v.]

---

## Breaking Changes

> ⚠️ Nếu không có breaking change, xóa mục này.

- **[Tên thay đổi]**: [Mô tả] — [Cách migrate]

---

## Migration Guide

> Hướng dẫn cho team khi cần thay đổi cấu hình hoặc database.

```bash
# Lệnh migration cần chạy (nếu có)
ĐIỀN LỆNH Ở ĐÂY
```

---

## Rollback Note

Nếu cần rollback về version trước:

1. Version rollback: [vX.X.X]
2. Lệnh: [ĐIỀN]
3. Lưu ý khi rollback: [ĐIỀN]

---

## Kiểm tra sau release

- [ ] Flow đăng nhập hoạt động bình thường
- [ ] Tính năng mới đã verify
- [ ] Không có lỗi 5xx trong log
- [ ] Notify cho stakeholder
