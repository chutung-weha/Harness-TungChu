# Skill: BA Flow Analysis (Phân tích nghiệp vụ)

## Mục tiêu

Giúp phân tích yêu cầu từ BA/PO, tách rõ user flow, xác định acceptance criteria và tìm các trường hợp còn thiếu.

## Khi nào được gọi

- Khi nhận yêu cầu mới cần phân tích nghiệp vụ
- Khi cần verify lại flow trước khi implement
- Khi nghi ngờ yêu cầu chưa đầy đủ

## Input cần có

- Mô tả yêu cầu / user story
- Acceptance criteria (nếu có)
- Figma/mockup (nếu có)
- Context hệ thống hiện tại

## Quy trình xử lý

1. Đọc kỹ yêu cầu
2. Tách thành các user flow riêng biệt
3. Với mỗi flow, xác định:
   - Actor (ai thực hiện)
   - Điểm bắt đầu
   - Các bước hành động
   - Điều kiện rẽ nhánh
   - Kết quả mong đợi
   - Exception (lỗi, edge case)
4. Tìm missing case: trường hợp nào chưa được đề cập?
5. Tổng hợp câu hỏi cần hỏi lại BA/PO

## Output bắt buộc

- Danh sách user flow (mỗi flow có: actor, steps, expected result, exception)
- Danh sách acceptance criteria đã tách được
- Danh sách missing case cần confirm
- Danh sách câu hỏi cần hỏi lại

## DOD

- [ ] Đã tách đủ các user flow
- [ ] Đã xác định exception cho mỗi flow
- [ ] Đã liệt kê missing case
- [ ] Câu hỏi cần confirm đã được gửi lên BA/PO

## Lưu ý human-in-the-loop

**Dừng lại và hỏi con người** khi:
- Yêu cầu mơ hồ hoặc mâu thuẫn
- Tìm thấy missing case quan trọng ảnh hưởng tới architecture
- Cần quyết định business logic không rõ
