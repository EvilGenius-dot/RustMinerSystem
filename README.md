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
| BLAKE2B         | ✅          | SC...
| OCTOPUS         | ✅          | CFX...


# Service Agreement

RustMinerSystem is subject to the supervision of Hong Kong laws. Please note that the legal requirements of various countries/regions may restrict such products and services. Therefore, this product and service as well as some functions may not be available or may be restricted in some jurisdictions or regions or some users. You should understand and comply with the local laws and regulations. If you use this product, the default representative accepts the above license. If the legal problems caused by this product are irrelevant to this product.




[rustminersystem.io]: https://github.com/EvilGenius-dot/RustMinerSystem
[rustminersystem.io-badge]: https://img.shields.io/badge/RustMinerSystem-v2.0.0-green?logo=rust
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

   To start the Windows version, double-click it. 
 
   Linux After the script is run, enter 1 or 2 to select the installation menu language. The following interface is displayed

   ---------- English Menu ----------
   1. Install
   2. Update
   3. Start software
   4. Stop software
   5. Restart software
   6. Modify startup port
   7. Remove Linux system connection limit (requires server restart to take effect)
   8. Set automatic startup
   9. Disable automatic startup...
   10. Check program running status
   11. View error log
   12. Clear log files
   13. View current WEB access port
   14. Uninstall
   15. Reset account password
   16. Install specified version
   [1-16]：
   
   <br>

   Enter 1 to install  
   
   The following message is displayed after the installation is complete

   |----------------------------------------------------------------|<br>
      Program started successfully, WEB access port is21441, Default account is qzpm19kkx default password is xloqslz913<br>
      If you are using the default password and port, please change the account password and web access port in a timely manner through the web settings.<br>
   |----------------------------------------------------------------|

   <br>

   If the preceding information is displayed, the installation is successful. Enter the server IP address: port number in the browser to access the background.

   </details>


# Version Log
```
3.2.3
Completely solved kas memory burst problem

3.2.2
Fixed kas slow burst memory bug

3.2.1
Fixed a high invalidity bug caused by the same wallet without the miner name configured

3.2.0
Added support for k1 mining pools 
 
The connection count of ant mining pool is optimized 
 
Added ports for kas series models 
 
Complete lifting of cross-pond pumping restrictions 
 
The configuration of the RMS service is enabled 
 
The accuracy of pumping has been optimized, and now the machine with large computational power fluctuations can also pump a more accurate proportion 
 
Added the option to remove pumping from separate miners 
 
Continuously optimize computing power statistics

3.1.0
Tuning the performance of new algorithms under ETC algorithm

3.0.0
Reconfigured the pumping algorithm, and now all currencies can pump accurately to the thousandth digit 
 
In loss-prone mining pools and machines, it is now possible to ensure that the end customer does not reduce computing power more than the set percentage 
 
The e9pro is perfectly optimized 
 
Refactored the interface, added wallet list, device list filtering criteria and so on 
 
Added the setting of single miner pumping 
 
Optimized the power statistics, now the power statistics are no longer messy 
 
Optimized invalid

2.1.0
Completely solve the jam

2.0.9
Solve the stuck problem  

Optimal pumping

2.0.8
Two pumping algorithms are combined  

Fix suspended animation again

2.0.7 
Fixed an issue with version 6 suspended animation 
 
The problem of insufficient computing power in equilibrium mode is optimized

2.0.6
Optimized power compensation, the power compensation option is now hidden, and power is allocated to all miners by default 
 
Optimized E9pro, now all mining pools can run full E9pro, and the calculation of e9pro in rust is accurate and consistent with the mining pool 
 
Added a pumping mode 
 
Added a mode for connecting mine pools 
 
Optimized mining machine with high computing power


2.0.5

[Important Update] Fixed a bug where RUST was suspended in windows 
 
Fixed high inefficiency of kas Glacier and other chip machines 
 
Compatible with the etc gtv66 chip, improve the etc computing power calculation 
 
Fixed some bugs in power statistics

2.0.4 
The default mode of computing power compensation is optimized to further reduce inefficiency 
 
Optimized the performance of kaspa under different mining pool protocols, lolminer and gminer now work in all mining pools 
 
Optimized the calculation logic of the etc related algorithm, and now the calculation and pumping are more accurate 
 
The underlying optimization improves the hardware utilization 
 
Optimized share display bug 
 
Optimize the home active distribution list

2.0.3
Fixed a serious BUG caused by disconnection reconnection mechanism


2.0.2
Fixed a software crash caused by concurrency  

Statistical optimization of computing power

2.0.0 
Multiple client details optimization 
 
Now the pumping accuracy is MAX 
 
Added power compensation configuration, now the loss of power compensation can be configured on the port 
 
The mechanism of re-connection of broken lines is added to ensure that the mining machine with frequent disconnection can also pump normally 
 
Fixed kas high invalidation bug 
 
The underlying algorithm engine was updated and reconstructed, and began to rapidly support small coins 
 
Added SC currency 
 
Added CFX currency 
 
Fixed an issue where LTC was highly ineffective in viabtc 
 
Fixed an issue with inaccurate LTC power display 
 
Fixed LTC computing power loss problem 
 
Remove the limit on the number of pumping wallets 
 
Lifting cross-pond pumping restrictions 
 
Optimized port logs, added program runtime logs, and enabled device logs

The low-level optimization avoids several bugs that are easy to cause program crashes


1.0.4
Optimized the efficiency of some BTC models, optimized the rejection rate of viabtc and ant mine pool

optimized a detail bug, and further reduced the inefficiency

1.0.3
Performance optimization 
 
Added configuration import and export in json, kt, and excel formats

1.0.2
The underlying reconstruction optimizes the processing and statistics of multiple links 
 
It is deeply optimized for e9pro 
 
Open error log

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

<span id="e9"></span>

# Some optimization measures for E9pro

- In the background configuration of the miner, only one address configuration information is retained, and the configurations of 2 and 3 are deleted

<span id="diaoxian"></span>

# Some mining pools will count the miner's offline situation, how to make the equipment in the mining pool do not appear offline records?

antpool or poolin, for example, will collect data on the disconnection of each device. If you do not want to see this information in the mining pool, edit the port, find the computing power compensation, and select the second mode

# Port import and export

You can import and export ports using the following three methods: Import an EXCEL file. If you need to import ports using Excel files, download and refer to the Excel template file:

<a href="https://github.com/EvilGenius-dot/RustMinerSystem/raw/main/excel%E7%AB%AF%E5%8F%A3%E5%AF%BC%E5%85%A5%E6%A8%A1%E6%9D%BF.xlsx">Download Excel Templates</a>

# Other issues

This is a free software, which does not charge any fees. It only takes 0.2% of the computing power of the terminal equipment from the technical point of view as a technical return.

