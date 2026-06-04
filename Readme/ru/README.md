<div align="center">

<img src="../../image/_logo.svg" alt="RustMinerSystem" width="520">

<p><strong>Комплексное решение для управления майнерами, майнинг-фермами и узлами пулов</strong></p>

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
  <a href="http://minerproxy.org/">Сайт</a>
  ·
  <a href="https://rustminersystem.gitbook.io/rustminersystem">Документация</a>
  ·
  <a href="https://github.com/EvilGenius-dot/RMS">Локальный клиент RMS</a>
  ·
  <a href="https://github.com/EvilGenius-dot/RustMinerSystem/releases">Журнал изменений</a>
  ·
  <a href="https://rustminersystem.gitbook.io/rustminersystem/guan-yu/lian-xi-wo-men">Контакты и кастомизация</a>
</p>

<p>
  <a href="https://github.com/EvilGenius-dot/RustMinerSystem">简体中文</a>
  ·
  <a href="https://github.com/EvilGenius-dot/RustMinerSystem/tree/main/Readme/en">English</a>
  ·
  Русский язык
</p>

<img src="../../image/rustminer-product-demo.webp" alt="Предпросмотр RustMinerSystem" width="920">

</div>

## Что такое RustMinerSystem

RustMinerSystem можно использовать как прокси для традиционного майнинг-пула или как инструмент, который превращает ваше устройство в настоящий узел майнинг-пула. Система предназначена для майнеров, майнинг-ферм, узлов пулов и сценариев эксплуатации с несколькими линиями связи, помогая управлять подключением, пересылкой, конфигурацией, ставками комиссий и мониторингом состояния.

