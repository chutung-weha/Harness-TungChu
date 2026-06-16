# Code Style (Phong cách viết code)

## Mục tiêu

Đảm bảo code nhất quán, dễ đọc, dễ maintain cho cả người viết lẫn người review.

## Phạm vi áp dụng

Áp dụng cho toàn bộ code trong project (JS/TS, Python, hoặc ngôn ngữ chính của project).

## Quy định bắt buộc

### Đặt tên (Naming)
- Tên biến, hàm: camelCase (`getUserById`, `isLoading`)
- Tên class, type, interface: PascalCase (`UserService`, `ApiResponse`)
- Hằng số: UPPER_SNAKE_CASE (`MAX_RETRY`, `API_BASE_URL`)
- Tên file: kebab-case (`user-service.ts`, `auth-middleware.ts`)
- Không dùng tên mơ hồ: `data`, `info`, `temp`, `x`, `y`

### Format code
- Dùng formatter tự động (Prettier hoặc tương đương)
- Indent: 2 spaces (hoặc theo config dự án)
- Mỗi file không quá 300 dòng (nếu quá, chia nhỏ module)
- Không để code comment bị comment-out lâu dài

### Cách chia function
- Mỗi function chỉ làm một việc (Single Responsibility)
- Không viết function quá 30 dòng
- Nếu cần nhiều bước, tách thành helper function riêng

### Cách comment
- Comment giải thích "tại sao", không giải thích "cái gì"
- Không comment code đã bị xóa — dùng git thay vì comment
- Dùng JSDoc/docstring cho các public function quan trọng

### Chất lượng code
- Không viết code khó đọc chỉ để ngắn
- Không dùng magic number — đặt tên hằng số rõ ràng
- Không để console.log/print trong production code

## Checklist trước khi hoàn thành

- [ ] Tên biến/hàm/class đúng convention
- [ ] Code đã format tự động
- [ ] Không có magic number
- [ ] Không có console.log không cần thiết
- [ ] Function ngắn gọn, mỗi hàm một việc
