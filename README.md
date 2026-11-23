# 🎮 Gói Cài Đặt Tự Động Minecraft Server & Web Panel

![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20Linux%20(Debian%2FUbuntu)%20%7C%20macOS-blue?style=for-the-badge)
![Minecraft](https://img.shields.io/badge/Minecraft-1.8.8%20%E2%9E%94%2026.3-brightgreen?style=for-the-badge)
![Java](https://img.shields.io/badge/Java-Auto%20(Java%208%20%7C%2017%20%7C%2021%2B)-orange?style=for-the-badge)
![WebUI](https://img.shields.io/badge/Web%20UI-Crafty%20Controller%204%20(Ti%E1%BA%BFng%20Vi%E1%BB%87t)-purple?style=for-the-badge)

Bộ công cụ tự động hóa cài đặt **Minecraft Server** (hỗ trợ chọn mọi phiên bản từ cổ điển **`1.8.8`**, **`1.12.2`**, **`1.16.5`**, **`1.20.4`**, **`1.21.4`** lên tới **`26.1`**, **`26.2`**, **`26.3`**) kết hợp cùng **Giao diện Web quản lý (Crafty Controller 4)** trên cả **Windows**, **Linux (Debian/Ubuntu)** và **macOS**.

---

## ✨ Tính năng nổi bật

1. **3 Chế độ cài đặt linh hoạt**:
   - `[1]` **Chỉ cài Minecraft Server**: Tự chọn phiên bản Minecraft từ bản cũ đến **`26.3`**, tự động nhận diện và cài đúng bản **Java (`8`, `17` hoặc `21+`)** tương thích, tải `server.jar` (PaperMC / Mojang Official), tạo sẵn `eula.txt` và file khởi động tối ưu RAM (**Aikar's Flags**).
   - `[2]` **Chỉ cài Giao diện Web quản lý (Crafty Controller 4)**: Quản lý toàn bộ server trên trình duyệt web, hỗ trợ **Tiếng Việt**, đổi phiên bản Minecraft, chọn phiên bản Java và tải gói Plugin/Mod/Datapack trực tiếp trên giao diện UI.
   - `[3]` **Cài đặt TẤT CẢ 1 lượt**: Tự động cài đặt trọn bộ cả Minecraft Server theo phiên bản đã chọn lẫn Giao diện Web quản lý.
2. **Menu chọn phiên bản Minecraft đa dạng (Cũ ➔ `26.3`)**:
   - Có sẵn danh sách chọn nhanh từ `1.8.8` đến `26.3`, chế độ tự lấy bản mới nhất (`latest`) hoặc **tự nhập bất kỳ phiên bản nào** bạn muốn.
3. **Chạy ngầm 100% (Silent Install + Live Timer)**:
   - Ẩn toàn bộ quá trình tải/giải nén rối mắt, chỉ hiển thị duy nhất **bộ đếm thời gian đang cài đặt**, báo hoàn thành và **tự động thoát** khi xong.
4. **Chuẩn 100% ASCII không dấu**:
   - Toàn bộ script dùng Tiếng Việt không dấu, đảm bảo **không bao giờ lỗi phông chữ** trên mọi cửa sổ CMD, PowerShell hay Terminal Linux Debian / macOS.

---

## 📂 Cấu trúc bộ cài

```text
.
├── install.bat           # File chạy chính cho Windows (Click đúp để chạy)
├── install.ps1           # Script xử lý cài đặt ngầm & chọn phiên bản trên Windows
├── install.sh            # Script cài đặt & chọn phiên bản cho Linux (Debian/Ubuntu) & macOS
├── install_mac.command   # File chạy nhanh bằng click đúp trên macOS
└── README.md             # Tài liệu hướng dẫn chi tiết
```

---

## 🚀 Hướng dẫn cài đặt & Chọn phiên bản Minecraft khi cài

### 1. Trên Windows
- **Cách 1 (Chọn qua Menu)**: Click đúp vào **`install.bat`** ➔ Chọn chế độ (`1`, `2` hoặc `3`) ➔ Chọn phiên bản Minecraft từ danh sách (`1` ➔ `12`, mặc định `10` là bản **`26.3`**).
- **Cách 2 (Chạy thẳng bằng lệnh không cần hỏi Menu)**:
  ```bat
  :: Cài tất cả (chế độ 3) với phiên bản Minecraft 26.3
  install.bat 3 26.3

  :: Chỉ cài Server MC (chế độ 1) với phiên bản 1.12.2
  install.bat 1 1.12.2
  ```

### 2. Trên Linux (Debian / Ubuntu)
Mở Terminal hoặc SSH vào server và chạy:
```bash
chmod +x install.sh
./install.sh
```
*(Hoặc truyền thẳng chế độ và phiên bản để cài tự động 100%)*:
```bash
# Cài tất cả (chế độ 3) với phiên bản 26.3
./install.sh 3 26.3

# Chỉ cài Server MC (chế độ 1) với phiên bản 1.20.4
./install.sh 1 1.20.4
```

### 3. Trên macOS
Click đúp vào **`install_mac.command`** hoặc mở Terminal chạy:
```bash
chmod +x install.sh && ./install.sh
```

---

## 🖥️ Màn hình Menu chọn phiên bản khi chạy

```text
==========================================================
   GOI CAI DAT TU DONG MINECRAFT SERVER & WEB PANEL
   He dieu hanh phat hien: Linux (Debian/Ubuntu)
==========================================================

  [1] Chi cai Minecraft Server (Chon phien ban tu cu -> 26.3)
  [2] Chi cai Giao dien Web quan ly (Crafty Controller - Tieng Viet)
  [3] Cai dat TAT CA (1 luot ca Server MC + Giao dien Web)

>> Chon che do cai dat (1 / 2 / 3): 3

----------------------------------------------------------
   CHON PHIEN BAN MINECRAFT SERVER (TU BAN CU -> 26.3)
----------------------------------------------------------
  [1]  1.8.8    (PvP co dien - Java 8)
  [2]  1.12.2   (Mod / Server co dien - Java 8)
  [3]  1.16.5   (Nether Update - Java 17)
  [4]  1.18.2   (Caves & Cliffs - Java 17)
  [5]  1.19.4   (Wild Update - Java 17)
  [6]  1.20.4   (Trails & Tales - Java 17/21)
  [7]  1.21.4   (Tricky Trials - Java 21)
  [8]  26.1     (Minecraft 26 Drop 1 - Java 21+)
  [9]  26.2     (Minecraft 26 Drop 2 - Java 21+)
  [10] 26.3     (Minecraft 26.3 Moi nhat - Java 21+)
  [11] Tu dong lay ban moi nhat tren he thong (Auto Latest)
  [12] Tu nhap phien ban bat ky (VD: 1.7.10, 1.17.1, 25.4, 26.3...)

>> Chon phien ban (1-12, mac dinh 10 = 26.3): 10

[..] Dang cai dat tu dong... Thoi gian: 01:12
[OK] Cai dat HOAN THANH! (Tong thoi gian: 01:12)
```

---

## 🌐 Hướng dẫn chọn Phiên bản MC, Ngôn ngữ & Java trên Giao diện UI Web

Sau khi cài xong Giao diện Web, mở trình duyệt truy cập **`https://localhost:8443`** (hoặc `https://<IP_Máy_Chủ>:8443`).
*(Lấy tài khoản & mật khẩu mặc định trong file `~/CraftyController/config/default-creds.txt` trên Linux/Mac hoặc `%USERPROFILE%\CraftyController\app\config\default-creds.txt` trên Windows).*

### 1. Cách chọn Ngôn ngữ (Giao diện UI & Ngôn ngữ trong Minecraft)
- **Đổi ngôn ngữ Giao diện Web UI sang Tiếng Việt**:
  1. Đăng nhập vào trang quản trị Web ➔ Bấm vào biểu tượng **Avatar / Bánh răng** ở góc trên bên phải ➔ chọn **User Settings**.
  2. Tại mục **Language**, chọn **`vi_VN` (Tiếng Việt)** ➔ Bấm **Save** và tải lại trang.
- **Đổi ngôn ngữ gói / Việt hóa trong Server Minecraft**:
  1. Trên giao diện UI, chọn Server của bạn ➔ vào tab **Files (Quản lý tệp)**.
  2. Để Việt hóa các thông báo Plugin (như *EssentialsX*, *AuthMe*...): Mở thư mục `plugins/<Tên_Plugin>/config.yml` (hoặc `messages.yml`), chỉnh mã ngôn ngữ thành `locale: vi` hoặc sửa trực tiếp câu chữ Tiếng Việt ngay trên trình soạn thảo của Web UI rồi bấm **Save**.
  3. Để bắt buộc gói ngôn ngữ/tài nguyên Tiếng Việt cho người chơi: Mở file `server.properties` ngay trong tab **Files**, điền link gói Resource Pack Tiếng Việt vào dòng `resource-pack=` và đặt `require-resource-pack=true`.

### 2. Cách chọn & thay đổi Phiên bản Minecraft trên Giao diện UI
- **Khi tạo Server mới trên Web UI**:
  1. Tại bảng điều khiển (Dashboard), bấm nút **Create New Server (Tạo Máy Chủ Mới)**.
  2. Chọn **Minecraft - Java** (hoặc **Minecraft - Bedrock**).
  3. Tại mục **Server Type (Loại gói Server)**: Chọn `Paper`, `Purpur` (chạy Plugin), `Fabric`, `Forge` (chạy Mod), hoặc `Vanilla` (nguyên bản).
  4. Tại mục **Server Version (Phiên bản)**: Chọn phiên bản bất kỳ từ các bản cũ (`1.8.8`, `1.12.2`, `1.16.5`...) lên tới **`26.1`**, **`26.2`**, **`26.3`** ➔ Bấm **Create Server**, hệ thống sẽ tự tải đúng file `.jar` về.
- **Khi muốn đổi phiên bản cho Server đang có sẵn**:
  1. Bấm vào Server cần đổi ➔ chọn tab **Files (Quản lý tệp)** ➔ tải file `.jar` của phiên bản mới lên (hoặc dùng nút **Update Executable** trong tab **Config**).
  2. Vào tab **Config (Cấu hình)** ➔ mục **Server Executable** chọn tên file `.jar` của phiên bản mới ➔ Bấm **Save** và khởi động lại Server.

### 3. Cách chọn Phiên bản Java trên Giao diện UI
Mỗi đời phiên bản Minecraft yêu cầu một phiên bản Java khác nhau để chạy ổn định:

| Phiên bản Minecraft | Phiên bản Java bắt buộc / khuyên dùng |
| :--- | :--- |
| **`1.7.10` ➔ `1.16.5`** | **Java 8** (`temurin-8-jdk` / `java8`) *(1.16.5 có thể chạy Java 11/17)* |
| **`1.17` ➔ `1.20.4`** | **Java 17** (`temurin-17-jdk` / `java17`) |
| **`1.20.5` ➔ `1.21.x` ➔ `26.3`** | **Java 21+** (`temurin-21-jdk` / `java21`) |

- **Cách chọn đúng Java trên Giao diện Web UI**:
  1. Chọn Server của bạn trên Web UI ➔ vào tab **Config (Cấu hình)**.
  2. Tìm mục **Java Selection / Java Path (Đường dẫn thực thi Java)**.
  3. Chọn phiên bản Java tương ứng trong menu thả xuống (`Java 8`, `Java 17`, `Java 21`), hoặc trỏ trực tiếp tới file thực thi Java đã được bộ cài tải sẵn:
     - Trên Windows: `C:\Users\<Tên_User>\MinecraftServer\java21\...\bin\java.exe` (hoặc `java8`, `java17`).
     - Trên Linux Debian: `/usr/lib/jvm/temurin-21-jdk-amd64/bin/java` (hoặc `temurin-17-jdk`, `temurin-8-jdk`).
  4. Chỉnh dung lượng RAM tại mục **Memory Allocation (Min / Max RAM)** ➔ Bấm **Save**.

---

## ⚠️ Những lưu ý quan trọng

1. **Dung lượng RAM cấp cho Server**:
   - Mặc định bộ cài cấu hình mức `4GB RAM` (`-Xms4G -Xmx4G`). Hãy luôn chừa lại tối thiểu **1.5GB – 2GB RAM trống** cho hệ điều hành để máy chủ không bị treo hoặc tràn bộ nhớ (OOM).
2. **Không hạ cấp (Downgrade) bản đồ (World)**:
   - Bản đồ (`world`) đã chạy ở phiên bản cao (ví dụ `26.3` hoặc `1.21.4`) **không thể** mở trực tiếp ở phiên bản thấp hơn (như `1.16.5` hay `1.12.2`) nếu không xóa/tạo mới thư mục `world`. Hãy luôn **Backup (Sao lưu)** trong tab **Backups** của Web UI trước khi đổi phiên bản.
3. **Mở cổng kết nối (Port & Firewall)**:
   - Cổng mặc định của Minecraft Java là **`25565`** (`TCP/UDP`) và cổng Giao diện Web UI là **`8443`** (`TCP`).
   - Nếu muốn bạn bè ngoài mạng Internet vào chơi mà nhà mạng bị chặn CGNAT (không mở port modem được), khuyên dùng plugin hoặc ứng dụng **[playit.gg](https://playit.gg/)** hoặc **Tailscale**.
4. **Đổi mật khẩu Web UI ngay lần đầu đăng nhập**:
   - Sau khi đăng nhập bằng mật khẩu mặc định trong `default-creds.txt`, hãy vào **User Settings** để đổi mật khẩu quản trị ngay lập tức nhằm đảm bảo an toàn cho máy chủ.
5. **Chế độ tài khoản (Bản quyền & Crack)**:
   - Mặc định Minecraft bật `online-mode=true` (chỉ tài khoản bản quyền mới vào được). Nếu chơi cùng bạn bè dùng launcher miễn phí (TLauncher, Legacy Launcher, Prism...), hãy vào `server.properties` đổi thành **`online-mode=false`** và cài thêm plugin đăng nhập như **AuthMe Reloaded**.

---

## 👤 Thông tin Người làm & Người sáng tạo (Author & Creator)

- **Người lên ý tưởng, thiết kế & sáng tạo dự án**: Chủ sở hữu kho lưu trữ (Repository Owner / Project Creator).
- **Mục đích phát triển**: Xây dựng bộ công cụ tự động hóa giúp cộng đồng người chơi Minecraft tại Việt Nam dễ dàng tự dựng và quản lý máy chủ tại nhà (Home Server) trên Windows, macOS và Linux Debian mà không cần thao tác lệnh phức tạp.

---

## ⚖️ Tuyên bố Trách nhiệm & Cam kết (Không miễn trừ trách nhiệm)

Khác với các phần mềm nguồn mở thông thường chỉ đính kèm điều khoản phủi bỏ hoàn toàn trách nhiệm, **Người làm & Người sáng tạo bộ công cụ này cam kết chịu trách nhiệm trực tiếp** đối với mã nguồn do mình phát hành:

1. **Cam kết minh bạch & an toàn mã nguồn**:
   - Người tạo lập **chịu hoàn toàn trách nhiệm** đảm bảo toàn bộ mã nguồn trong gói (`install.bat`, `install.ps1`, `install.sh`, `install_mac.command`) là minh bạch, **không chứa mã độc, không thu thập dữ liệu trái phép, không cài cắm cửa hậu (backdoor)**.
   - Mọi gói phần mềm được tải về trong script đều lấy trực tiếp từ nguồn chính thức của nhà phát hành (**Adoptium Temurin OpenJDK**, **PaperMC API**, **Mojang Official**, **Docker Official**, **Crafty Controller GitLab**).
2. **Trách nhiệm hỗ trợ & khắc phục lỗi**:
   - Người làm và người sáng tạo **không miễn trừ trách nhiệm** đối với các lỗi phát sinh từ chính logic của bộ script cài đặt này. Nếu bộ cài đặt gây lỗi cấu hình hoặc không hoạt động đúng như mô tả trên các hệ điều hành được hỗ trợ (Windows, Linux Debian/Ubuntu, macOS), tác giả cam kết tiếp nhận phản hồi qua mục **Issues** trên GitHub, trực tiếp kiểm tra, hỗ trợ người dùng khắc phục và phát hành bản vá lỗi.
3. **Phạm vi phối hợp cùng người dùng**:
   - Người dùng cần tuân thủ điều khoản sử dụng [Minecraft EULA của Mojang](https://www.minecraft.net/en-us/eula) và thực hiện đúng các mục trong phần **Những lưu ý quan trọng** (như sao lưu dữ liệu `world` trước khi đổi phiên bản và đổi mật khẩu quản trị Web UI). Mọi vấn đề kỹ thuật trong quá trình vận hành đều được người sáng tạo đồng hành hỗ trợ giải quyết.
