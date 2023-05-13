<div id="top"></div>

<div align="center">

# RustMinerSystem

<h2>A mine pool level operation and maintenance tools👍 </h2>

<img src="/image/logo.png" alt="Logo" width="170">

[![RustMinerSystem][rustminersystem.io-badge]][rustminersystem.io]
[![Downloads][downloads-badge]][releases]
[![Stargazers][stars-shield]][stars-url]

<a href="https://github.com/EvilGenius-dot/RustMinerSystem">English</a>｜<a href="https://github.com/EvilGenius-dot/RustMinerSystem/tree/main/Readme/i18n">简体中文</a>

The powerful and experienced monitoring and recording system can solve the abnormal situation of the farm immediately.

The hash rate statistics at the level of mining pool, and the hash rate of any currency can be seen at a glance

Automatically adjust the working mode and data flow according to the terminal equipment to avoid highly ineffective task sharing

The active defense and filtering system improves the security of the environment and finds hazards in time.

The front-end client has high-performance TCP integration and compression technology. No matter how far the farm is from the mining pool, they can effectively reduce farm delay and prevent all middlemen from attacking.

The commission system compatible with various algorithms can reasonably improve the mine profits.

Built-in algorithm engines can update popular currencies without heating.

The dashboard is perfectly compatible with various devices, with PC, MOBILE, and PAD at a glance.

Perfect control logic, even if the service charge is turned on, the mine pool end will not show that the equipment is offline.

Based on the development of Rust, efficient language brings unparalleled performance.

High-performance, next-generation operation and maintenance experience, which is a professional farm operation and maintenance system-RustMinerSystem brought by the top R&D team and RUST experts in Silicon Valley

(Partial Preview)

<img src="/image/1.png" alt="Logo" width="670">

</div>

# Free customized version

[Click for free customized version description](#dingzhi)

# Join the discussion group

Telegram：<a href="https://t.me/rustkt">https://t.me/rustkt</a>

Telegram：<a href="https://t.me/+Zrz9d5gUR7YzOTVl">https://t.me/+Zrz9d5gUR7YzOTVl</a>

<!-- Discord：<a href="sadfasfdasfsa">sadfasfdasfsa</a> -->

# Special thanks

<img src="/image/icon-logo-blue.png" alt="Logo" width="100">

<img src="/image/poolin.svg" alt="Logo" width="100">

<p>Thanks for the technical support provided by the mine pool😊</p>

# Supported algorithms

For the supported algorithm, the corresponding currency will be updated without heat at any time, and the client 0 will bear the burden


| arithmetic      | Support     | Relevant currency |
| --------------- | ------------| ------------------|
| SHA256          | ✅          | BTC、BCH...        
| ETHASH          | ✅          | ETC、ETHW、ETHF、ETC+ZIL、ETHW+ZIL、ETHF+ZIL
| SCRYPT          | ✅          | LTC...
| KHEAVYHASH      | ✅          | KASPA...


# Service Agreement

RustMinerSystem is subject to the supervision of Hong Kong laws. Please note that the legal requirements of various countries/regions may restrict such products and services. Therefore, this product and service as well as some functions may not be available or may be restricted in some jurisdictions or regions or some users. You should understand and comply with the local laws and regulations. If you use this product, the default representative accepts the above license. If the legal problems caused by this product are irrelevant to this product.




[rustminersystem.io]: https://github.com/EvilGenius-dot/RustMinerSystem
[rustminersystem.io-badge]: https://img.shields.io/badge/RustMinerSystem-v1.0.1-green?logo=rust
[downloads-badge]: https://img.shields.io/github/downloads/ajeetdsouza/zoxide/total?logo=github&logoColor=white&style=flat-square
[releases]: https://github.com/EvilGenius-dot/RustMinerSystem/releases
[stars-url]: https://github.com/EvilGenius-dot/RustMinerSystem/stargazers
[stars-shield]: https://img.shields.io/github/stars/EvilGenius-dot/RustMinerSystem.svg?style=flat
[stars-url]: https://github.com/EvilGenius-dot/RustMinerSystem/stargazers

# Installation 

1. **Install**

   Select your applicable operating system

   <details open>
   <summary>Linux</summary>

   > Run the following shell instructions to run the toolkit
   >
   > ```sh
   >  bash <(curl -s -L https://github.com/EvilGenius-dot/RustMinerSystem/raw/main/install.sh)
   > ```
   >
   > After running successfully, you will see the following menu.
   >

   </details>

   <details open>
   <summary>Windows</summary>

   > Please download the specified version directly from the Windows directory of this project:
   >
   > ```sh
   > https://github.com/EvilGenius-dot/RustMinerSystem/tree/main/windows
   > ```
   >

   </details>


# Version Log
```
1.0.1
Fixed a bug caused by links

1.0.0
Open test

0.9.999
A serious security breach was fixed

Optimized commission logic for all currencies

0.9.99
Optimize BTC, LTC

Optimized mean delay display is not accurate

0.9.98
Optimize the bottom layer and reduce losses

0.9.97
Fixed a serious bug in program pseudo death

0.9.96
The perfect BTC@KAS

0.9.95
fix...

0.9.94
fix...

0.9.93
fix...

0.9.92
Fixed a bug where the hot update wallet would cause the application to crash. Fixed some kernel kas connection issues 
 
Fixed ltc small power display bug

0.9.91
Fixed a bug where the hot update wallet caused the program to crash

Fixed kas not working properly due to changes in the previous version

0.9.9
Optimized a lot of details

Optimized Yami equipment

Further reducing the probability of ineffectiveness (although already very low)

Optimized memory and CPU usage

0.1.4
Optimize e9 and e9pro

0.1.3
Optimizing Antminer s17

0.1.2
Fixed a serious issue of task chaos for multiple devices under Rust

Fixed issue where kas was unable to receive tasks

0.1.0
Release of internal test version
```

# Help

<span id="dingzhi"></span>

# Customize the version description

1. Join a chat group <a href="https://t.me/rustkt">https://t.me/rustkt</a>
2. Please organize the following format data and send it to the group master or administrator:

Example:  

Software name  

Project address  

logo and Introduction

—————————————————

currency: BTC,

Built-in commission rate: ratio

Built-in anonymous wallet: xxxxxxxxxxxxxx

Built-in subaccount: xxxxxxxxxxxx

The device name is displayed in the mine pool: xxxxx

—————————————————

currency: ETC

Built-in commission rate: ratio

Built-in anonymous wallet: xxxxxxxxxxxxxx

Built-in subaccount: xxxxxxxxxxxx

The device name is displayed in the mine pool: xxxxx

—————————————————

currency: ETC+ZIL

Built-in commission rate: ratio

Built-in anonymous wallet: etc匿名钱包.zil匿名钱包

Built-in subaccount: xxxxxxxxxxxx

The device name is displayed in the mine pool: xxxxx

—————————————————

......

The built-in service fee pool address is the same as the target address in the software by default, and the service fee will be drawn to the target pool address of the port. Each currency needs to provide an anonymous wallet and a sub-account. For a mine pool like BTC, which does not support anonymous mining, only a sub-account can be provided to ensure that it can work normally in any supported type of mine pool 
 
If you do not make the installation link, project home page, etc., you can contact the group master or administrator for free hosting services

# Other issues

This is a free software, which does not charge any fees. It only takes 0.2% of the computing power of the terminal equipment from the technical point of view as a technical return.

