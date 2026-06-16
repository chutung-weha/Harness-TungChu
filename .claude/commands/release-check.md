# Command: release-check

## Khi nào dùng

Trước khi release lên production. Đây là checklist bắt buộc để đảm bảo release an toàn.

## Input cần có

- Version cần release
- Changelog / danh sách thay đổi
- Môi trường target (staging/production)

## Các bước Claude phải làm

1. **Kiểm tra build**
   - Build thành công không có warning/error nghiêm trọng
   - Bundle size trong giới hạn chấp nhận được

2. **Kiểm tra test**
   - Toàn bộ unit test pass
   - Integration test pass
   - E2E test pass trên staging

3. **Kiểm tra môi trường (Env)**
   - Biến môi trường production đã được cấu hình đúng
   - Không có biến env development lọt vào production
   - Secret không bị hardcode

4. **Kiểm tra migration**
   - Có database migration không? Nếu có, đã chạy thử trên staging chưa?
   - Migration có rollback được không?
   - Ảnh hưởng tới data hiện tại như thế nào?

5. **Kiểm tra rollback plan**
   - Nếu release fail, rollback như thế nào?
   - Thời gian rollback dự kiến
   - Ai chịu trách nhiệm rollback

## Output bắt buộc

- Checklist release đã check từng mục
- Trạng thái mỗi mục: Pass / Fail / N/A
- Kết luận: Sẵn sàng release / Cần giải quyết trước

## DOD

- [ ] Build pass
- [ ] Tất cả test pass
- [ ] Env đúng
- [ ] Migration đã được verify
- [ ] Có rollback plan rõ ràng
- [ ] Team lead đã approve
