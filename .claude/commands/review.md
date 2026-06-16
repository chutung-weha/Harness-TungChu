# Command: review

## Khi nào dùng

Khi cần review code trước khi merge PR hoặc trước khi release.

## Input cần có

- Code cần review (file hoặc PR diff)
- Context thay đổi (đang fix gì, thêm gì)
- Acceptance criteria hoặc yêu cầu gốc

## Các bước Claude phải làm

1. **Review code quality**
   - Kiểm tra logic đúng yêu cầu không
   - Kiểm tra code dễ đọc, đúng convention không
   - Kiểm tra có dead code, debug code không
   - Kiểm tra error handling đầy đủ không

2. **Review architecture**
   - Kiểm tra không vi phạm `rules/architecture.md`
   - Kiểm tra không tạo dependency vòng
   - Kiểm tra layer đúng không

3. **Review security**
   - Kiểm tra theo `rules/security.md`
   - Tìm lỗ hổng xác thực, phân quyền
   - Kiểm tra có expose thông tin nhạy cảm không

4. **Review test**
   - Kiểm tra có test đủ không
   - Test có cover edge case không
   - Kết quả test có pass không

5. **Review ảnh hưởng tới flow người dùng**
   - Xác định flow nào bị ảnh hưởng
   - Kiểm tra backward compatibility
   - Kiểm tra có breaking change không

## Output bắt buộc

- Danh sách vấn đề tìm thấy (phân loại: Critical / Major / Minor)
- Đề xuất sửa cụ thể cho từng vấn đề
- Kết luận: Approve / Cần sửa trước merge

## DOD

- [ ] Đã review đủ 5 khía cạnh trên
- [ ] Đã ghi rõ từng vấn đề và mức độ ưu tiên
- [ ] Kết luận rõ ràng
