# Kiến trúc hệ thống (Architecture)

## Mục tiêu

Đảm bảo codebase luôn sạch, có cấu trúc rõ ràng, dễ mở rộng và không có dependency vòng hay trộn lẫn logic không liên quan.

## Phạm vi áp dụng

Áp dụng cho toàn bộ project: frontend, backend, shared libraries.

## Quy định bắt buộc

- Không tạo dependency vòng giữa các module (A phụ thuộc B, B phụ thuộc lại A).
- Không trộn business logic vào lớp UI/View.
- Không trộn validation, service, repository vào cùng một lớp.
- Mỗi layer chỉ được gọi layer ngay bên dưới (Controller → Service → Repository).
- Không để logic nghiệp vụ trong file router hoặc controller.
- Không import trực tiếp database model từ controller/UI.
- Tách rõ: Model, Service, Controller, DTO, Repository, Helper.
- Tên thư mục và file phải thể hiện rõ trách nhiệm của module.

## Checklist trước khi hoàn thành

- [ ] Không có dependency vòng
- [ ] Business logic nằm đúng trong service layer
- [ ] Không có import chéo giữa module không liên quan
- [ ] Cấu trúc thư mục phản ánh đúng kiến trúc
- [ ] Đã review ảnh hưởng tới module khác
