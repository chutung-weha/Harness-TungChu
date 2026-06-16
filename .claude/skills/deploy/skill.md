# Skill: Deploy

## Mục tiêu

Đảm bảo quá trình build, release và deploy lên môi trường diễn ra an toàn, có thể rollback khi cần.

## Khi nào được gọi

- Khi cần build và release lên staging/production
- Khi cần cấu hình CI/CD
- Khi cần kiểm tra môi trường trước release
- Khi cần rollback sau sự cố

## Input cần có

- Version cần deploy
- Môi trường target
- Changelog
- Danh sách migration cần chạy (nếu có)

## Quy trình xử lý

1. **Kiểm tra pre-deploy**
   - Build thành công không?
   - Test pass hết chưa?
   - Env variable đã cấu hình đúng chưa?
   - Migration đã được test trên staging chưa?

2. **Chạy migration (nếu có)**
   - Backup database trước khi migrate
   - Chạy migration theo thứ tự đúng
   - Verify migration thành công

3. **Deploy**
   - Theo đúng quy trình CI/CD của project
   - Monitor log ngay sau deploy
   - Kiểm tra health check

4. **Post-deploy verification**
   - Kiểm tra các flow chính hoạt động
   - Kiểm tra không có lỗi trong log
   - Notify team khi deploy thành công

5. **Rollback nếu cần**
   - Xác định version cũ để rollback về
   - Rollback code
   - Rollback migration nếu có thể
   - Notify team

## Output bắt buộc

- Kết quả deploy (success/fail)
- Version đã deploy
- Checklist post-deploy verification
- Rollback plan nếu có rủi ro

## DOD

- [ ] Deploy thành công
- [ ] Health check pass
- [ ] Flow chính hoạt động sau deploy
- [ ] Không có lỗi bất thường trong log
- [ ] Có rollback plan rõ ràng

## Lưu ý human-in-the-loop

**Dừng lại và hỏi con người** khi:
- Migration ảnh hưởng tới data lớn trên production
- Deploy có breaking change
- Phát hiện lỗi sau deploy cần quyết định rollback

## Tham khảo thêm

Xem file `deploy-config.md` trong cùng thư mục này để biết cấu hình deploy của project.
