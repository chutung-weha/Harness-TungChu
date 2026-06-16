TÀI LIỆU BAWEB QUẢN LÝ CÔNG VIỆC TEAM

Phương án kết hợp: Kanban + Task Detail + Daily Report + Review/Nghiệm thu



|  | 
| --- |
| Hạng mục | Nội dung |
| Tên sản phẩm | Web quản lý công việc team |
| Phiên bản tài liệu | v1.0 |
| Mục tiêu | Xây dựng hệ thống quản lý giao việc, theo dõi tiến độ, báo cáo và nghiệm thu công việc cho team |
| Đối tượng sử dụng | Admin, Team Lead, Member, Viewer |
| Phạm vi ưu tiên | MVP dùng nội bộ cho team nhỏ/vừa |
| Tư duy sản phẩm | Jira-lite + Asana-lite + Daily Report nội bộ |
| Nguyên tắc build | Đơn giản, rõ luồng, dễ dùng, ưu tiên quản lý thật hơn là nhiều tính năng |




# 1. Bối cảnh và vấn đề cần giải quyết

## 1.1. Bối cảnh

Team cần một công cụ quản lý công việc nội bộ để giảm phụ thuộc vào Sheet, chat, báo cáo rời rạc, ghi chú cá nhân hoặc mindmap. Hệ thống phải giúp Team Lead giao việc, theo dõi tiến độ, nghiệm thu và tổng hợp báo cáo theo ngày, tuần, tháng.

Thành viên cần biết rõ hôm nay mình phải làm gì, task nào sắp đến hạn, task nào bị trả lại, cần báo cáo gì và cần hỗ trợ gì.

## 1.2. Vấn đề hiện tại

Task bị giao qua nhiều kênh khác nhau nên dễ thất lạc.

Không rõ ai đang phụ trách việc gì.

Không rõ deadline và mức độ ưu tiên.

Thành viên báo cáo không đồng nhất.

Team Lead khó nhìn tổng quan tiến độ team.

Không có luồng nghiệm thu rõ ràng.

Task được báo xong nhưng không có DOD nên khó đánh giá.

Việc quá hạn không được cảnh báo sớm.

Không có dữ liệu để tổng hợp báo cáo tuần/tháng.

Không biết bottleneck nằm ở người, task, project hay quy trình.

# 2. Mục tiêu sản phẩm

## 2.1. Mục tiêu tổng quát

Xây dựng một web app giúp team quản lý toàn bộ vòng đời công việc:


|  | 
| --- |
| Tạo việc → Giao việc → Thực hiện → Cập nhật tiến độ → Báo cáo → Review → Nghiệm thu → Đánh giá → Tổng hợp báo cáo |



## 2.2. Mục tiêu cụ thể

Team Lead tạo và giao task cho từng thành viên.

Thành viên xem được toàn bộ task của mình.

Task có trạng thái rõ ràng theo Kanban.

Mỗi task có deadline, priority, DOD, checklist và comment.

Thành viên cập nhật tiến độ và gửi daily report.

Team Lead review task trước khi task được tính là hoàn thành.

Hệ thống có dashboard theo dõi tiến độ team.

Hệ thống tổng hợp được báo cáo ngày, tuần, tháng.

Hệ thống có phân quyền rõ ràng.

Hệ thống có thể test E2E theo các flow chính.

# 3. Phạm vi sản phẩm

## 3.1. Trong phạm vi MVP

Đăng nhập / đăng xuất.

Quản lý team.

Quản lý thành viên.

Quản lý project.

Quản lý task.

Kanban Board.

My Tasks.

Task Detail.

Comment trong task.

Checklist trong task.

Review và nghiệm thu task.

Daily Report.

Dashboard tổng quan.

Báo cáo tuần/tháng cơ bản.

Notification cơ bản.

Phân quyền theo role.

## 3.2. Ngoài phạm vi MVP

Chat realtime đầy đủ.

Mobile app native.

AI tự động phân bổ nhân sự.

Gantt chart phức tạp.

Calendar sync với Google Calendar.

Billing/thanh toán.

Marketplace plugin.

OKR đầy đủ.

Time tracking chi tiết từng phút.

Workflow builder phức tạp như Jira.

# 4. Định nghĩa thuật ngữ


