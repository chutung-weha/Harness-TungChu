# Command: refactor

## Khi nào dùng

Khi cần tái cấu trúc code mà không thay đổi behavior (chức năng) hiện tại.

## Input cần có

- Phần code cần refactor
- Lý do refactor rõ ràng (tại sao cần làm)
- Phạm vi refactor (file/module/function nào)

## Các bước Claude phải làm

1. **Xác nhận lý do refactor**
   - Ghi rõ lý do: code smell, performance, maintainability, v.v.
   - Không refactor nếu không có lý do cụ thể

2. **Đảm bảo có test trước khi refactor**
   - Kiểm tra có test cover phần cần refactor không
   - Nếu chưa có, viết test trước rồi mới refactor
   - Test là "lưới bảo vệ" khi refactor

3. **Refactor từng bước nhỏ**
   - Không refactor toàn bộ cùng lúc
   - Mỗi bước refactor là một commit riêng
   - Sau mỗi bước, chạy test để đảm bảo không bị break

4. **Kiểm tra behavior không đổi**
   - Chạy toàn bộ test sau khi hoàn thành
   - Kiểm tra flow người dùng vẫn hoạt động đúng

## Output bắt buộc

- Lý do refactor (đã làm gì và tại sao)
- Danh sách thay đổi cụ thể
- Kết quả test trước và sau refactor
- Ghi chú nếu có thay đổi nào ảnh hưởng tới interface/API

## DOD

- [ ] Đã ghi rõ lý do refactor
- [ ] Có test trước khi refactor
- [ ] Behavior không thay đổi
- [ ] Test pass sau refactor
- [ ] Code dễ đọc hơn sau refactor
