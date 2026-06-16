# Skill: Testing

## Mục tiêu

Đảm bảo code được kiểm tra đầy đủ theo các lớp: unit, integration, E2E — ưu tiên test theo flow người dùng.

## Khi nào được gọi

- Khi cần viết test cho feature mới
- Khi cần verify regression sau sửa bug
- Khi cần E2E test flow người dùng
- Khi cần tăng test coverage

## Input cần có

- Code cần test
- User flow hoặc acceptance criteria
- Test framework project đang dùng
- Môi trường chạy test (local/CI)

## Quy trình xử lý

1. **Xác định loại test cần viết**
   - Unit: cho hàm có logic nghiệp vụ
   - Integration: cho API endpoint
   - E2E: cho user flow trên UI

2. **Viết unit test**
   - Test happy path trước
   - Test edge case
   - Test error case
   - Mock dependency ngoài

3. **Viết integration test**
   - Test từ API đến database
   - Dùng database test riêng
   - Kiểm tra response format đúng

4. **Viết E2E test (Playwright nếu có)**
   - Test theo toàn bộ user flow
   - Không test từng element riêng lẻ
   - Screenshot khi fail

5. **Chạy và verify**
   - Chạy toàn bộ test suite
   - Đảm bảo không có flaky test

## Output bắt buộc

- Test file đã viết
- Kết quả chạy test
- Coverage report (nếu có)

## DOD

- [ ] Có test cho happy path
- [ ] Có test cho edge case và error case
- [ ] Tất cả test pass
- [ ] Không có flaky test

## Lưu ý human-in-the-loop

**Dừng lại và hỏi con người** khi:
- Không chắc flow người dùng để viết E2E test
- Test môi trường có vấn đề không tự giải quyết được