|  | 
| --- |
| Thuật ngữ | Định nghĩa |
| Task | Một đầu việc cụ thể cần thực hiện. |
| Project | Nhóm công việc lớn, gồm nhiều task. |
| Team | Nhóm người cùng làm việc. |
| Assignee | Người được giao task. |
| Creator | Người tạo task. |
| Reviewer | Người kiểm tra và nghiệm thu task. |
| DOD | Definition of Done, tiêu chí xác định task đã hoàn thành đúng yêu cầu. |
| Kanban Board | Bảng hiển thị task theo trạng thái. |
| Daily Report | Báo cáo công việc hằng ngày của thành viên. |
| Weekly Report | Báo cáo tổng hợp theo tuần. |
| Monthly Report | Báo cáo tổng hợp theo tháng. |
| Blocker | Vấn đề khiến task không thể tiếp tục. |
| Priority | Mức độ ưu tiên của task. |
| Status | Trạng thái hiện tại của task. |
| Review Result | Kết quả nghiệm thu task. |
| Score Level | Mức đánh giá task sau nghiệm thu: Chưa đạt / Đạt / Tốt. |



# 5. Người dùng và vai trò

## 5.1. Admin

Quản lý toàn bộ team.

Quản lý toàn bộ user.

Tạo/sửa/xóa project.

Tạo/sửa/xóa task.

Xem toàn bộ báo cáo.

Cấu hình hệ thống.

Cấp quyền cho người dùng.

## 5.2. Team Lead

Tạo project.

Tạo task.

Giao task cho member.

Cập nhật deadline, priority, DOD.

Review task.

Đánh giá kết quả task.

Xem dashboard team.

Xem daily/weekly/monthly report.

Xem tiến độ từng thành viên.

## 5.3. Member

Xem task được giao.

Cập nhật trạng thái task của mình.

Tick checklist.

Comment trong task.

Gửi task sang trạng thái chờ review.

Gửi daily report.

Xem lịch sử task của mình.

## 5.4. Viewer

Xem dashboard nếu được cấp quyền.

Xem báo cáo.

Xem project/task được cấp quyền.

Không được tạo/sửa/xóa dữ liệu.

# 6. Luồng nghiệp vụ tổng quan

## 6.1. Luồng giao việc


|  | 
| --- |
| Team Lead đăng nhập→ Tạo project hoặc chọn project có sẵn→ Tạo task→ Nhập mô tả, DOD, deadline, priority→ Giao task cho member→ Task chuyển sang trạng thái Đã giao→ Member nhận notification→ Member thấy task trong My Tasks |



## 6.2. Luồng thực hiện task


|  | 
| --- |
| Member đăng nhập→ Vào My Tasks→ Mở task được giao→ Đọc mô tả và DOD→ Chuyển trạng thái sang Đang làm→ Tick checklist→ Comment cập nhật tiến độ→ Nếu gặp vấn đề thì chuyển sang Bị chặn→ Nếu làm xong thì chuyển sang Chờ review |



## 6.3. Luồng review/nghiệm thu


|  | 
| --- |
| Team Lead đăng nhập→ Vào Dashboard hoặc Kanban Board→ Mở task ở trạng thái Chờ review→ Kiểm tra kết quả theo DOD→ Chấp nhận hoặc yêu cầu sửa→ Nếu chấp nhận, task chuyển sang Hoàn thành→ Nếu cần sửa, task chuyển sang Cần sửa |



## 6.4. Luồng daily report


|  | 
| --- |
| Member đăng nhập→ Vào Daily Report→ Chọn ngày báo cáo→ Chọn các task đã làm hôm nay→ Nhập nội dung đã làm→ Nhập vướng mắc nếu có→ Nhập kế hoạch ngày mai→ Submit report→ Team Lead xem report theo ngày |



## 6.5. Luồng tổng hợp báo cáo


|  | 
| --- |
| Hệ thống lấy dữ liệu task + daily report→ Tổng hợp theo ngày/tuần/tháng→ Hiển thị số task hoàn thành, task quá hạn, task bị chặn, task cần sửa, hiệu suất từng member |




# 7. Trạng thái task


