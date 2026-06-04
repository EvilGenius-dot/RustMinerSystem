<div align="center">

<img src="../../image/_logo.svg" alt="RustMinerSystem" width="520">

<p><strong>An end-to-end management solution for miners, mining farms, and pool nodes</strong></p>

<p>
  <a href="https://github.com/EvilGenius-dot/RustMinerSystem/releases">
    <img src="https://img.shields.io/github/v/tag/EvilGenius-dot/RustMinerSystem?label=version&color=0EA5E9" alt="Version">
  </a>
  <a href="../../LICENSE">
    <img src="https://img.shields.io/badge/license-MIT-22C55E" alt="License">
  </a>
  <a href="https://github.com/EvilGenius-dot/RustMinerSystem">
    <img src="https://img.shields.io/github/stars/EvilGenius-dot/RustMinerSystem?style=flat&color=F59E0B" alt="GitHub stars">
  </a>
  <a href="https://t.me/rustkt">
    <img src="https://img.shields.io/badge/Telegram-rustkt-2CA5E0?logo=telegram&logoColor=white" alt="Telegram">
  </a>
  <a href="https://discord.gg/xpjRnv8wpX">
    <img src="https://img.shields.io/badge/Discord-Join-5865F2?logo=discord&logoColor=white" alt="Discord">
  </a>
</p>

<p>
  <a href="http://minerproxy.org/">Website</a>
  ·
  <a href="https://rustminersystem.gitbook.io/rustminersystem">Documentation</a>
  ·
  <a href="https://github.com/EvilGenius-dot/RMS">RMS local client</a>
  ·
  <a href="https://github.com/EvilGenius-dot/RustMinerSystem/releases">Changelog</a>
  ·
  <a href="https://rustminersystem.gitbook.io/rustminersystem/guan-yu/lian-xi-wo-men">Contact & Customization</a>
</p>

<p>
  <a href="https://github.com/EvilGenius-dot/RustMinerSystem">简体中文</a>
  ·
  English
  ·
  <a href="https://github.com/EvilGenius-dot/RustMinerSystem/tree/main/Readme/ru">Русский язык</a>
</p>

<img src="../../image/rustminer-product-demo.webp" alt="RustMinerSystem product preview" width="920">

</div>

## What is RustMinerSystem

RustMinerSystem can be used as a traditional mining pool proxy, or it can turn your device into a real mining pool node. It is designed for miners, mining farms, pool nodes, and multi-line operation scenarios, helping users manage access, forwarding, configuration, fee settings, and status monitoring.

