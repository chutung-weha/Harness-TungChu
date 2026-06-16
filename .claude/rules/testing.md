# Quy định Testing

## Mục tiêu

Đảm bảo mọi thay đổi đều được kiểm tra đúng cách, theo luồng người dùng thật, không chỉ test từng unit rời rạc.

## Phạm vi áp dụng

Áp dụng cho toàn bộ code có logic nghiệp vụ, API, UI flow.

## Quy định bắt buộc

### Unit Test
- Mỗi function có logic nghiệp vụ phải có unit test
- Test các case: happy path, edge case, error case
- Mock dependency ngoài (database, API) trong unit test
- Coverage tối thiểu: 70% cho core module

### Integration Test
- Test toàn bộ luồng từ API đến database (không mock)
- Ưu tiên test các API endpoint quan trọng
- Dùng database test riêng, không dùng production data

### E2E Test (Playwright nếu dự án có)
- Test theo user flow thật — không test từng button riêng lẻ
- Mỗi flow chính phải có ít nhất 1 E2E test
- E2E test phải chạy được trên CI/CD

### Nguyên tắc testing
- Test phải đi theo luồng người dùng, không chỉ test từng task rời rạc
- Tên test phải mô tả hành vi: `should return 404 when user not found`
- Không test implementation detail — test behavior
- Mỗi test case độc lập, không phụ thuộc thứ tự chạy

## Checklist trước khi hoàn thành

- [ ] Có unit test cho logic nghiệp vụ mới
- [ ] Có integration test cho API mới/thay đổi
- [ ] Có E2E test nếu thay đổi ảnh hưởng flow người dùng
- [ ] Tất cả test đã pass
- [ ] Có hướng dẫn test thủ công nếu chưa có automation