|  | 
| --- |
| Mã trạng thái | Tên trạng thái | Ý nghĩa |
| backlog | Backlog | Task đã được ghi nhận nhưng chưa giao. |
| assigned | Đã giao | Task đã giao cho member. |
| in_progress | Đang làm | Member đang thực hiện. |
| blocked | Bị chặn | Task đang bị vướng, chưa thể tiếp tục. |
| in_review | Chờ review | Member đã làm xong và gửi review. |
| revision_required | Cần sửa | Lead review và yêu cầu chỉnh sửa. |
| completed | Hoàn thành | Task đã được nghiệm thu. |
| cancelled | Hủy | Task không còn cần làm. |



## 7.1. Luồng chuyển trạng thái hợp lệ


|  | 
| --- |
| Backlog → Đã giaoĐã giao → Đang làmĐang làm → Bị chặnBị chặn → Đang làmĐang làm → Chờ reviewChờ review → Hoàn thànhChờ review → Cần sửaCần sửa → Đang làmĐang làm → HủyBacklog → HủyĐã giao → Hủy |



## 7.2. Quy tắc chuyển trạng thái

Member chỉ được chuyển task của mình từ Đã giao sang Đang làm.

Member được chuyển task của mình sang Bị chặn nếu có lý do.

Member được chuyển task của mình sang Chờ review khi đã hoàn thành phần việc.

Chỉ Team Lead/Admin được chuyển task sang Hoàn thành.

Chỉ Team Lead/Admin được chuyển task sang Cần sửa.

Khi task chuyển sang Bị chặn, bắt buộc nhập lý do.

Khi task chuyển sang Chờ review, hệ thống kiểm tra checklist và DOD.

Khi task chuyển sang Hoàn thành, bắt buộc có review result.

Khi task bị Cần sửa, bắt buộc có review note.

# 8. Mức độ ưu tiên và đánh giá

## 8.1. Priority


|  | 
| --- |
| Mã | Tên | Ý nghĩa |
| low | Thấp | Không gấp, ít ảnh hưởng. |
| medium | Trung bình | Việc bình thường. |
| high | Cao | Quan trọng, cần ưu tiên. |
| urgent | Gấp | Cần xử lý ngay. |



## 8.2. Score Level


|  | 
| --- |
| Mã | Tên | Ý nghĩa |
| chua_dat | Chưa đạt | Task không đạt yêu cầu, cần làm lại hoặc cải thiện nhiều. |
| dat | Đạt | Task đạt yêu cầu theo DOD. |
| tot | Tốt | Task vượt yêu cầu, chất lượng tốt, chủ động. |



# 9. Module chức năng chi tiết

## 9.1. Module Auth

Mục tiêu: Cho phép người dùng đăng nhập, đăng xuất và sử dụng hệ thống theo đúng quyền.

### Chức năng

Đăng nhập bằng email/password.

Đăng xuất.

Lưu session.

Điều hướng theo role.

Chặn truy cập nếu chưa đăng nhập.

Chặn truy cập nếu không đủ quyền.

### Acceptance Criteria

User chưa login không vào được dashboard.

User login thành công được chuyển vào trang chính.

User logout xong không truy cập được trang nội bộ.

Member không truy cập được màn hình admin.

Viewer không sửa được dữ liệu.

## 9.2. Module Team

Mục tiêu: Quản lý team và thành viên trong team.

### Chức năng

Tạo team.

Sửa thông tin team.

Thêm member vào team.

Xóa member khỏi team.

Gán role cho member.

Xem danh sách member trong team.

### Acceptance Criteria

Admin tạo được team.

Team Lead xem được thành viên team mình.

Member chỉ thấy team mình thuộc về.

Khi remove member khỏi team, member không còn thấy task/project của team đó nếu không có quyền.

## 9.3. Module Project

Mục tiêu: Nhóm các task theo từng dự án hoặc nhóm công việc.

### Chức năng

Tạo project.

Sửa project.

Archive project.

Xem danh sách project.

Xem tiến độ project.

Gán member vào project.

### Acceptance Criteria

Team Lead tạo được project.

Project hiển thị số lượng task theo trạng thái.

Project có thể archive nhưng không xóa cứng dữ liệu.

Member chỉ thấy project được phân quyền hoặc có task liên quan.

## 9.4. Module Task

Mục tiêu: Quản lý vòng đời của một công việc từ khi tạo đến khi nghiệm thu.

### Chức năng

Tạo task.

Sửa task.

Archive task.

Giao task cho member.

Cập nhật trạng thái.

