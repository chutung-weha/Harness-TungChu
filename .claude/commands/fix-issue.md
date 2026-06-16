# Command: fix-issue

## Khi nào dùng

Khi cần sửa bug hoặc xử lý issue được report.

## Input cần có

- Mô tả bug rõ ràng
- Steps to reproduce
- Expected vs Actual behavior
- Log/screenshot nếu có
- Môi trường xảy ra (dev/staging/production)

## Các bước Claude phải làm

1. **Đọc và hiểu bug**
   - Đọc kỹ mô tả
   - Hỏi lại nếu chưa rõ steps reproduce
   - Xác định mức độ ưu tiên (P0/P1/P2)

2. **Reproduce bug**
   - Tìm cách reproduce trên local
   - Xác nhận bug có thật không
   - Ghi lại điều kiện để bug xảy ra

3. **Tìm root cause**
   - Trace theo flow để tìm nguồn gốc
   - Không fix symptom mà không hiểu cause
   - Kiểm tra có liên quan tới regression không

4. **Fix bug**
   - Fix tại đúng nguyên nhân gốc
   - Không sửa lan man ngoài phạm vi bug
   - Không tạo bug mới khi fix

5. **Test lại**
   - Reproduce lại theo steps gốc — đảm bảo đã fix
   - Kiểm tra các flow liên quan không bị ảnh hưởng
   - Chạy regression test nếu có

## Output bắt buộc

- Root cause analysis (nguyên nhân gốc)
- Mô tả fix đã làm
- Steps kiểm tra lại bug đã hết
- Rủi ro ảnh hưởng tới flow khác (nếu có)

## DOD

- [ ] Đã xác định root cause
- [ ] Bug đã được fix đúng nguyên nhân
- [ ] Test xác nhận bug hết
- [ ] Không có regression mới
- [ ] Có hướng dẫn kiểm tra lại
