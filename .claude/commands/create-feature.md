# Command: create-feature

## Khi nào dùng

Khi nhận được yêu cầu phát triển một tính năng mới từ PO/BA/Team Lead.

## Input cần có

- Mô tả feature hoặc user story
- Acceptance criteria
- Figma/mockup nếu có
- API spec nếu có
- Phạm vi rõ ràng (làm gì, không làm gì)

## Các bước Claude phải làm

1. **Đọc và phân tích yêu cầu**
   - Đọc toàn bộ yêu cầu
   - Hỏi lại nếu chưa rõ
   - Xác nhận phạm vi

2. **Tách flow nghiệp vụ**
   - Liệt kê các luồng người dùng
   - Xác định điểm bắt đầu, kết thúc, exception
   - Gọi `ba-flow/skill.md` nếu cần phân tích sâu

3. **Tạo implementation plan**
   - Danh sách file cần tạo/sửa
   - Thứ tự implement
   - Điểm cần human confirm trước khi làm

4. **Implement từng bước**
   - Code theo plan, từng bước nhỏ
   - Không sửa ngoài phạm vi
   - Tự review sau mỗi bước lớn

5. **Test**
   - Chạy unit test
   - Chạy integration test
   - Kiểm tra flow theo người dùng thật
   - Dùng `e2e-test.md` nếu cần Playwright

6. **Bàn giao**
   - Tổng hợp thay đổi và kết quả test
   - Cập nhật biên bản bàn giao chi tiết vào [handover.md](file://.claude/docs/handover.md)
   - Viết hướng dẫn nghiệm thu
   - Gọi `code-reviewer.md` nếu cần review

## Output bắt buộc

- Biên bản bàn giao đã cập nhật trong `.claude/docs/handover.md`
- Summary thay đổi
- Danh sách file đã thay đổi
- Kết quả test
- Rủi ro còn lại (nếu có)
- Hướng dẫn test thủ công

## DOD

- [ ] Feature hoạt động đúng acceptance criteria
- [ ] Có test pass
- [ ] Không phá flow cũ
- [ ] Đã cập nhật biên bản bàn giao `.claude/docs/handover.md`