Cập nhật priority.

Cập nhật deadline.

Thêm mô tả.

Thêm DOD.

Thêm checklist.

Thêm comment.

Upload attachment.

Gửi review.

Nghiệm thu task.

Đánh giá task.

Xem lịch sử thay đổi.

### Acceptance Criteria

Không được tạo task nếu thiếu title, description, assignee, due date, DOD.

Member được giao task phải thấy task trong My Tasks.

Task quá hạn phải có trạng thái cảnh báo.

Task chỉ hoàn thành khi Team Lead/Admin duyệt.

Mọi thay đổi quan trọng phải ghi vào activity log.

## 9.5. Module Kanban Board

Mục tiêu: Hiển thị task theo trạng thái để team nhìn được luồng công việc.

### Chức năng

Xem task theo cột trạng thái.

Kéo thả task giữa các cột.

Lọc theo assignee.

Lọc theo project.

Lọc theo priority.

Lọc task quá hạn.

Tìm kiếm task.

Mở task detail từ card.

Hiển thị cảnh báo task quá hạn.

Hiển thị số lượng task mỗi cột.

### Acceptance Criteria

Board load được task theo project.

Kéo thả task phải tuân thủ rule chuyển trạng thái.

Member không kéo task của người khác nếu không có quyền.

Task quá hạn hiển thị dễ nhận biết.

Click card mở được task detail.

## 9.6. Module My Tasks

Mục tiêu: Giúp member biết rõ mình cần làm gì.

### Chức năng

Xem task được giao cho mình.

Lọc task hôm nay.

Lọc task quá hạn.

Lọc task tuần này.

Lọc task đang chờ review.

Lọc task cần sửa.

Cập nhật trạng thái task.

Mở task detail.

Gửi task sang review.

### Acceptance Criteria

Member chỉ thấy task của mình.

Task quá hạn được đưa lên đầu.

Task urgent được ưu tiên hiển thị.

Member chuyển được task từ Đã giao sang Đang làm.

Member chuyển được task sang Chờ review khi hoàn thành.

## 9.7. Module Task Detail

Mục tiêu: Là nơi chứa toàn bộ thông tin và trao đổi của một task.

### Chức năng

Header task: title, status, priority.

Mô tả task.

DOD.

Assignee.

Creator.

Reviewer.

Deadline.

Checklist.

Comment.

Attachment.

Activity log.

Review section.

Action buttons.

### Acceptance Criteria

Task detail hiển thị đủ thông tin task.

Comment mới hiển thị ngay sau khi gửi.

Checklist có thể tick/un-tick theo quyền.

Review note bắt buộc khi yêu cầu sửa.

Activity log ghi lại các thay đổi quan trọng.

## 9.8. Module Review/Nghiệm thu

Mục tiêu: Đảm bảo task chỉ được tính hoàn thành khi đã được kiểm tra.

### Chức năng

Member gửi task sang Chờ review.

Team Lead mở task để review.

Team Lead chọn Approve hoặc Cần sửa.

Team Lead nhập review note.

Team Lead đánh giá Chưa đạt / Đạt / Tốt.

Hệ thống lưu lịch sử review.

### Acceptance Criteria

Member không tự approve task.

Team Lead review được task.

Review note lưu lại đúng.

Task bị yêu cầu sửa quay lại đúng trạng thái.

Task hoàn thành được tính vào report.

## 9.9. Module Daily Report

Mục tiêu: Chuẩn hóa báo cáo hằng ngày của member.

### Chức năng

Member tạo daily report theo ngày.

Chọn task đã làm trong ngày.

Nhập nội dung đã làm.

Nhập vấn đề/vướng mắc.

Nhập kế hoạch ngày mai.

Submit report.

Team Lead xem report theo ngày.

Team Lead lọc report theo member.

### Acceptance Criteria

Member mỗi ngày chỉ có một daily report chính.

Member có thể chỉnh sửa report trong ngày.

Team Lead xem được report của toàn team.

Hệ thống cảnh báo member chưa gửi report.

Report có thể liên kết với task.

## 9.10. Module Dashboard

Mục tiêu: Cho Team Lead cái nhìn tổng quan về team.

### Chức năng

Tổng số task.

Task đang làm.

Task chờ review.

Task bị chặn.

Task quá hạn.

Task hoàn thành hôm nay.

