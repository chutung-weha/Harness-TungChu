# Definition of Done (DOD)

## Mục tiêu

Xác định rõ tiêu chí để một task được coi là "hoàn thành thật sự" — không chỉ là "code xong".

## Phạm vi áp dụng

Áp dụng cho mọi task, mọi thành viên, mọi loại công việc trong project.

## Quy định bắt buộc

### DOD chung cho mọi task

- [ ] Yêu cầu đã được xác nhận rõ ràng trước khi làm
- [ ] Phạm vi công việc đã được giới hạn rõ
- [ ] Không làm ngoài phạm vi đã chốt

### DOD cho Code

- [ ] Code chạy được, không có lỗi compile/runtime
- [ ] Không phá vỡ flow cũ đang hoạt động
- [ ] Không hardcode giá trị
- [ ] Không bỏ qua error handling
- [ ] Không có dead code không cần thiết
- [ ] Code đã được format

### DOD cho Test

- [ ] Có unit test cho logic mới (nếu có)
- [ ] Test đã pass toàn bộ
- [ ] Không có lỗi blocking trong E2E flow chính
- [ ] Có hướng dẫn test thủ công nếu chưa có automation

### DOD cho Tài liệu

- [ ] Comment code đủ cho chỗ phức tạp
- [ ] README/tài liệu được cập nhật nếu có thay đổi behavior
- [ ] API doc được cập nhật nếu thay đổi API

### DOD cho Bàn giao

- [ ] Đã cập nhật biên bản bàn giao chi tiết vào [handover.md](file://.claude/docs/handover.md)
- [ ] Có summary thay đổi rõ ràng
- [ ] Có danh sách file đã thay đổi
- [ ] Có kết quả test (screenshot/log nếu cần)
- [ ] Có rủi ro còn lại nếu có
- [ ] Người nhận hiểu được đã làm gì và cách kiểm tra

## Checklist trước khi hoàn thành

- [ ] Đã đọc lại toàn bộ DOD ở trên
- [ ] Đã tự review code một lần
- [ ] Sẵn sàng cho người khác review
