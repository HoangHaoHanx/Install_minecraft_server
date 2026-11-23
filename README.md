# 🎮 Gói Cài Đặt Tự Động Minecraft Server

![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20Linux%20(Debian%2FUbuntu)%20%7C%20macOS-blue?style=for-the-badge)
![Minecraft](https://img.shields.io/badge/Minecraft-1.8.8%20%E2%86%92%2026.3-brightgreen?style=for-the-badge)
![WebPanel](https://img.shields.io/badge/Web%20UI-Crafty%20Controller%204-purple?style=for-the-badge)
![Tunnel](https://img.shields.io/badge/Network-Playit.gg%20Integrated-orange?style=for-the-badge)

Bộ công cụ tự động hóa giúp cài đặt **Minecraft Server (chọn phiên bản từ bản cũ lên tới 26.3)**, **Giao diện Web quản lý (Crafty Controller 4)** và **Playit.gg (chơi cùng bạn bè không cần mở port)** trên cả **Windows**, **Linux (Debian/Ubuntu)** và **macOS** chỉ trong 1 lần chạy.

---

## ✨ Tính năng nổi bật

- **4 Chế độ cài đặt linh hoạt**:
  - `[1]` **Chỉ cài Minecraft Server**: Hỗ trợ menu chọn phiên bản từ các bản cũ (`1.8.8`, `1.12.2`, `1.16.5`, `1.18.2`, `1.19.4`, `1.20.4`, `1.21.4`... lên tới **`26.3`** hoặc tự nhập phiên bản bất kỳ). Tự động cấu hình `eula.txt` và script tối ưu RAM (**Aikar's Flags**).
  - `[2]` **Chỉ cài Giao diện Web quản lý (Crafty Controller 4)**: Quản lý server trên trình duyệt web, hỗ trợ **Tiếng Việt**, đổi phiên bản Minecraft, đổi bản Java và quản lý gói Plugin/Mod trực tiếp trên UI.
  - `[3]` **Chỉ cài Playit.gg**: Tự động tải cả **Playit Agent** độc lập lẫn **Playit Minecraft Plugin** để tạo IP/tên miền Public miễn phí cho bạn bè ở xa vào chơi mà không cần mở port router.
  - `[4]` **Cài đặt TẤT CẢ 1 lượt**: Tự động cài trọn bộ Server MC + Giao diện Web UI + Playit.gg.
- **Chạy ngầm gọn gàng (Silent Install)**: Ẩn toàn bộ dòng lệnh tải/giải nén rối mắt, chỉ hiển thị **đồng hồ đếm thời gian đang cài**, báo hoàn thành và tự động thoát.
- **100% ASCII không dấu trong Script**: Hiển thị chuẩn xác trên mọi cửa sổ CMD, PowerShell và Terminal Linux/macOS, không bao giờ lỗi phông chữ.

---

## 📂 Cấu trúc bộ cài

```text
.
├── install.bat           # File chạy chính cho Windows (Click đúp để chạy)
├── install.ps1           # Script xử lý cài đặt ngầm trên Windows
├── install.sh            # Script cài đặt cho Linux (Debian/Ubuntu) & macOS
├── install_mac.command   # File chạy nhanh bằng click đúp trên macOS
└── README.md             # Tài liệu hướng dẫn chi tiết
```

---

## 🚀 Hướng dẫn chạy bộ cài đặt

### 1. Trên Windows
- **Chạy có Menu chọn**: Click đúp vào file **`install.bat`**, chọn chế độ (`1` – `4`) và chọn phiên bản Minecraft mong muốn.
- **Chạy tự động 100% qua lệnh** *(ví dụ cài tất cả chế độ `4` với phiên bản `26.3`)*:
  ```bat
  install.bat 4 26.3
  ```

### 2. Trên Linux (Debian / Ubuntu)
Mở Terminal hoặc SSH vào server và chạy:
```bash
chmod +x install.sh
./install.sh
```
*(Chạy tự động 100% cài tất cả kèm phiên bản `26.3` không cần hỏi menu)*:
```bash
./install.sh 4 26.3
```

### 3. Trên macOS
- Click đúp vào file **`install_mac.command`** hoặc mở Terminal chạy:
  ```bash
  chmod +x install.sh && ./install.sh
  ```

---

## 🖥️ Hướng dẫn chọn Phiên bản MC, Ngôn ngữ & Java trên Giao diện Web UI

Sau khi cài đặt chế độ `[2]` hoặc `[4]`, mở trình duyệt truy cập **`https://localhost:8443`** (hoặc `https://<IP_Máy_Chủ>:8443`).
> **Mật khẩu mặc định** nằm trong file:
> - **Linux / macOS**: `~/CraftyController/config/default-creds.txt`
> - **Windows**: `C:\Users\<Tên_User>\CraftyController\app\config\default-creds.txt`

### 1. Cách đổi Ngôn ngữ Giao diện UI & Ngôn ngữ Gói Minecraft
- **Đổi ngôn ngữ Web UI sang Tiếng Việt**:
  1. Bấm vào biểu tượng **Avatar / Bánh răng** ở góc trên bên phải màn hình -> chọn **User Settings**.
  2. Tại mục **Language**, chọn **`vi_VN` (Tiếng Việt)** -> bấm **Save**.
- **Đổi ngôn ngữ / Việt hóa Gói Plugin & Server Minecraft**:
  1. Trên thanh công cụ của Server, vào tab **Files (Tệp tin)**.
  2. Mở thư mục `plugins/` -> bấm trực tiếp vào file `config.yml` hoặc `messages.yml` của plugin để chỉnh sửa câu thông báo sang Tiếng Việt ngay trên trình duyệt rồi bấm **Save**.
  3. Để thêm gói tài nguyên Tiếng Việt cho người chơi, dán link gói vào mục `resource-pack=` trong file `server.properties` ngay trên tab **Files**.

### 2. Cách chọn / thay đổi Phiên bản Minecraft (Từ bản cũ lên 26.3) trên Web UI
- **Khi tạo Server mới trên Web UI**:
  1. Tại trang chủ Dashboard, bấm **Create New Server (Tạo Máy Chủ Mới)** -> chọn **Minecraft - Java**.
  2. **Server Type (Loại gói)**: Chọn `Paper` / `Purpur` (nếu dùng Plugin), `Fabric` / `Forge` (nếu dùng Mod), hoặc `Vanilla`.
  3. **Server Version (Phiên bản)**: Chọn phiên bản bất kỳ từ danh sách (từ các bản cũ `1.8.8`, `1.12.2`, `1.16.5` đến các bản mới nhất / `26.3`) -> bấm **Create Server**.
- **Khi muốn đổi phiên bản trên Server đang có sẵn**:
  1. Vào Server cần đổi -> chuyển sang tab **Config (Cấu hình)**.
  2. Tải file `.jar` của phiên bản mới lên qua tab **Files**, hoặc bấm nút **Update Executable (Cập nhật file thực thi)** trong tab **Config** và chọn file `.jar` phiên bản mới.

### 3. Cách chọn Phiên bản Java trên Giao diện Web UI
Mỗi đời phiên bản Minecraft yêu cầu một bản Java khác nhau. Để đổi Java trên Web UI:
1. Vào Server của bạn trên Web UI -> chọn tab **Config (Cấu hình)**.
2. Tìm mục **Java Selection / Đường dẫn Java (Java Path)**:
   - Chọn bản Java có sẵn trong menu thả xuống, hoặc chỉ định đường dẫn tới bộ `java` tương ứng:
     - **Minecraft 1.8.8 – 1.16.5**: Dùng **Java 8** (hoặc Java 11).
     - **Minecraft 1.17 – 1.20.4**: Dùng **Java 17**.
     - **Minecraft 1.20.5 trở lên (đến 26.3)**: Dùng **Java 21+**.
3. Tại mục **Memory Allocation (Phân bổ RAM)** ngay bên dưới, chỉnh mức RAM tối thiểu (`Min`) và tối đa (`Max`) rồi bấm **Save**.

---

## 🌐 Hướng dẫn dùng Playit.gg để chơi với bạn bè (Không cần mở Port)

Gói cài đặt (chế độ `[3]` và `[4]`) đã tự động cài đặt sẵn **2 cách** kết nối Playit.gg:

### Cách 1: Chạy trực tiếp file Tunnel độc lập (Khuyên dùng - Hỗ trợ mọi loại Server)
- **Trên Windows**: Chạy file `C:\Users\<Tên_User>\MinecraftServer\start_playit.bat`.
- **Trên Linux / macOS**: Chạy lệnh `~/MinecraftServer/start_playit.sh`.
- **Thiết lập lần đầu**:
  1. Cửa sổ sẽ hiện ra một đường link dạng `https://playit.gg/claim/xxxxxx`.
  2. Copy link đó mở trên trình duyệt -> đăng nhập tài khoản [playit.gg](https://playit.gg) -> bấm **Add Agent**.
  3. Chọn **Add Tunnel** -> Tunnel Type chọn **Minecraft Java** (Local Port giữ nguyên `25565`) -> bấm **Create**.
  4. Hệ thống sẽ cấp cho bạn một địa chỉ IP/Domain (ví dụ: `xxx.gl.joinmc.link`). Gửi địa chỉ này cho bạn bè để vào thẳng server!

### Cách 2: Dùng thông qua Plugin tích hợp sẵn trong Server
- File `playit-minecraft-plugin.jar` đã được tự động tải vào thư mục `~/MinecraftServer/plugins/`.
- Khi bạn bật Minecraft Server (`start.bat` hoặc `start.sh`), nhìn vào cửa sổ Console của server sẽ thấy đường link `https://playit.gg/mc/xxxxxx` để kích hoạt nhanh ngay trong game.

---

## ⚠️ Những lưu ý quan trọng

1. **Chọn đúng bản Java theo phiên bản Minecraft**:
   - Nếu bạn chọn cài các bản cũ như `1.8.8` hoặc `1.12.2` mà chạy bằng Java 21 có thể một số plugin cũ không tương thích; hãy chọn lại Java 8 hoặc Java 17 trong mục **Config** trên giao diện Web UI.
2. **Hạ phiên bản (Downgrade World)**:
   - Không nên mở bản đồ (World) đã tạo ở phiên bản cao (như `1.21.4` / `26.3`) bằng phiên bản thấp hơn (như `1.16.5` / `1.12.2`) vì sẽ gây lỗi chunk. Hãy sao lưu (Backup) hoặc tạo thư mục `world` mới trước khi hạ phiên bản.
3. **Dung lượng RAM cấp cho Server**:
   - Mặc định bộ cài cấu hình `4GB RAM` (`-Xms4G -Xmx4G`). Nếu máy chủ của bạn có ít hoặc nhiều RAM hơn, hãy sửa thông số này trong `start.bat` / `start.sh` hoặc chỉnh trực tiếp trên giao diện Web UI (luôn chừa lại ít nhất 1.5GB – 2GB RAM cho hệ điều hành).
4. **Chế độ tài khoản Crack / Bản quyền (`online-mode`)**:
   - Mặc định Minecraft để `online-mode=true` (chỉ tài khoản bản quyền mới vào được). Nếu bạn bè dùng launcher miễn phí (TLauncher,Legacy, Prism...), hãy vào file `server.properties` đổi thành `online-mode=false` rồi khởi động lại server.

---

## 👤 Thông tin Người làm / Người sáng tạo & Trách nhiệm

- **Người làm & Sáng tạo bộ gói tích hợp**: Chủ sở hữu kho lưu trữ (Repository Owner / Creator).
- **Thành phần phần mềm tích hợp**: PaperMC, Adoptium OpenJDK, Crafty Controller 4, Playit.gg.
- **Quy định & Không miễn trừ trách nhiệm**:
  - Người tạo và phát triển bộ công cụ cũng như người triển khai/vận hành máy chủ **cam kết chịu trách nhiệm** về việc sử dụng, cấu hình và quản trị máy chủ của mình theo đúng quy định pháp luật hiện hành và Điều khoản người dùng cuối của Mojang ([Minecraft EULA](https://www.minecraft.net/en-us/eula)).
  - **Không miễn trừ trách nhiệm** đối với các hành vi cố tình sử dụng bộ công cụ vào mục đích vi phạm pháp luật, phát tán mã độc, tấn công mạng hoặc xâm phạm quyền lợi hợp pháp của bên thứ ba. Mọi cá nhân/tổ chức sử dụng hoặc phân phối lại phải giữ nguyên thông tin tác giả và chịu hoàn toàn trách nhiệm trước pháp luật về hoạt động máy chủ do mình vận hành.
