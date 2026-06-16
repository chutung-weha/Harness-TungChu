# Command: explain-code

## Khi nào dùng

Khi cần giải thích code cho BA, PO, hoặc thành viên non-tech để họ hiểu hệ thống đang làm gì.

## Input cần có

- Phần code cần giải thích (file, function, hoặc module)
- Đối tượng nghe (BA/PO/new dev)
- Mức độ chi tiết cần thiết

## Các bước Claude phải làm

1. **Hiểu phần code cần giải thích**
   - Đọc code và hiểu logic tổng thể
   - Xác định flow từ đầu đến cuối
   - Ghi chú các điểm phức tạp

2. **Giải thích theo flow, không theo file**
   - Không giải thích "file này có hàm X, hàm Y"
   - Giải thích "khi người dùng làm A, hệ thống sẽ làm B, C, D"
   - Dùng ngôn ngữ nghiệp vụ, không dùng thuật ngữ kỹ thuật nếu đối tượng là non-tech

3. **Dùng ví dụ thực tế**
   - Gắn code vào ví dụ người dùng thực tế
   - VD: "Khi khách hàng bấm 'Đặt hàng', hệ thống sẽ..."

4. **Trả lời câu hỏi follow-up**
   - Sẵn sàng giải thích thêm nếu cần
   - Đơn giản hóa nếu đối tượng chưa hiểu

## Output bắt buộc

- Giải thích flow theo ngôn ngữ đối tượng nghe
- Sơ đồ text/mermaid nếu giúp dễ hiểu hơn
- Danh sách điểm quan trọng cần biết

## DOD

- [ ] Giải thích theo flow, không theo file
- [ ] Ngôn ngữ phù hợp đối tượng
- [ ] Có ví dụ thực tế
- [ ] Người nghe xác nhận đã hiểu
