# Bảo mật (Security)

## Mục tiêu

Bảo vệ hệ thống, người dùng và dữ liệu khỏi các lỗ hổng bảo mật phổ biến.

## Phạm vi áp dụng

Áp dụng cho toàn bộ code: backend, frontend, script, CI/CD.

## Quy định bắt buộc

### Secret và Token
- Không log secret, token, password ra console/file log
- Không commit API key, token, password vào git
- Luôn dùng biến môi trường (`.env`) cho thông tin nhạy cảm
- Không hardcode credential trong code

### Authentication & Authorization
- Không bypass auth dù để test hay debug
- Luôn kiểm tra quyền trước khi thực hiện action
- Không để route nhạy cảm không có auth guard
- Token phải có thời hạn sử dụng (expiry)

### Input Validation
- Luôn validate input từ người dùng trước khi xử lý
- Không tin tưởng bất kỳ input nào từ client
- Escape output khi render HTML để tránh XSS
- Dùng parameterized query, không nối string SQL thô

### Code an toàn
- Không dùng `eval()` hay `Function()` với input từ người dùng
- Không expose thông tin stack trace ra client
- Không để lộ cấu trúc internal trong error message

### Thông tin người dùng
- Không để lộ thông tin cá nhân (email, phone, địa chỉ) trong log
- Không trả về password hoặc hashed password trong API response
- Mask thông tin nhạy cảm khi hiển thị (VD: `****1234`)

## Checklist trước khi hoàn thành

- [ ] Không có secret nào trong code hoặc log
- [ ] Tất cả route cần auth đã có guard
- [ ] Input đã được validate
- [ ] Không có SQL injection / XSS risk
- [ ] Không expose thông tin nhạy cảm
