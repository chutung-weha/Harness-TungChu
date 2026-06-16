# Skill: Security Audit

## Mục tiêu

Kiểm tra và xác định các rủi ro bảo mật trong code trước khi merge hoặc release.

## Khi nào được gọi

- Khi cần audit security trước release lớn
- Khi implement tính năng liên quan tới auth, payment, dữ liệu nhạy cảm
- Khi có nghi ngờ về lỗ hổng bảo mật

## Input cần có

- Code hoặc phạm vi cần audit
- Tài liệu về quy tắc phân quyền
- Danh sách endpoint và loại dữ liệu xử lý

## Quy trình xử lý

1. **Kiểm tra Authentication**
   - Tất cả route cần auth đã có guard chưa?
   - Token có được validate đúng cách không?
   - Token có expiry không?

2. **Kiểm tra Authorization (Phân quyền)**
   - Mỗi action có kiểm tra quyền của user không?
   - Có IDOR (Insecure Direct Object Reference) không? (user A xem được data của user B)
   - Role-based access control có đúng không?

3. **Kiểm tra Secret và Credential**
   - Có secret nào bị hardcode không?
   - Log có in ra thông tin nhạy cảm không?
   - `.env` có bị commit không?

4. **Kiểm tra Input Validation**
   - Input từ người dùng có được validate trước khi xử lý không?
   - Có nguy cơ SQL injection không?
   - Có nguy cơ XSS không?
   - Có nguy cơ command injection không?

5. **Kiểm tra Data Exposure**
   - API response có trả về thông tin dư thừa không?
   - Error message có expose internal info không?

## Output bắt buộc

- Danh sách vấn đề tìm thấy theo mức độ: Critical / High / Medium / Low
- Mô tả rủi ro của từng vấn đề
- Đề xuất fix cụ thể

## DOD

- [ ] Đã kiểm tra đủ 5 nhóm trên
- [ ] Không có vấn đề Critical hoặc High còn tồn tại
- [ ] Kết quả audit được ghi lại

## Lưu ý human-in-the-loop

**Dừng lại và báo ngay con người** khi:
- Tìm thấy lỗ hổng Critical ảnh hưởng tới dữ liệu người dùng
- Phát hiện secret có thể đã bị lộ
