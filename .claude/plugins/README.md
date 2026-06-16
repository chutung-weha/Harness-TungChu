# Plugins

## Tổng quan

Thư mục `plugins/` chứa các plugin mở rộng cho Vibe Code Harness.

Plugin cho phép team tích hợp thêm công cụ, workflow hoặc chia sẻ cấu hình giữa các project.

## Cách dùng Plugin

1. Tạo thư mục plugin trong `plugins/<tên-plugin>/`
2. Thêm file `plugin.md` mô tả chức năng
3. Thêm file config hoặc script cần thiết
4. Đăng ký plugin trong `marketplace.md`

## Cấu trúc một Plugin

```
plugins/
└── <tên-plugin>/
    ├── plugin.md          # Mô tả và hướng dẫn
    ├── config.json        # Cấu hình (nếu có)
    └── scripts/           # Script hỗ trợ (nếu có)
```

## Plugin có sẵn

Xem `marketplace.md` để biết danh sách plugin.