Task hoàn thành tuần này.

Task cần sửa.

Hiệu suất từng member.

Số daily report đã gửi/chưa gửi.

### Acceptance Criteria

Dashboard hiển thị dữ liệu đúng theo quyền.

Team Lead thấy dữ liệu team mình.

Member chỉ thấy dữ liệu cá nhân nếu vào dashboard cá nhân.

Task quá hạn được thống kê đúng.

Dữ liệu thay đổi khi filter.

## 9.11. Module Report tuần/tháng

Mục tiêu: Tổng hợp dữ liệu phục vụ đánh giá và quản lý.

### Chức năng

Tổng task được giao.

Tổng task hoàn thành.

Task quá hạn.

Task bị chặn.

Task cần sửa.

Task Chưa đạt / Đạt / Tốt.

Tổng hợp theo member.

Tổng hợp theo project.

Vấn đề nổi bật.

Danh sách task tồn đọng.

### Acceptance Criteria

Team Lead xem được report tuần/tháng.

Report tự tổng hợp từ task và daily report.

Có filter theo project/member.

Có thể export CSV/Excel ở phase sau.

Số liệu khớp với dữ liệu task.

## 9.12. Module Notification

Mục tiêu: Giảm việc nhắc thủ công.

### Chức năng

Được giao task mới.

Task sắp đến deadline.

Task đã quá hạn.

Task bị yêu cầu sửa.

Task được approve.

Có comment mới trong task.

Có task chờ review.

Chưa gửi daily report.

### Acceptance Criteria

Member nhận notification khi được giao task.

Team Lead nhận notification khi có task chờ review.

Member nhận notification khi task bị yêu cầu sửa.

Notification có trạng thái đã đọc/chưa đọc.

Click notification mở đúng task/report liên quan.

# 10. Phân quyền chi tiết


|  | 
| --- |
| Chức năng | Admin | Team Lead | Member | Viewer |
| Xem dashboard toàn hệ thống | Có | Không | Không | Không |
| Xem dashboard team | Có | Có | Không | Có nếu được cấp |
| Tạo team | Có | Không | Không | Không |
| Thêm member | Có | Có | Không | Không |
| Tạo project | Có | Có | Không | Không |
| Sửa project | Có | Có | Không | Không |
| Archive project | Có | Có | Không | Không |
| Tạo task | Có | Có | Có nếu được cấp | Không |
| Sửa task | Có | Có | Chỉ task của mình và field được phép | Không |
| Xóa/archive task | Có | Có | Không | Không |
| Giao task | Có | Có | Không | Không |
| Sửa deadline | Có | Có | Không mặc định | Không |
| Sửa assignee | Có | Có | Không | Không |
| Cập nhật trạng thái task | Có | Có | Có với task của mình | Không |
| Gửi review | Có | Có | Có với task của mình | Không |
| Approve task | Có | Có | Không | Không |
| Yêu cầu sửa task | Có | Có | Không | Không |
| Đánh giá task | Có | Có | Không | Không |
| Comment | Có | Có | Có nếu có quyền task | Không mặc định |
| Gửi daily report | Có | Có | Có | Không |
| Xem report team | Có | Có | Không | Có nếu được cấp |



# 11. Business Rules

## Rule tạo task

Task bắt buộc có title.

Task bắt buộc có description.

Task bắt buộc có DOD.

Task bắt buộc có assignee.

Task bắt buộc có due date.

Task mặc định có status là Đã giao nếu có assignee.

Nếu chưa có assignee, task nằm ở Backlog.

Task phải thuộc một project.

## Rule deadline

Task quá hạn nếu due_date < ngày hiện tại và status chưa phải completed/cancelled.

Task quá hạn phải hiển thị cảnh báo.

Task quá hạn xuất hiện trong dashboard.

Task urgent quá hạn cần ưu tiên hiển thị cao hơn.

Member không được tự sửa deadline trừ khi được cấp quyền.

## Rule review

Task chỉ hoàn thành khi Team Lead/Admin approve.

Task gửi review phải có comment hoặc update kết quả.

Task cần sửa phải có review note.

Task hoàn thành phải có score level.

Mỗi lần review phải ghi activity log.

## Rule daily report

Mỗi member có tối đa một daily report chính mỗi ngày.

Daily report bắt buộc có work_summary.