The companion local security client [RMS](https://github.com/EvilGenius-dot/RMS) can encrypt and compress transmitted data, reducing bandwidth pressure while improving link security. Before using RustMinerSystem, please read the [Service Agreement](https://rustminersystem.gitbook.io/rustminersystem/guan-yu/fu-wu-xie-yi).

## Core Features

| Feature | Description |
| --- | --- |
| Traditional pool proxy | Connect miners to traditional mining pools and manage connections, ports, and forwarding policies in one place. |
| Self-hosted pool node | Turn a device into a mining pool node for node operators, mining farms, and custom business scenarios. |
| Custom fee rate | Configure fee rates according to your business needs to improve site or node operation revenue. |
| Secure transmission | Use the RMS local client for encryption, compression, and link protection. |
| Multi-platform deployment | Provides Linux, Windows, ARM, and ARMV7 installation packages or scripts. |
| Web management console | Access the management console through a browser to view running status, ports, miners, and related data. |

## Quick Start

> [!IMPORTANT]
> The default admin account is `qzpm19kkx`, and the default password is `xloqslz913`. After the first login, please change the account password and Web access port as soon as possible.

### Linux

Ubuntu is recommended. Run the following command to open the installation toolkit menu:

```sh
bash <(curl -s -L https://github.com/EvilGenius-dot/RustMinerSystem/raw/main/install.sh)
```

If GitHub is slow or unavailable in your region, try the backup installation address:

```sh
bash <(curl -s -L -k https://rustminersystem.com/EvilGenius-dot/RustMinerSystem/raw/main/install.sh)
```

ARM:

```sh
bash <(curl -s -L https://github.com/EvilGenius-dot/RustMinerSystem/raw/main/arm-install.sh)
```

ARMV7:

```sh
bash <(curl -s -L https://github.com/EvilGenius-dot/RustMinerSystem/raw/main/armv7-install.sh)
```

After the toolkit starts, follow the menu prompts to install, update, start, stop, modify ports, configure auto-start, and perform other operations.

<p align="center">
  <img src="../../image/install.gif" alt="Linux installation menu demo" width="520">
</p>

### Windows

1. Open the [windows directory](https://github.com/EvilGenius-dot/RustMinerSystem/tree/main/windows).
2. Select the latest `rustminersystem-*.exe` file.
3. Open the file page and click `View raw` to download it.
4. Double-click the program and follow the terminal prompt to open the management console in your browser.

## Documentation

| Scenario | Link |
| --- | --- |
| Connect to a traditional pool | [Traditional pool proxy guide](https://rustminersystem.gitbook.io/rustminersystem/chuan-tong-kuang-chi-dai-li/dai-li-chuan-tong-kuang-chi) |
| Build a pool node | [Self-hosted pool node guide](https://rustminersystem.gitbook.io/rustminersystem/zi-jian-kuang-chi-jie-dian/cheng-wei-kuang-chi-jie-dian) |
| Use RMS client | [RMS local security client](https://github.com/EvilGenius-dot/RMS) |
| Full documentation | [RustMinerSystem GitBook](https://rustminersystem.gitbook.io/rustminersystem) |
| Contact and customization | [Contact us](https://rustminersystem.gitbook.io/rustminersystem/guan-yu/lian-xi-wo-men) |
| Service agreement | [Service Agreement](https://rustminersystem.gitbook.io/rustminersystem/guan-yu/fu-wu-xie-yi) |

## Supported Algorithms and Coins

Supported algorithms and coins may be hot-updated with versions and configuration changes. The following list shows the common support scope in the current documentation:

<p align="center">
  <img src="../../image/icon-btc.png" alt="BTC" height="28">
  <img src="../../image/icon-bch.png" alt="BCH" height="28">
  <img src="../../image/icon-etc.png" alt="ETC" height="28">
  <img src="../../image/icon-ethw.png" alt="ETHW" height="28">
  <img src="../../image/icon-ltc.png" alt="LTC" height="28">
  <img src="../../image/icon-kaspa.png" alt="KASPA" height="28">
  <img src="../../image/icon-kda.png" alt="KDA" height="28">
  <img src="../../image/icon-cfx.png" alt="CFX" height="28">
  <img src="../../image/icon-zec.png" alt="ZEC" height="28">
  <img src="../../image/icon-rvn.png" alt="RVN" height="28">
  <img src="../../image/icon-erg.png" alt="ERG" height="28">
</p>

<details>
<summary>Expand the algorithm list</summary>

| Algorithm | Supported coins |
| --- | --- |
| SHA256 | BTC, BCH, SPACE |
| ETHASH | ETC, ETHW, ETHF, OCTA, ETC+ZIL, ETHW+ZIL, ETHF+ZIL, CLORE, NEURAI, NEOXA, ZIL, CLO, UBQ, EGAZ, ELH, AVS, CAU, PAC, PWR, BTN, DUBX, XPB, REDEV2, RTH, DOGETHER |
| SCRYPT | LTC, BEL |
| KHEAVYHASH | KASPA, PYI, SDR |
| KARLSENHASH | KLS |
| BLAKE2S | KDA |
| BLAKE2B | SC, HNS |
| OCTOPUS | CFX |
| DYNEXSOLVE | DNX |
| EAGLESONG | CKB |
| EQUIHASH | ZEN, ZEC |
| LBRY | LBC |
| X11 | DASH, BLOCX |
| PROGPOW | SERO |
| BLAKE3 | ALPH, IRON |
| RANDOMX | XMR, ZEPH, NEVO |
| KAWPOW | RVN, MEWC, AIPG |
| SHA512256D | RXD |
| AUTOYKOS2 | ERG |
| NEXAPOW | NEXA |
| GHOSTRIDER | RTM, RTC, MECU, MAXE, NIKI, SUBI, NEVO |
| CUCKATOO32 | GRIN |

</details>

## Community and Support

Use the following channels to get updates, discuss usage questions, or request a custom version:

<p>
  <a href="https://t.me/rustkt">
    <img src="https://img.shields.io/badge/Telegram-rustkt-2CA5E0?logo=telegram&logoColor=white" alt="Telegram">
  </a>
  <a href="https://discord.gg/xpjRnv8wpX">
    <img src="https://img.shields.io/badge/Discord-Join-5865F2?logo=discord&logoColor=white" alt="Discord">
  </a>
  <a href="https://github.com/EvilGenius-dot/RustMinerSystem/releases">
    <img src="https://img.shields.io/badge/Releases-Changelog-111827" alt="Releases">
  </a>
</p>

## Special Thanks

Thanks to the following mining pools for providing technical support within a certain scope:

<table>
  <tr>
    <td align="center" width="160">
      <img src="../../image/icon-logo-blue.png" alt="Support logo" width="100">
    </td>
    <td align="center" width="160">
      <img src="../../image/poolin.svg" alt="Poolin" width="100">
    </td>
    <td align="center" width="160">
      <img src="../../image/hd_logo.png" alt="Support logo" width="100">
    </td>
    <td align="center" width="160">
      <img src="../../image/antpool.png" alt="AntPool" width="100">
    </td>
  </tr>
</table>

## Service Agreement

> [!CAUTION]
> RustMinerSystem is regulated by Hong Kong law. Legal requirements in different countries or regions may restrict this type of product and service. Before use, please confirm that digital currency, miner management, and mining pool service activities are allowed in your region.

<details>
<summary>Expand the service agreement content</summary>

RustMinerSystem is regulated by Hong Kong law. Please note that legal requirements in different countries or regions may restrict this type of product and service.

As a result, this product, its services, and certain features may be unavailable or restricted in certain jurisdictions, regions, or for certain users.

This product is not a VPN-type product, because it cannot enable access to prohibited content in restricted regions.

This product is miner and mining farm management software. It does not obtain miner data through improper means. All connected devices must be actively configured by the device owner with a miner connection address, ensuring that users of this program have informed consent.

You are not on any list of terrorist organizations or terrorist personnel, including those listed in United Nations Security Council resolutions.

You have not been restricted or prohibited from using this program by administrative or law enforcement agencies in any country or region.

You are not a resident of Cuba, Iran, North Korea, Syria, or any other country or region subject to sanctions imposed by relevant governments or international organizations.

You are not a resident of any country or region where digital currency-related activities are restricted or prohibited, including but not limited to mainland China.

Your use of the services provided by this program complies with the relevant laws, regulations, and policies of your country or region.

You agree that if your use of the services provided by this program becomes illegal due to the laws, regulations, policies, or any other applicable laws of your country or region, you will independently bear the related legal risks and liabilities, and you unconditionally and irrevocably waive any right to make claims against this program.

You should understand and comply with local laws and regulations. By using this product, you are deemed to accept the above permissions and restrictions. If legal issues arise from the use of this product, the related responsibility shall be borne by the user.

</details>

## License

This project is released under the [MIT License](../../LICENSE).
