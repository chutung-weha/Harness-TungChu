# User Flow — Luồng người dùng

<!-- Cập nhật khi có thêm flow mới hoặc flow cũ thay đổi -->

## Cách đọc tài liệu này

Mỗi flow được mô tả theo format:
- **Actor**: Ai thực hiện
- **Input**: Điều kiện đầu vào
- **Steps**: Các bước hành động
- **Expected Output**: Kết quả mong đợi
- **Exception**: Các trường hợp lỗi/exception

---

## Flow 1: [Tên flow — VD: Đăng ký tài khoản]

**Actor**: Khách chưa đăng nhập

**Input**: Truy cập trang đăng ký

**Steps**:
1. Người dùng truy cập `/register`
2. Điền email, password, xác nhận password
3. Bấm "Đăng ký"
4. Hệ thống gửi email xác nhận
5. Người dùng click link xác nhận
6. Tài khoản được kích hoạt

**Expected Output**: Tài khoản đã kích hoạt, redirect về trang chủ

**Exception**:
- Email đã tồn tại → Thông báo lỗi rõ ràng
- Password không khớp → Thông báo lỗi
- Email không hợp lệ → Validate trước khi submit

---

## Flow 2: [Tên flow]

**Actor**: [ĐIỀN]

**Input**: [ĐIỀN]

**Steps**:
1. [ĐIỀN]

**Expected Output**: [ĐIỀN]

**Exception**:
- [ĐIỀN]
