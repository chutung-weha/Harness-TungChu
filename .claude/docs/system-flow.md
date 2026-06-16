# System Flow — Luồng xử lý hệ thống

<!-- Mô tả cách hệ thống xử lý request từ Client đến Database và ngược lại -->

## Kiến trúc tổng quan

```
Client (Browser/Mobile)
    ↕ HTTPS
API Gateway / Load Balancer
    ↕
Backend Server (Node.js / Python / Java — điền công nghệ)
    ├── Database (PostgreSQL / MySQL — điền tên)
    ├── Cache (Redis — nếu có)
    └── Third-party Services (ĐIỀN)
```

## Flow xử lý request chuẩn

```
1. Client gửi request HTTP
2. API Gateway xác thực token
3. Route đến Controller tương ứng
4. Controller gọi Service
5. Service xử lý business logic
6. Service gọi Repository nếu cần data
7. Repository truy vấn Database
8. Kết quả trả về ngược lên: Repository → Service → Controller → Client
```

## Flow xử lý lỗi

```
1. Lỗi validation → 422 + thông báo lỗi cụ thể
2. Lỗi auth → 401/403
3. Lỗi không tìm thấy → 404
4. Lỗi server → 500 + log chi tiết (không expose ra client)
```

## Tích hợp bên ngoài (Third-party)

| Service | Mục đích | Cách gọi |
|---------|---------|---------|
| [ĐIỀN] | [ĐIỀN] | [REST API / SDK] |

## Caching Strategy

[Điền strategy cache của project — Redis / CDN / In-memory]

## Queue / Background Job

[Điền nếu project có job queue — BullMQ / Celery / v.v.]
