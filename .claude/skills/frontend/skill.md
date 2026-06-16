# Skill: Frontend Development

## Mục tiêu

Xây dựng giao diện người dùng đúng yêu cầu, có đủ trạng thái UI, responsive và dễ maintain.

## Khi nào được gọi

- Khi implement UI component mới
- Khi cần xử lý state management
- Khi cần xây dựng form, validation
- Khi cần xử lý loading/error/empty state

## Input cần có

- Mockup hoặc mô tả UI
- API endpoint liên quan
- State management pattern của project
- Breakpoint responsive cần support

## Quy trình xử lý

1. Phân tích Figma/mockup — xác định component cần tạo
2. Xác định state cần quản lý (local state vs global state)
3. Kết nối với API đúng chuẩn `api-conventions.md`
4. Implement các trạng thái UI:
   - **Loading state**: spinner, skeleton
   - **Error state**: thông báo lỗi rõ ràng, có cách retry
   - **Empty state**: hướng dẫn người dùng khi không có data
   - **Success state**: phản hồi rõ ràng sau action
5. Validate form theo rule
6. Kiểm tra responsive trên các breakpoint cần thiết

## Output bắt buộc

- Component hoàn chỉnh với đủ 4 trạng thái UI
- Form có validation và thông báo lỗi rõ ràng
- Code responsive
- Unit test cho logic component

## DOD

- [ ] Đủ 4 trạng thái: loading, error, empty, success
- [ ] Form validation hoạt động đúng
- [ ] Responsive trên các breakpoint yêu cầu
- [ ] Không hardcode text (dùng i18n nếu project có)
- [ ] Có unit test cho logic

## Lưu ý human-in-the-loop

**Dừng lại và hỏi con người** khi:
- Figma/mockup mơ hồ hoặc thiếu trạng thái UI
- Không chắc về state management approach
- Có thay đổi ảnh hưởng tới UX flow quan trọng
