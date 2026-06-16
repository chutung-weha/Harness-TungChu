# Cấu hình Deploy

<!-- Điền cấu hình deploy thực tế của project tại đây -->

## Môi trường

| Môi trường | URL | Branch | Tự động deploy |
|------------|-----|--------|----------------|
| Development | http://localhost:3000 | any | Không |
| Staging | ĐIỀN_URL | develop | Có (CI/CD) |
| Production | ĐIỀN_URL | main | Có (manual trigger) |

## CI/CD

- Công cụ: [GitHub Actions / GitLab CI / Jenkins — điền tên]
- Config file: `.github/workflows/` hoặc tương đương
- Điều kiện trigger: Push to branch / Manual

## Database Migration

- Công cụ: [Liquibase / Flyway / Prisma Migrate — điền tên]
- Lệnh chạy: `ĐIỀN_LỆNH`
- Lệnh rollback: `ĐIỀN_LỆNH`

## Lệnh Deploy

```bash
# Build
ĐIỀN_LỆNH_BUILD

# Deploy staging
ĐIỀN_LỆNH_STAGING

# Deploy production
ĐIỀN_LỆNH_PRODUCTION
```

## Rollback

```bash
# Rollback về version trước
ĐIỀN_LỆNH_ROLLBACK
```

## Liên hệ khi có sự cố

- DevOps: [ĐIỀN_LIÊN_HỆ]
- Team Lead: [ĐIỀN_LIÊN_HỆ]
