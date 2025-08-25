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

Then reboot:

```bash
sudo reboot
```

Check network interfaces:

```bash
nmcli device
```

You should see your Archer T4U device (e.g., `wlan0`, `wlx...`, etc.).

---

## 🛠 Fix After Kernel Update

If Wi-Fi stops working after a kernel upgrade:

```bash
./fix_driver.sh
```

This will:

* Remove old dkms version
* Rebuild and install the driver
* Verify with `lsmod | grep 88x2bu` and `nmcli device`

---

## 🔁 Optional: Auto-Fix on Boot Using systemd

Enable the systemd service for automatic driver reinstallation if needed:

```bash
sudo cp systemd/fix-archer-t4u.service /etc/systemd/system/
sudo systemctl enable fix-archer-t4u.service
```

It will run the fix script automatically after boot if needed.

---

## 📁 Repo Structure

| File                             | Purpose                                       |
| -------------------------------- | --------------------------------------------- |
| `install.sh`                     | Installs driver from source with dependencies |
| `fix_driver.sh`                  | Repairs the driver (after kernel update)      |
| `systemd/fix-archer-t4u.service` | Optional systemd unit to auto-repair on boot  |

---

## 💻 Compatibility & Notes

* ✅ Tested on **Raspberry Pi 5** running **Ubuntu 24.04 LTS** with **Linux Kernel 6.8+**
* ✅ Works on **any Ubuntu version or derivative**
* ✅ Works on other modern **Linux distros** that support DKMS and gcc
* ❌ Secure Boot is **not supported** (module signing not available)

To ensure compatibility:

* Your kernel headers should be installed.
* GCC should match the kernel's compile version.
* `mokutil` and `kmodsign` are optional but help in secure systems.

---

## 🤝 Contributions Welcome

Feel free to open pull requests or issues to support more distros, improve installation scripts, or optimize driver performance.

---

## 🧑‍💻 Author

**Saif Alshiekh**
GitHub: [github.com/saif-alshiekh](https://github.com/saif-alshiekh)

---

### Credits

This driver and its logic are based on the fantastic work by [morrownr](https://github.com/morrownr/88x2bu-20210702), adapted and simplified for Raspberry Pi 5 and modern Ubuntu use.