Daily report bắt buộc có next_plan.

Daily report có thể liên kết nhiều task.

Team Lead thấy danh sách người chưa gửi report.

## Rule dữ liệu

Không xóa cứng project/task ở MVP, chỉ archive/cancel.

Mọi thay đổi quan trọng phải lưu activity log.

Dữ liệu hiển thị theo quyền.

Member không được xem dữ liệu team khác nếu không có quyền.

Attachment phải gắn với task cụ thể.

# 12. Danh sách màn hình


|  | 
| --- |
| URL | Màn hình | Thành phần chính |
| /login | Login Page | Email, password, button đăng nhập, thông báo lỗi, loading state. |
| /dashboard | Dashboard Page | Cards chỉ số tổng quan, chart task theo trạng thái, task quá hạn, task chờ review, member chưa gửi daily report, filter project/member/date. |
| /projects | Projects Page | Danh sách project, tên project, số task, tiến độ, owner, button tạo project. |
| /projects/:projectId | Project Detail Page | Tabs: Board, List, Reports, Members, Settings. |
| /projects/:projectId/board | Kanban Board Page | Các cột trạng thái, task card, filter, search, button tạo task, drag & drop. |
| /my-tasks | My Tasks Page | Việc quá hạn, hôm nay, tuần này, cần sửa, chờ review, hoàn thành. |
| /tasks/:taskId | Task Detail Page/Drawer | Title, status, priority, description, DOD, assignee, deadline, checklist, comment, attachment, activity log, review panel. |
| /reports/daily | Daily Report Page | Form báo cáo ngày cho member và danh sách report theo ngày cho Team Lead. |
| /reports/weekly | Weekly Report Page | Tổng hợp task, member, task quá hạn, task cần sửa, task chưa đạt/đạt/tốt. |
| /team | Team Page | Danh sách member, role, email, số task đang làm, số task quá hạn, thêm member. |
| /notifications | Notifications Page | Danh sách notification, trạng thái đã đọc/chưa đọc, link đến task/report liên quan. |
| /settings | Settings Page | Thông tin cá nhân, cài đặt team, notification, role nếu có quyền. |



# 13. Data Model đề xuất

## users


|  | 
| --- |
| idemailfull_nameavatar_urlrolecreated_atupdated_at |



## teams


|  | 
| --- |
| idnamedescriptionowner_idcreated_atupdated_at |



## team_members


|  | 
| --- |
| idteam_iduser_idrolejoined_at |



## projects


|  | 
| --- |
| idteam_idnamedescriptionowner_idstatusstart_dateend_datecreated_atupdated_at |



## tasks


|  | 
| --- |
| idproject_idteam_idtitledescriptiondodcreator_idassignee_idreviewer_idstatusprioritystart_datedue_datecompleted_atreview_resultreview_notescore_levelis_archivedcreated_atupdated_at |



## task_checklists


|  | 
| --- |
| idtask_idtitleis_completedcreated_bycreated_atupdated_at |



## task_comments


|  | 
| --- |
| idtask_iduser_idcontentcreated_atupdated_at |



## task_attachments


|  | 
| --- |
| idtask_iduploaded_byfile_namefile_urlfile_typefile_sizecreated_at |



## task_activity_logs


|  | 
| --- |
| idtask_iduser_idaction_typeold_valuenew_valuedescriptioncreated_at |



## daily_reports


|  | 
| --- |
| idteam_iduser_idreport_datework_summaryblockerssupport_needednext_plancreated_atupdated_at |



## daily_report_tasks


|  | 
| --- |
| iddaily_report_idtask_idnotecreated_at |



## notifications


|  | 
| --- |
| iduser_idtypetitlecontenttarget_typetarget_idis_readcreated_at |



# 14. UI/UX nguyên tắc thiết kế

## 14.1. Nguyên tắc chung

Giao diện sạch, ít màu mè.

Ưu tiên dễ hiểu hơn đẹp phức tạp.

Mỗi màn hình chỉ tập trung một mục tiêu chính.

Task quan trọng/quá hạn/chờ review phải dễ thấy.

Trạng thái phải rõ ràng.

Action chính phải nổi bật.

Không bắt người dùng nhập quá nhiều nếu chưa cần.

Dữ liệu phải có filter/search.

## 14.2. Layout đề xuất


