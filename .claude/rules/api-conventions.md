# Quy ước API (API Conventions)

## Mục tiêu

Đảm bảo API nhất quán, dễ dùng, dễ debug cho cả frontend và bên thứ ba.

## Phạm vi áp dụng

Áp dụng cho toàn bộ REST API của project.

## Quy định bắt buộc

### Route
- Dùng danh từ số nhiều: `/users`, `/orders`, `/products`
- Không dùng động từ trong route: ~~`/getUser`~~, ~~`/createOrder`~~
- Phân cấp tài nguyên: `/users/:id/orders`
- Dùng lowercase, kebab-case: `/user-profiles`

### HTTP Method
- GET: Lấy dữ liệu (không thay đổi state)
- POST: Tạo mới
- PUT: Cập nhật toàn bộ
- PATCH: Cập nhật một phần
- DELETE: Xóa

### Request/Response
- Content-Type: `application/json`
- Response luôn trả về JSON
- Response thành công: `{ data: ..., message: "..." }`
- Response lỗi: `{ error: { code: "...", message: "..." } }`

### HTTP Status Code
- 200: Thành công (GET, PUT, PATCH)
- 201: Tạo mới thành công (POST)
- 204: Thành công không có body (DELETE)
- 400: Lỗi request sai
- 401: Chưa đăng nhập
- 403: Không có quyền
- 404: Không tìm thấy
- 422: Validation error
- 500: Lỗi server

### Auth
- Dùng Bearer Token trong header: `Authorization: Bearer <token>`
- Không truyền token qua query param
- Refresh token theo cơ chế đã thống nhất

### Pagination
- Dùng `?page=1&limit=20` hoặc cursor-based theo quy định dự án
- Response phải có: `{ data: [...], total: N, page: N, limit: N }`

### Validation
- Validate ở server trước khi xử lý
- Trả về rõ field nào sai: `{ error: { field: "email", message: "Email không hợp lệ" } }`

## Checklist trước khi hoàn thành

- [ ] Route đúng naming convention
- [ ] HTTP method đúng
- [ ] Response format nhất quán
- [ ] Status code đúng
- [ ] Có validation và trả về lỗi rõ ràng
- [ ] Có auth check cho route cần thiết
