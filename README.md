Absolutely! Here's the entire `README.md` in **pure Markdown format**, ready for you to paste directly into your repo:


# Archer T4U Linux Driver Installer (RTL88x2BU)

This project provides an **easy-to-use setup** for getting the TP-Link Archer T4U (and other RTL88x2BU-based adapters) working reliably on **Linux** systems, including **Raspberry Pi 5**, **Ubuntu**, and other distros.

It includes:
- ✅ A one-line installer for the driver
- 🔁 A fix script to recover after kernel updates
- 🛡️ An optional systemd service to auto-repair on boot

---

## ✅ Supported Devices

- TP-Link Archer T4U (V2 / V3)
- BrosTrend AC1200
- Edimax AC1200
- Any USB adapter based on the **Realtek RTL88x2BU** chipset

---

## 🚀 Quick Start

```bash
git clone https://github.com/saif-alshiekh/archer-t4u-linux-driver.git
cd archer-t4u-linux-driver
chmod +x install.sh
./install.sh
````

After it installs, **reboot**:

```bash
sudo reboot
```

Then run:

```bash
nmcli device
```

You should now see your Archer T4U Wi-Fi interface (`wlan0` or `wlx...`).

---

## 🛠 Fix After Kernel Update

If the Wi-Fi stops working after a kernel upgrade:

```bash
./fix_driver.sh
```

---

## 🔁 Optional: Auto-Fix on Boot Using systemd

1. Copy the service to systemd:

   ```bash
   sudo cp systemd/fix-archer.service /etc/systemd/system/
   ```

2. Enable the service:

   ```bash
   sudo systemctl enable fix-archer.service
   ```

3. On next boot, if the driver is missing, it will be reinstalled automatically.

---

## 📁 Repo Structure

| File                         | Purpose                                       |
| ---------------------------- | --------------------------------------------- |
| `install.sh`                 | Installs driver from source with dependencies |
| `fix_driver.sh`              | Repairs the driver (after kernel update)      |
| `systemd/fix-archer.service` | Optional systemd unit to auto-repair on boot  |

---

## 💡 Notes

* Based on the awesome driver repo by [morrownr](https://github.com/morrownr/88x2bu-20210702).
* This project simplifies installation and long-term maintenance for casual users.
* Tested on: **Ubuntu 24.04**, **Raspberry Pi 5**, **Linux Kernel 6.8+**

---

## 🤝 Contributions Welcome

If you have improvements, fixes, or support for other distros — feel free to open a PR!

---

## 🧑‍💻 Author

**Saif Alshiekh**
🌐 [github.com/saif-alshiekh](https://github.com/saif-alshiekh)