|  | 
| --- |
| Sidebar trái:- Dashboard- My Tasks- Projects- Reports- Team- Notifications- SettingsHeader:- Search- Create Task- Notification Icon- User MenuMain content:- Nội dung theo từng page |



## 14.3. Component chính

Task Card.

Status Badge.

Priority Badge.

User Avatar.

Date Picker.

Task Detail Drawer.

Comment Box.

Checklist.

Report Form.

Dashboard Stat Card.

Filter Bar.

Empty State.

Loading State.

Confirm Dialog.

# 15. DOD cho sản phẩm MVP

Admin/Team Lead/Member đăng nhập được.

Team Lead tạo được project.

Team Lead tạo và giao task được.

Member thấy task trong My Tasks.

Task hiển thị đúng trên Kanban Board.

Member cập nhật được trạng thái task.

Member gửi task sang Chờ review.

Team Lead approve hoặc yêu cầu sửa được.

Task hoàn thành có đánh giá Chưa đạt/Đạt/Tốt.

Member gửi được daily report.

Team Lead xem được daily report.

Dashboard hiển thị task quá hạn, đang làm, chờ review, hoàn thành.

Có phân quyền cơ bản.

Có activity log cho task.

Có E2E test cho các flow chính.


# 16. E2E Test Cases bằng Playwright

## 16.1. Test Case - Login


|  | 
| --- |
| Given user ở trang loginWhen nhập email/password đúngThen user được chuyển vào dashboard |



## 16.2. Test Case - Team Lead tạo task


|  | 
| --- |
| Given Team Lead đã loginWhen vào project và tạo task mớiAnd nhập title, description, DOD, assignee, due date, priorityThen task được tạo thành côngAnd task hiển thị ở cột Đã giaoAnd member được giao thấy task trong My Tasks |



## 16.3. Test Case - Member cập nhật task


|  | 
| --- |
| Given Member đã loginAnd có task được giaoWhen mở My TasksAnd chuyển task sang Đang làmThen task cập nhật trạng thái thành công |



## 16.4. Test Case - Member gửi review


|  | 
| --- |
| Given Member đang làm taskWhen tick checklistAnd comment kết quảAnd chuyển task sang Chờ reviewThen task xuất hiện ở cột Chờ review của Team Lead |



## 16.5. Test Case - Team Lead approve task


|  | 
| --- |
| Given Team Lead có task Chờ reviewWhen mở taskAnd chọn ApproveAnd chọn score level là ĐạtThen task chuyển sang Hoàn thànhAnd completed_at được ghi nhận |



## 16.6. Test Case - Team Lead yêu cầu sửa


|  | 
| --- |
| Given Team Lead có task Chờ reviewWhen chọn Yêu cầu sửaAnd nhập review noteThen task chuyển sang Cần sửaAnd member thấy task trong nhóm Việc cần sửa |



## 16.7. Test Case - Daily Report


|  | 
| --- |
| Given Member đã loginWhen vào Daily ReportAnd nhập work_summary, blockers, next_planAnd submit reportThen report được lưu thành côngAnd Team Lead thấy report trong danh sách báo cáo ngày |



## 16.8. Test Case - Permission


|  | 
| --- |
| Given Member đã loginWhen cố truy cập trang Team ManagementThen hệ thống từ chối truy cập |



## 16.9. Test Case - Overdue Task


|  | 
| --- |
| Given có task quá hạn chưa hoàn thànhWhen Team Lead vào DashboardThen task hiển thị trong danh sách quá hạn |



# 17. Non-functional Requirements

## Performance

Dashboard load dưới 3 giây với dữ liệu MVP.

Kanban Board load dưới 3 giây.

Filter/search phản hồi nhanh.

Không reload toàn trang khi cập nhật task nếu có thể.

## Security

Người dùng phải đăng nhập mới truy cập được hệ thống.

API phải kiểm tra quyền.

Database phải có rule phân quyền.

Member không được xem/sửa task không thuộc quyền.

Không lộ dữ liệu team khác.

File upload cần kiểm tra loại file và dung lượng.

## Reliability

Dữ liệu task không được mất khi refresh.

Thay đổi trạng thái phải lưu activity log.

Submit form cần có loading/error/success state.

Lỗi phải hiển thị rõ cho người dùng.

## Maintainability

Code chia module rõ ràng.