Сопутствующий локальный клиент безопасности [RMS](https://github.com/EvilGenius-dot/RMS) может шифровать и сжимать передаваемые данные, снижая нагрузку на канал и повышая безопасность соединения. Перед использованием RustMinerSystem прочитайте [Соглашение об обслуживании](https://rustminersystem.gitbook.io/rustminersystem/guan-yu/fu-wu-xie-yi).

## Основные возможности

| Возможность | Описание |
| --- | --- |
| Прокси традиционного пула | Подключение майнеров к традиционным пулам и централизованное управление соединениями, портами и правилами пересылки. |
| Собственный узел пула | Превращение устройства в узел майнинг-пула для операторов узлов, майнинг-ферм и пользовательских бизнес-сценариев. |
| Настраиваемая комиссия | Настройка ставки комиссии в соответствии с бизнес-потребностями для увеличения доходности площадки или узла. |
| Безопасная передача | Использование локального клиента RMS для шифрования, сжатия и защиты канала. |
| Мультиплатформенная установка | Доступны установочные пакеты или скрипты для Linux, Windows, ARM и ARMV7. |
| Веб-панель управления | Доступ к панели управления через браузер для просмотра состояния, портов, майнеров и связанных данных. |

## Быстрый старт

> [!IMPORTANT]
> Учетная запись администратора по умолчанию: `qzpm19kkx`, пароль по умолчанию: `xloqslz913`. После первого входа как можно скорее измените пароль и порт доступа к Web-панели.

### Linux

Рекомендуется Ubuntu. Выполните следующую команду, чтобы открыть меню установочного инструмента:

```sh
bash <(curl -s -L https://github.com/EvilGenius-dot/RustMinerSystem/raw/main/install.sh)
```

Если GitHub работает медленно или недоступен в вашем регионе, попробуйте резервный адрес установки:

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

После запуска инструмента следуйте пунктам меню для установки, обновления, запуска, остановки, изменения портов, настройки автозапуска и других операций.

<p align="center">
  <img src="../../image/install.gif" alt="Демонстрация меню установки Linux" width="520">
</p>

### Windows

1. Откройте [каталог windows](https://github.com/EvilGenius-dot/RustMinerSystem/tree/main/windows).
2. Выберите последнюю версию файла `rustminersystem-*.exe`.
3. Откройте страницу файла и нажмите `View raw`, чтобы скачать его.
4. Запустите программу двойным щелчком и следуйте подсказкам терминала, чтобы открыть панель управления в браузере.

## Документация

| Сценарий | Ссылка |
| --- | --- |
| Подключение к традиционному пулу | [Руководство по прокси традиционного пула](https://rustminersystem.gitbook.io/rustminersystem/chuan-tong-kuang-chi-dai-li/dai-li-chuan-tong-kuang-chi) |
| Создание узла пула | [Руководство по собственному узлу пула](https://rustminersystem.gitbook.io/rustminersystem/zi-jian-kuang-chi-jie-dian/cheng-wei-kuang-chi-jie-dian) |
| Использование клиента RMS | [Локальный клиент безопасности RMS](https://github.com/EvilGenius-dot/RMS) |
| Полная документация | [RustMinerSystem GitBook](https://rustminersystem.gitbook.io/rustminersystem) |
| Контакты и кастомизация | [Связаться с нами](https://rustminersystem.gitbook.io/rustminersystem/guan-yu/lian-xi-wo-men) |
| Соглашение об обслуживании | [Соглашение об обслуживании](https://rustminersystem.gitbook.io/rustminersystem/guan-yu/fu-wu-xie-yi) |

## Поддерживаемые алгоритмы и монеты

Поддерживаемые алгоритмы и монеты могут обновляться вместе с версиями и конфигурацией. Ниже приведен общий список поддержки из текущей документации:

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
<summary>Развернуть список алгоритмов</summary>

| Алгоритм | Поддерживаемые монеты |
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

## Сообщество и поддержка

Используйте следующие каналы, чтобы получать обновления, обсуждать вопросы использования или запросить индивидуальную версию:

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

## Особая благодарность

Благодарим следующие майнинг-пулы за техническую поддержку в определенном объеме:

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

## Соглашение об обслуживании

> [!CAUTION]
> RustMinerSystem регулируется законодательством Гонконга. Правовые требования разных стран или регионов могут ограничивать такие продукты и услуги. Перед использованием убедитесь, что деятельность, связанная с цифровой валютой, управлением майнерами и сервисами майнинг-пулов, разрешена в вашем регионе.

<details>
<summary>Развернуть содержание соглашения</summary>

RustMinerSystem регулируется законодательством Гонконга. Обратите внимание, что правовые требования разных стран или регионов могут ограничивать такие продукты и услуги.

В результате этот продукт, его услуги и некоторые функции могут быть недоступны или ограничены в определенных юрисдикциях, регионах или для отдельных пользователей.

Этот продукт не является продуктом типа VPN, поскольку он не позволяет получать доступ к запрещенному контенту в регионах, где такой доступ запрещен.

Этот продукт является программным обеспечением для управления майнерами и майнинг-фермами. Он не получает данные майнеров ненадлежащими способами. Все подключаемые устройства должны быть самостоятельно настроены владельцем устройства с указанием адреса подключения майнера, чтобы обеспечить информированное согласие пользователей этой программы.

Вы не входите в списки террористических организаций или лиц, связанных с террористической деятельностью, включая списки, указанные в резолюциях Совета Безопасности ООН.

Вы не ограничены и не лишены права использовать эту программу административными или правоохранительными органами какой-либо страны или региона.

Вы не являетесь резидентом Кубы, Ирана, Северной Кореи, Сирии или других стран и регионов, находящихся под санкциями соответствующих правительств или международных организаций.

Вы не являетесь резидентом страны или региона, где деятельность, связанная с цифровыми валютами, ограничена или запрещена, включая, помимо прочего, материковый Китай.

Использование вами услуг, предоставляемых этой программой, соответствует применимым законам, нормативным актам и политикам вашей страны или региона.

Вы соглашаетесь с тем, что если использование вами услуг, предоставляемых этой программой, станет незаконным из-за законов, нормативных актов, политик или иных применимых правовых требований вашей страны или региона, вы самостоятельно несете соответствующие юридические риски и ответственность, а также безусловно и безотзывно отказываетесь от права предъявлять претензии к этой программе.

Вы должны понимать и соблюдать местные законы и нормативные требования. Используя этот продукт, вы считаетесь принявшим указанные выше разрешения и ограничения. Если в результате использования продукта возникнут юридические вопросы, соответствующую ответственность несет пользователь.

</details>

## License

Этот проект распространяется по лицензии [MIT License](../../LICENSE).
