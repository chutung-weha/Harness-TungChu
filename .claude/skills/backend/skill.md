# Skill: Backend Development

## Mục tiêu

Xây dựng API, service, và xử lý dữ liệu đúng chuẩn — an toàn, có validation, có error handling, có phân quyền.

## Khi nào được gọi

- Khi implement API endpoint mới
- Khi xây dựng service layer
- Khi làm việc với database
- Khi cần xử lý validation, error, permission

## Input cần có

- API spec hoặc mô tả endpoint
- Schema database liên quan
- Quy tắc phân quyền (ai được làm gì)
- Business rule từ BA

## Quy trình xử lý

1. Xác định route, method, request/response theo `api-conventions.md`
2. Implement theo layer:
   - **Controller**: nhận request, gọi service, trả response
   - **Service**: business logic
   - **Repository**: truy vấn database
3. Validate input trước khi xử lý (không tin tưởng client)
4. Kiểm tra phân quyền (ai được gọi API này)
5. Xử lý error đầy đủ:
   - Validation error: 422
   - Auth error: 401/403
   - Not found: 404
   - Server error: 500 với log chi tiết nhưng không expose ra client
6. Viết unit test cho service layer

## Output bắt buộc

- API endpoint hoàn chỉnh
- Validation đầy đủ
- Error handling đúng chuẩn
- Unit test cho service

## DOD

- [ ] Route, method đúng convention
- [ ] Validation đầy đủ, lỗi rõ ràng
- [ ] Phân quyền đúng
- [ ] Error handling không expose internal info
- [ ] Có unit test
- [ ] Không có N+1 query nếu có thể

## Lưu ý human-in-the-loop

**Dừng lại và hỏi con người** khi:
- Quy tắc phân quyền chưa rõ
- Business rule phức tạp cần confirm với BA
- Thay đổi ảnh hưởng tới database schema production