Component UI tái sử dụng.

Business logic tách khỏi UI nếu có thể.

Type rõ ràng.

Có test E2E cho flow chính.

# 18. Stack kỹ thuật đề xuất


|  | 
| --- |
| Nhóm | Công nghệ |
| Frontend + Backend | Next.js App Router, TypeScript, Tailwind CSS, shadcn/ui |
| Database/Auth | Supabase, PostgreSQL, Supabase Auth, Row Level Security |
| Testing | Playwright |
| Deploy | Vercel, Supabase Cloud |



# 19. Roadmap triển khai

## Phase 1 - Core Task Management

### Chức năng

Auth.

Team.

Project.

Task CRUD.

Assign task.

Kanban Board.

My Tasks.

Comment.

Checklist.

### DOD

Lead tạo/giao task được.

Member thấy task được giao.

Task hiển thị trên Kanban.

Member cập nhật trạng thái được.

Có comment và checklist.

## Phase 2 - Review + Daily Report

### Chức năng

Submit for review.

Approve/reject task.

Review note.

Score level.

Daily Report.

Report theo ngày.

### DOD

Member gửi review được.

Lead approve/yêu cầu sửa được.

Task hoàn thành có đánh giá.

Member gửi daily report được.

Lead xem daily report được.

## Phase 3 - Dashboard + Report

### Chức năng

Dashboard tổng quan.

Task quá hạn.

Task theo member.

Task theo project.

Weekly Report.

Monthly Report.

### DOD

Lead thấy tổng quan team.

Có thống kê task quá hạn.

Có thống kê task hoàn thành.

Có thống kê Chưa đạt/Đạt/Tốt.

Có báo cáo tuần/tháng cơ bản.

## Phase 4 - Notification + Automation

### Chức năng

Notification task mới.

Notification task sắp quá hạn.

Notification task bị trả lại.

Notification task chờ review.

Notification chưa gửi daily report.

### DOD

Member nhận thông báo khi có task mới.

Lead nhận thông báo khi có task chờ review.

Task quá hạn được cảnh báo.

Report chưa gửi được cảnh báo.

# 20. Prompt triển khai cho Vibe Code

Dùng tài liệu BA này làm source of truth để build web app quản lý công việc team.

## 20.1. Yêu cầu build MVP

Không build quá rộng ngoài phạm vi MVP.

Ưu tiên hoàn thiện flow chính trước.

Bắt buộc có phân quyền.

Bắt buộc có Kanban Board.

Bắt buộc có My Tasks.

Bắt buộc có Task Detail.

Bắt buộc có Review/Nghiệm thu.

Bắt buộc có Daily Report.

Bắt buộc có Dashboard cơ bản.

Bắt buộc có E2E test cho các flow chính.

## 20.2. Thứ tự build


|  | 
| --- |
| 1. Database schema2. Auth3. Role/permission4. Team/project5. Task CRUD6. Kanban Board7. My Tasks8. Task Detail9. Review flow10. Daily Report11. Dashboard12. E2E tests |



## 20.3. Rule không được bỏ qua

Task không được hoàn thành nếu chưa được Team Lead/Admin approve.

Task phải có DOD.

Task quá hạn phải được cảnh báo.

Member chỉ thấy/sửa dữ liệu thuộc quyền.

Daily Report phải gắn được với task.

Mọi thay đổi quan trọng của task phải có activity log.

Task hoàn thành phải có đánh giá Chưa đạt/Đạt/Tốt.

# 21. Kết luận BA

Sản phẩm cần được xây như một hệ thống quản lý công việc nội bộ có 5 trụ cột chính:

Giao việc rõ ràng.

Theo dõi tiến độ trực quan.

Cập nhật và báo cáo hằng ngày.

Review/nghiệm thu có tiêu chí.

Dashboard/báo cáo để Team Lead kiểm soát.

MVP không cần nhiều tính năng phức tạp. Chỉ cần làm tốt flow lõi:


|  | 
| --- |
| Lead tạo task→ Giao cho member→ Member làm và cập nhật→ Member gửi review→ Lead nghiệm thu→ Hệ thống tổng hợp report |



Khi các flow này chạy ổn, hệ thống đã đủ giá trị để thay thế quy trình quản lý thủ công và tiếp tục mở rộng ở các phase sau.
