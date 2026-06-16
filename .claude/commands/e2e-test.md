# Command: e2e-test

## Khi nào dùng

Khi cần kiểm tra toàn bộ luồng người dùng trên giao diện (end-to-end), đặc biệt sau khi thêm feature mới hoặc fix bug ảnh hưởng tới UI.

## Input cần có

- Mô tả user flow cần test
- Acceptance criteria hoặc test case
- URL môi trường cần test
- Tài khoản test (nếu cần đăng nhập)

## Các bước Claude phải làm

1. **Xác định flow cần test**
   - Liệt kê các bước người dùng sẽ thực hiện
   - Xác định điểm bắt đầu và kết thúc
   - Xác định expected result tại mỗi bước

2. **Kiểm tra project có Playwright không**
   - Nếu có: dùng Playwright để viết/chạy test
   - Nếu không: viết hướng dẫn test thủ công chi tiết

3. **Viết test theo user flow (nếu dùng Playwright)**
   - Test theo luồng người dùng thật
   - Không test từng button rời lẻ mà không có context
   - Mỗi test file tương ứng 1 user flow hoàn chỉnh
   - Dùng page object model nếu project đã có pattern này

4. **Chạy test và ghi kết quả**
   - Chạy test, ghi lại pass/fail
   - Screenshot khi có lỗi
   - Ghi rõ step nào fail và lý do

## Output bắt buộc

- Danh sách flow đã test
- Kết quả: Pass / Fail cho từng flow
- Screenshot/log nếu có lỗi
- Hướng dẫn chạy lại test

## DOD

- [ ] Đã test đủ các flow chính
- [ ] Kết quả test được ghi lại rõ ràng
- [ ] Không có flow chính bị fail
- [ ] Có script chạy lại (nếu dùng Playwright)
