# 🎮 Gói Cài Đặt Tự Động Minecraft Server & Web Panel (Multi-OS)

![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20Linux%20(Debian%2FUbuntu)%20%7C%20macOS-blue?style=for-the-badge)
![Java](https://img.shields.io/badge/Java-OpenJDK%2021-orange?style=for-the-badge)
![Minecraft](https://img.shields.io/badge/Server-PaperMC%20%2B%20Crafty%204-brightgreen?style=for-the-badge)

Bộ công cụ tự động hóa giúp cài đặt **Minecraft Server (PaperMC + Java 21)** và **Giao diện Web quản lý (Crafty Controller 4)** trên cả **Windows**, **Linux (Debian/Ubuntu)** và **macOS** chỉ với 1 lần chạy.

---

## ✨ Tính năng nổi bật

- **3 Chế độ cài đặt linh hoạt**:
  - `[1]` **Chỉ cài Minecraft Server**: Tự động tải Java 21, tải bản PaperMC mới nhất qua API chính thức, tự động tạo `eula.txt` và script khởi động tối ưu RAM (**Aikar's Flags**).
  - `[2]` **Chỉ cài Giao diện Web quản lý (Crafty Controller 4)**: Quản lý server trên trình duyệt web, hỗ trợ **Tiếng Việt**, tự động tải/đổi phiên bản Minecraft (Vanilla, Paper, Purpur, Fabric, Forge...) và quản lý gói Plugin/Mod/Datapack trực tiếp trên web.
  - `[3]` **Cài đặt tất cả 1 lượt**: Tự động cài đặt trọn bộ cả Server lẫn Giao diện Web.
- **Chạy ngầm gọn gàng (Silent Install)**: Ẩn toàn bộ dòng lệnh tải/giải nén rối mắt, chỉ hiển thị **đồng hồ đếm thời gian đang cài**, báo hoàn thành và tự động thoát khi xong.
- **100% ASCII không dấu**: Không bao giờ bị lỗi font chữ trên mọi cửa sổ CMD, PowerShell hay Terminal Linux/macOS.

---

## 📂 Cấu trúc bộ cài

```text
.
├── install.bat           # File chạy chính cho Windows (Click đúp để chạy)
├── install.ps1           # Script xử lý cài đặt ngầm trên Windows
├── install.sh            # Script cài đặt cho Linux (Debian/Ubuntu) & macOS
├── install_mac.command   # File chạy nhanh bằng click đúp trên macOS
└── README.md             # Tài liệu hướng dẫn sử dụng
```

---

## 🚀 Hướng dẫn cài đặt

### 1. Trên Windows
- **Cách 1 (Menu chọn)**: Click đúp trực tiếp vào file **`install.bat`**, nhập `1`, `2` hoặc `3` rồi nhấn `Enter`.
- **Cách 2 (Tự động 100% không cần bấm chọn)**: Mở CMD/PowerShell tại thư mục và chạy:
  ```bat
  install.bat 3
  ```

### 2. Trên Linux (Debian / Ubuntu)
Mở Terminal hoặc SSH vào server và chạy:
```bash
chmod +x install.sh
./install.sh
```
*(Nếu muốn cài tự động toàn bộ chế độ `[3]` không cần hỏi menu)*:
```bash
./install.sh 3
```

### 3. Trên macOS
- **Cách 1**: Click đúp vào file **`install_mac.command`**.
- **Cách 2**: Mở Terminal tại thư mục và chạy:
  ```bash
  chmod +x install.sh && ./install.sh
  ```

---

## 🖥️ Màn hình hiển thị khi chạy

```text
==========================================================
   GOI CAI DAT TU DONG MINECRAFT SERVER & WEB PANEL
   He dieu hanh phat hien: Linux (Debian/Ubuntu)
==========================================================

  [1] Chi cai Minecraft Server (Java 21 + PaperMC toi uu)
  [2] Chi cai Giao dien Web quan ly (Crafty Controller - Tieng Viet)
  [3] Cai dat TAT CA (1 luot ca Server MC + Giao dien Web)

>> Chon che do cai dat (1 / 2 / 3): 3

[..] Dang cai dat tu dong... Thoi gian: 01:15
[OK] Cai dat HOAN THANH! (Tong thoi gian: 01:15)
----------------------------------------------------------
 * Thu muc Server MC : /home/user/MinecraftServer (Chay: /home/user/MinecraftServer/start.sh)
 * Giao dien Web     : https://localhost:8443 (Tai khoan o: /home/user/CraftyController/config/default-creds.txt)
----------------------------------------------------------
```

---

## 🛠️ Hướng dẫn sau khi cài đặt

### 1. Khởi động Minecraft Server độc lập (Chế độ 1 & 3)
- **Trên Windows**: Vào thư mục `C:\Users\<Tên_User>\MinecraftServer` và chạy **`start.bat`**.
- **Trên Linux / macOS**:
  ```bash
  ~/MinecraftServer/start.sh
  ```

### 2. Sử dụng Giao diện Web quản lý (Chế độ 2 & 3)
1. Mở trình duyệt và truy cập: **`https://localhost:8443`** (hoặc `https://<IP_Máy_Chủ>:8443`).
   *(Nếu trình duyệt báo cảnh báo chứng chỉ tự ký HTTPS nội bộ, bấm **Advanced / Nâng cao** -> **Proceed / Tiếp tục truy cập**).*
2. Xem tài khoản & mật khẩu đăng nhập mặc định tại file:
   - **Linux / macOS**: `~/CraftyController/config/default-creds.txt`
   - **Windows**: `C:\Users\<Tên_User>\CraftyController\app\config\default-creds.txt`
3. **Đổi sang Tiếng Việt**: Vào **User Settings** (góc trên bên phải) -> mục **Language** chọn **`vi_VN`**.
4. **Đổi phiên bản & Cài gói Mod/Plugin**:
   - Bấm **Create New Server** để chọn loại server (`Paper`, `Purpur`, `Fabric`, `Forge`, `Vanilla`...) và phiên bản Minecraft bất kỳ.
   - Vào mục **Files** trên web để tải trực tiếp file `.jar` (Plugin/Mod) hoặc chỉnh sửa file cấu hình.

---

## 🔍 Kiểm tra Log khi cần
Toàn bộ nhật ký cài đặt ngầm được lưu tự động tại:
- **Linux / macOS**: `/tmp/mc_auto_install.log`
- **Windows**: `%TEMP%\mc_auto_install.log`
