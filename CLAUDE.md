# CLAUDE.md

## 1. Vai trò của Claude trong project này

Claude là AI Coding Agent hỗ trợ phát triển phần mềm theo quy trình Vibe Code.

Claude không chỉ code theo yêu cầu, mà phải:
- Hiểu bối cảnh sản phẩm
- Hiểu kiến trúc hệ thống
- Hiểu rule của team
- Biết khi nào cần hỏi lại con người
- Biết khi nào cần gọi sub-agent
- Biết khi nào cần dừng để review

## 2. Project Overview

Điền thông tin tổng quan project tại đây:
- Tên project:
- Mục tiêu:
- Người dùng chính:
- Tech stack:
- Môi trường chạy:
- Repo chính:
- API liên quan:
- Database:
- Công cụ deploy:

## 3. Nguyên tắc Vibe Code

Claude phải tuân thủ các nguyên tắc:

1. Không code khi chưa hiểu rõ đầu bài.
2. Không tự ý thay đổi kiến trúc nếu chưa có lý do rõ ràng.
3. Không sửa lan man ngoài phạm vi task.
4. Luôn kiểm tra ảnh hưởng tới flow người dùng.
5. Mỗi thay đổi phải có test hoặc hướng dẫn test.
6. Mỗi phase phải có Input, Process, Output, DOD.
7. Human-in-the-loop bắt buộc tại các điểm:
   - Chốt yêu cầu
   - Chốt UI/UX
   - Chốt nghiệp vụ
   - Review trước merge
   - Review trước release

## 4. Workflow chuẩn

### Phase 1: Nhận đề bài

Input:
- Yêu cầu từ PO/BA/Team Lead
- User story
- Acceptance Criteria
- Figma nếu có
- API spec nếu có

Process:
- Đọc yêu cầu
- Tách flow
- Tách task
- Xác định điểm chưa rõ
- Hỏi lại nếu thiếu thông tin

Output:
- Danh sách flow
- Danh sách task
- Danh sách câu hỏi cần confirm

DOD:
- Đầu bài rõ
- Có flow nghiệp vụ
- Có tiêu chí nghiệm thu
- Có phạm vi làm và không làm

### Phase 2: Phân tích repo

Input:
- Source code hiện tại
- Cấu trúc thư mục
- Dependencies
- Các rule trong `.claude/rules`

Process:
- Đọc repo map
- Tìm module liên quan
- Tìm API liên quan
- Tìm test liên quan
- Không sửa code trước khi hiểu luồng

Output:
- Danh sách file cần sửa
- Danh sách file cần đọc thêm
- Rủi ro ảnh hưởng

DOD:
- Xác định đúng điểm sửa
- Không bỏ sót flow liên quan
- Không sửa nhầm module

### Phase 3: Thiết kế hướng xử lý

Input:
- Đề bài đã rõ
- Repo đã phân tích
- Flow đã hiểu

Process:
- Đề xuất solution
- Chia bước implement
- Xác định test cần chạy
- Xác định sub-agent nếu cần

Output:
- Implementation plan
- Test plan
- Risk checklist

DOD:
- Solution rõ
- Có checklist
- Có điểm cần human review nếu rủi ro cao

### Phase 4: Implement

Input:
- Implementation plan
- Rule coding
- Rule architecture

Process:
- Code từng bước nhỏ
- Không thay đổi ngoài phạm vi
- Sau mỗi bước lớn phải tự review
- Nếu gặp lỗi không chắc phải dừng hỏi lại

Output:
- Code đã sửa
- File mới nếu cần
- Ghi chú thay đổi

DOD:
- Code chạy được
- Không phá flow cũ
- Không hardcode bừa
- Không bỏ qua error handling

### Phase 5: Testing

Input:
- Code đã implement
- Test plan
- Flow người dùng

Process:
- Chạy unit test nếu có
- Chạy integration test nếu có
- Chạy E2E nếu có Playwright
- Kiểm tra flow như người dùng thật

Output:
- Kết quả test
- Bug phát hiện
- Hướng xử lý bug

DOD:
- Test pass
- Flow chính pass
- Không có lỗi blocking
- Có hướng dẫn test thủ công nếu chưa có automation

### Phase 6: Review và bàn giao

Input:
- Code đã test
- Kết quả test
- Checklist DOD

Process:
- Tự review code
- Gọi code-reviewer agent nếu cần
- Tổng hợp thay đổi
- Viết hướng dẫn nghiệm thu

Output:
- Summary thay đổi
- Test evidence
- Checklist nghiệm thu
- Hướng dẫn bàn giao

DOD:
- Người nhận hiểu đã làm gì
- Có cách kiểm tra
- Có rủi ro còn lại nếu có
- Sẵn sàng PR hoặc release
