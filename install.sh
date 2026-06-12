#!/bin/bash

VERSION="5.0.1"

# Customer customization: change this block for white-label builds.
APP_NAME="RustMinerSystem"
APP_ID="rustminersystem"
DOWNLOAD_HOST="https://github.com/EvilGenius-dot/RustMinerSystem/raw/main/linux"

SERVICE_NAME="rustservice"
PROCESS_WAIT_INTERVAL="0.1"
PROCESS_WAIT_STEPS_PER_SECOND=10
PROCESS_WAIT_INTERVAL_SUPPORTED=""

PATH_RUST="/root/${APP_ID}"
PATH_EXEC="${APP_ID}"
DOWNLOAD_EXEC_PREFIX="${PATH_EXEC}"
ORIGIN_EXEC="${DOWNLOAD_EXEC_PREFIX}-${VERSION}"
CONFIG_FILE_NAME="rust-config"
SYSCTL_TAG="${APP_ID}"
INSTALL_DIR_GUARD="${APP_ID}"

PATH_CONFIG="${PATH_RUST}/${CONFIG_FILE_NAME}"
PATH_NOHUP="${PATH_RUST}/nohup.out"
PATH_ERR="${PATH_RUST}/err.log"
PATH_CUE="${PATH_RUST}/cue"
PATH_D_1="${PATH_RUST}/0.d1"
PATH_D_2="${PATH_RUST}/0.d1-shm"
PATH_D_3="${PATH_RUST}/0.d1-wal"

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
BOLD="\033[1m"
RESET="\033[0m"


# -----------------------------------------------------------------------------
# Language text
# -----------------------------------------------------------------------------

select_language() {
    clear
    echo "Please select your language / 请选择语言:"
    echo "1. English"
    echo "2. 中文"
    read -p "$(echo -e "[1-2]：")" lang_choice
}

load_language() {
    case "$lang_choice" in
    1)
        prompt_install="1. Install"
        prompt_update="2. Update"
        prompt_target_version="3. Install version"
        prompt_start="4. Start"
        prompt_stop="5. Stop"
        prompt_restart="6. Restart"
        prompt_port="7. Change port"
        prompt_ulimit="8. Raise Linux connection limit"
        prompt_https="9. HTTPS access"
        prompt_auto_start="10. Enable autostart"
        prompt_disable_auto_start="11. Disable autostart"
        prompt_service_log="12. View systemd service log"
        prompt_status="13. View runtime log"
        prompt_error_log="14. View error log"
        prompt_clear_log="15. Clear logs"
        prompt_web_port="16. View WEB port"
        prompt_uninstall="17. Uninstall"
        prompt_reset_pwd="18. Reset account password"
        prompt_choose_menu="Please choose [1-18]: "
        prompt_choose_short="Please choose"
        prompt_root_no="Please run this script as root!"
        prompt_error_command="Invalid command entered. Please try again."
        prompt_set_port="Enter the port number: "
        prompt_https_question="Enable HTTPS backend access? After enabling it, the backend must be accessed with https://. After disabling it, use http://."
        prompt_https_off="1. Disabled"
        prompt_https_on="2. Enabled"
        prompt_https_choose="Please choose [1-2]: "
        prompt_https_invalid="Invalid input, HTTPS is enabled by default."
        prompt_enter_version="Please enter the version number: "
        prompt_confirm_uninstall="Type YES to confirm uninstall: "

        menu_group_install="Install & Update"
        menu_group_runtime="Runtime Control"
        menu_group_settings="Settings"
        menu_group_logs="Log Management"
        menu_group_maintenance="Maintenance"
        menu_tip="Tip: Linux connection limit changes require a server restart to take effect."

        msg_install_start="Start installation: "
        msg_disable_firewall="Disable firewall"
        msg_unknown_os_firewall="Unknown operating system, failed to disable firewall"
        msg_starting="Start program"
        msg_already_running="Program is already running, please do not start it again."
        msg_start_failed="Program startup failure!!!"
        msg_started_title="Program started successfully"
        msg_version_label="Version"
        msg_backend_url="Backend access URL"
        msg_default_username="Default username"
        msg_default_password="Default password"
        msg_tip_label="Tip"
        msg_public_firewall_tip="For public backend access, remember to open the provider firewall."
        msg_default_security_tip="If you are using the default password and port, please change the account password and web access port in the web settings."
        msg_http_tip="Current backend uses HTTP. Do not access it with HTTPS. To use HTTPS, run this script and choose 9."
        msg_https_tip="Current backend uses HTTPS. Do not access it with HTTP. To use HTTP, run this script and choose 9."
        msg_delete_config="Delete configuration files"
        msg_password_reset_done="Password reset completed, changed to default account/password: qzpm19kkx xloqslz913"
        msg_terminating="Terminating process..."
        msg_process_not_found="Not found"
        msg_process_label="process"
        msg_process_terminated="Terminated"
        msg_stopping_process="Stopping process"
        msg_stop_timeout="Process did not stop within timeout"
        msg_enable_autostart="Set up automatic startup"
        msg_disable_autostart="Disable automatic startup..."
        msg_failed="Failed"
        msg_config_missing="Environment variable configuration file not found, creating one now"
        msg_config_updated="Updated configuration file"
        msg_config_added="Added configuration to file"
        msg_config_changed="Configuration changed"
        msg_change_limit="Modify system connection limit"
        msg_limit_changed_restart="Connection limit has been changed to 65535, please restart the server for the change to take effect"
        msg_current_limit="Current connection limit:"
        msg_change_done_restart="Modification completed, please restart the server for the change to take effect"
        msg_running_detected="Detected running"
        msg_must_stop_before_install=", it must be stopped before continuing with the installation."
        msg_enter_stop_running="Enter 1 to stop the running"
        msg_or_cancel_install="and continue with the installation, enter 2 to cancel the installation."
        msg_cancel_install="Cancel installation"
        msg_invalid_cancel_install="Invalid input, cancelling installation."
        msg_create_dir="Creating directory"
        msg_dir_exists="Directory already exists, no need to create it again, continuing with the installation."
        msg_downloading="Downloading..."
        msg_download_program="Downloading program"
        msg_download_source="Download source"
        msg_download_target="Save as"
        msg_download_complete="Download completed"
        msg_uninstall_done="Uninstall completed"
        msg_tail_hint="Press CTRL+C to stop viewing logs"
        msg_service_log="Viewing systemd service log"
        msg_journalctl_missing="journalctl was not found. This system may not use systemd."
        msg_service_status_label="Service status"
        msg_status_running="Running"
        msg_status_stopped="Not started"
        msg_status_abnormal="Abnormal"
        msg_status_unavailable="systemd unavailable"
        msg_missing_dependency="Missing required command(s)"
        msg_missing_downloader="Missing downloader: please install wget or curl."
        msg_invalid_port="Invalid port. Please enter a number from 1 to 65535."
        msg_port_in_use="Port is already in use, please choose another one."
        msg_invalid_version="Invalid version. Use only letters, numbers, dot, dash, or underscore."
        msg_uninstall_cancelled="Uninstall cancelled."
        msg_invalid_remove_path="Unsafe remove path detected, operation cancelled"
        msg_limit_global_done="Global network and file descriptor optimization completed."
        msg_limit_reboot_required="Please restart the server for all changes to fully take effect."
        msg_limit_sysctl_missing="sysctl was not found, failed to apply network optimization."
        msg_clear_logs="Cleaning up logs"
        msg_clear_done="Cleanup completed"
        msg_current_web_port="Current WEB access port is"
        msg_enter_release_version="Enter the published version number to install:"
        msg_version_example="Enter the specified version number, for example 3.5.0"
        ;;
    2)
        prompt_install="1. 安装"
        prompt_update="2. 更新"
        prompt_target_version="3. 安装指定版本"
        prompt_start="4. 启动软件"
        prompt_stop="5. 停止软件"
        prompt_restart="6. 重启软件"
        prompt_port="7. 修改端口"
        prompt_ulimit="8. 解除系统连接数限制"
        prompt_https="9. 设置HTTPS访问"
        prompt_auto_start="10. 设置开机启动"
        prompt_disable_auto_start="11. 关闭开机启动"
        prompt_service_log="12. 查看systemd服务日志"
        prompt_status="13. 查看运行日志"
        prompt_error_log="14. 查看错误日志"
        prompt_clear_log="15. 清理日志"
        prompt_web_port="16. 查看WEB端口"
        prompt_uninstall="17. 卸载"
        prompt_reset_pwd="18. 重置账号密码"
        prompt_choose_menu="请选择 [1-18]："
        prompt_choose_short="请选择"
        prompt_root_no="请使用root用户运行此脚本！"
        prompt_error_command="输入了错误的指令, 请重新输入。"
        prompt_set_port="请输入要设置的端口号："
        prompt_https_question="是否开启HTTPS后台访问? 请注意, 开启后后台地址必须使用https://访问, 关闭后必须使用http://访问。"
        prompt_https_off="1. 不开启"
        prompt_https_on="2. 开启"
        prompt_https_choose="请选择 [1-2]："
        prompt_https_invalid="输入错误, 默认开启。"
        prompt_enter_version="请输入版本号："
        prompt_confirm_uninstall="请输入 YES 确认卸载："

        menu_group_install="安装更新"
        menu_group_runtime="运行控制"
        menu_group_settings="配置设置"
        menu_group_logs="日志管理"
        menu_group_maintenance="维护操作"
        menu_tip="提示：解除系统连接数限制需要重启服务器后生效。"

        msg_install_start="开始安装: "
        msg_disable_firewall="关闭防火墙"
        msg_unknown_os_firewall="未知的操作系统, 关闭防火墙失败"
        msg_starting="启动程序"
        msg_already_running="程序已经启动，请不要重复启动。"
        msg_start_failed="程序启动失败!!!"
        msg_started_title="程序启动成功"
        msg_version_label="版本号"
        msg_backend_url="后台访问地址"
        msg_default_username="默认用户名"
        msg_default_password="默认密码"
        msg_tip_label="提示"
        msg_public_firewall_tip="公网访问管理后台, 请记得打开运营商后台防火墙。"
        msg_default_security_tip="如果您是默认密码及默认端口, 请及时在网页设置中修改账号密码及web访问端口。"
        msg_http_tip="当前后台为HTTP协议访问, 请不要使用HTTPS访问, 如需使用HTTPS, 请运行脚本选择9进行设置。"
        msg_https_tip="当前后台为HTTPS协议访问, 请不要使用HTTP访问, 如需使用HTTP, 请运行脚本选择9进行设置。"
        msg_delete_config="删除配置文件"
        msg_password_reset_done="重置密码完成, 已修改为默认账号密码 qzpm19kkx xloqslz913"
        msg_terminating="终止进程..."
        msg_process_not_found="未发现"
        msg_process_label="进程"
        msg_process_terminated="终止"
        msg_stopping_process="停止进程"
        msg_stop_timeout="进程在等待时间内未停止"
        msg_enable_autostart="设置开机启动"
        msg_disable_autostart="关闭开机启动..."
        msg_failed="失败"
        msg_config_missing="未发现环境变量配置文件, 开始创建"
        msg_config_updated="已更新配置文件"
        msg_config_added="已添加配置到文件"
        msg_config_changed="配置已修改"
        msg_change_limit="修改系统连接数限制"
        msg_limit_changed_restart="连接数限制已修改为65535,重启服务器后生效"
        msg_current_limit="当前连接数限制："
        msg_change_done_restart="修改完成, 重启服务器后生效"
        msg_running_detected="发现正在运行的"
        msg_must_stop_before_install=", 需要停止才可继续安装。"
        msg_enter_stop_running="输入1停止正在运行的"
        msg_or_cancel_install="并且继续安装, 输入2取消安装。"
        msg_cancel_install="取消安装"
        msg_invalid_cancel_install="输入错误, 取消安装。"
        msg_create_dir="开始创建目录"
        msg_dir_exists="目录已存在, 无需重复创建, 继续执行安装。"
        msg_downloading="开始下载..."
        msg_download_program="下载程序"
        msg_download_source="下载地址"
        msg_download_target="保存位置"
        msg_download_complete="下载完成"
        msg_uninstall_done="卸载完成"
        msg_tail_hint="按 CTRL+C 退出日志查看"
        msg_service_log="查看systemd服务日志"
        msg_journalctl_missing="未找到journalctl，当前系统可能不是systemd。"
        msg_service_status_label="服务状态"
        msg_status_running="运行中"
        msg_status_stopped="未启动"
        msg_status_abnormal="异常"
        msg_status_unavailable="systemd不可用"
        msg_missing_dependency="缺少必要命令"
        msg_missing_downloader="缺少下载工具：请安装 wget 或 curl。"
        msg_invalid_port="端口无效，请输入 1 到 65535 之间的数字。"
        msg_port_in_use="端口已被占用，请选择其他端口。"
        msg_invalid_version="版本号无效，只允许字母、数字、点、横线或下划线。"
        msg_uninstall_cancelled="已取消卸载。"
        msg_invalid_remove_path="检测到不安全的删除路径，已取消操作"
        msg_limit_global_done="全局网络与文件描述符优化已完成。"
        msg_limit_reboot_required="请重启服务器，让所有配置完全生效。"
        msg_limit_sysctl_missing="未找到sysctl，无法应用网络优化。"
        msg_clear_logs="清理日志"
        msg_clear_done="清理完成"
        msg_current_web_port="当前WEB访问端口"
        msg_enter_release_version="输入已发布的版本来进行安装："
        msg_version_example="请输入指定的版本号, 例如 3.5.0"
        ;;
    *)
        echo "Invalid language selected / 无效的选择"
        exit 1
        ;;
    esac
}


# -----------------------------------------------------------------------------
# Menu and entry helpers
# -----------------------------------------------------------------------------

require_root() {
    [ "$(id -u)" != "0" ] && { echo "$prompt_root_no"; exit 1; }
}

is_systemd_available() {
    command -v systemctl >/dev/null 2>&1 && [ -d /run/systemd/system ]
}

detect_system() {
    OS_ID="unknown"
    OS_LIKE=""
    OS_NAME="$(uname -s)"
    INIT_SYSTEM="unknown"

    if [ -r /etc/os-release ]; then
        OS_ID=$(sh -c '. /etc/os-release; printf "%s" "${ID:-unknown}"')
        OS_LIKE=$(sh -c '. /etc/os-release; printf "%s" "${ID_LIKE:-}"')
        OS_NAME=$(sh -c '. /etc/os-release; printf "%s" "${PRETTY_NAME:-${ID:-unknown}}"')
    fi

    if is_systemd_available; then
        INIT_SYSTEM="systemd"
    elif command -v rc-service >/dev/null 2>&1 && command -v rc-update >/dev/null 2>&1; then
        INIT_SYSTEM="openrc"
    elif command -v service >/dev/null 2>&1; then
        INIT_SYSTEM="sysv"
    fi
}

check_dependencies() {
    local missing=""
    local cmd

    for cmd in pgrep sed grep mkdir chmod touch tail awk find; do
        if ! command -v "$cmd" >/dev/null 2>&1; then
            missing="${missing} ${cmd}"
        fi
    done

    if [ -n "$missing" ]; then
        echo "${msg_missing_dependency}:${missing}"
        return 1
    fi

    if ! command -v wget >/dev/null 2>&1 && ! command -v curl >/dev/null 2>&1; then
        echo "$msg_missing_downloader"
        return 1
    fi
}

download_file() {
    local url="$1"
    local output="$2"

    printf "%s: %s\n" "$msg_download_source" "$url"
    printf "%s: %s\n" "$msg_download_target" "$output"

    if command -v wget >/dev/null 2>&1; then
        if wget --help 2>&1 | grep -q -- "--show-progress"; then
            wget --show-progress --progress=bar:force:noscroll "$url" -O "$output"
        else
            wget "$url" -O "$output"
        fi
    elif command -v curl >/dev/null 2>&1; then
        curl -fL --progress-bar "$url" -o "$output"
    else
        return 1
    fi

    local result=$?
    if [ "$result" -eq 0 ]; then
        echo "$msg_download_complete"
    fi

    return "$result"
}

is_valid_port() {
    local port="$1"

    [[ "$port" =~ ^[0-9]+$ ]] && [ "$port" -ge 1 ] && [ "$port" -le 65535 ]
}

is_port_available() {
    local port="$1"

    if command -v ss >/dev/null 2>&1; then
        ! ss -ltn "sport = :${port}" 2>/dev/null | grep -q ":${port}"
    elif command -v netstat >/dev/null 2>&1; then
        ! netstat -ltn 2>/dev/null | grep -q "[.:]${port}[[:space:]]"
    else
        return 0
    fi
}

generate_port() {
    local port

    for _ in {1..20}; do
        port=$((RANDOM % 45536 + 20000))
        if is_port_available "$port"; then
            echo "$port"
            return 0
        fi
    done

    echo "63521"
}

is_valid_version() {
    local version="$1"

    [[ "$version" =~ ^[A-Za-z0-9._-]+$ ]]
}

safe_remove_install_dir() {
    if [ -z "$PATH_RUST" ] || [ "$PATH_RUST" = "/" ] || [[ "$PATH_RUST" != *"$INSTALL_DIR_GUARD"* ]]; then
        echo "${msg_invalid_remove_path}: $PATH_RUST"
        return 1
    fi

    rm -rf -- "$PATH_RUST"
}

safe_remove_data_file() {
    local target="$1"

    if [ -n "$target" ] && [[ "$target" == "$PATH_RUST"/* ]]; then
        rm -f -- "$target"
    fi
}

get_service_status() {
    local active_state

    if ! is_systemd_available; then
        service_status_color="$YELLOW"
        service_status_text="$msg_status_unavailable"
        return
    fi

    active_state=$(systemctl is-active "${SERVICE_NAME}.service" 2>/dev/null)

    case "$active_state" in
    active)
        service_status_color="$GREEN"
        service_status_text="$msg_status_running"
        ;;
    inactive|unknown|"")
        service_status_color="$YELLOW"
        service_status_text="$msg_status_stopped"
        ;;
    *)
        service_status_color="$RED"
        service_status_text="$msg_status_abnormal"
        ;;
    esac
}

print_menu_section() {
    local group="$1"
    shift
    local left
    local right

    printf "\n%b%s%b\n" "${BOLD}${BLUE}" "$group" "$RESET"

    while [ "$#" -gt 0 ]; do
        left="$1"
        shift
        right=""

        if [ "$#" -gt 0 ]; then
            right="$1"
            shift
        fi

        if [ -n "$right" ]; then
            printf "  %-34s %s\n" "$left" "$right"
        else
            printf "  %s\n" "$left"
        fi
    done
}

show_main_menu() {
    get_service_status

    printf "%b\n" "${BOLD}${BLUE}+----------------------------------------------------------------+${RESET}"
    printf "%b  %s %s%b\n" "$BOLD" "$APP_NAME" "$VERSION" "$RESET"
    printf "  %b●%b %s: %b%s%b\n" "$service_status_color" "$RESET" "$msg_service_status_label" "$service_status_color" "$service_status_text" "$RESET"
    printf "%b\n" "${BOLD}${BLUE}+----------------------------------------------------------------+${RESET}"
    print_menu_section "$menu_group_install" "$prompt_install" "$prompt_update" "$prompt_target_version"
    print_menu_section "$menu_group_runtime" "$prompt_start" "$prompt_stop" "$prompt_restart"
    print_menu_section "$menu_group_settings" "$prompt_port" "$prompt_ulimit" "$prompt_https" "$prompt_auto_start" "$prompt_disable_auto_start"
    print_menu_section "$menu_group_logs" "$prompt_service_log" "$prompt_status" "$prompt_error_log" "$prompt_clear_log" "$prompt_web_port"
    print_menu_section "$menu_group_maintenance" "$prompt_uninstall" "$prompt_reset_pwd"
    printf "\n%b\n" "${BOLD}${BLUE}+----------------------------------------------------------------+${RESET}"
    printf "%b%s%b\n" "$YELLOW" "$menu_tip" "$RESET"
}

show_start_success() {
    local access_url="$1"
    local protocol_tip="$2"

    echo ""
    echo ""
    echo -e "|----------------------------------------------------------------|"
    echo -e "           ${msg_started_title}, ${msg_version_label}: ${BOLD}${BLUE}${VERSION}${RESET}          "
    echo -e ""
    echo -e "${msg_backend_url}:     ${BOLD}${GREEN}${access_url}${RESET}"
    echo -e "${msg_default_username}:       ${BOLD}${GREEN}qzpm19kkx${RESET}"
    echo -e "${msg_default_password}:       ${BOLD}${GREEN}xloqslz913${RESET}"
    echo -e ""
    echo -e "${msg_tip_label}: ${BOLD}${BLUE}${msg_public_firewall_tip}${RESET}"
    echo -e "${msg_tip_label}: ${BOLD}${BLUE}${msg_default_security_tip}${RESET}"
    echo -e "${msg_tip_label}: ${BOLD}${BLUE}${protocol_tip}${RESET}"
    echo "|----------------------------------------------------------------|"
}

# -----------------------------------------------------------------------------
# Business functions
# -----------------------------------------------------------------------------

update() {
    stop

    installapp "$VERSION"
}


check_process() {
    pgrep -x "$1" >/dev/null
}

is_fast_process_wait_supported() {
    if [ -n "$PROCESS_WAIT_INTERVAL_SUPPORTED" ]; then
        [ "$PROCESS_WAIT_INTERVAL_SUPPORTED" = "1" ]
        return
    fi

    if sleep "$PROCESS_WAIT_INTERVAL" 2>/dev/null; then
        PROCESS_WAIT_INTERVAL_SUPPORTED="1"
        return 0
    fi

    PROCESS_WAIT_INTERVAL_SUPPORTED="0"
    return 1
}

wait_for_process_started() {
    local process_name="$1"
    local timeout="${2:-10}"
    local interval="1"
    local max_attempts="$timeout"
    local attempts=0

    if check_process "$process_name"; then
        return 0
    fi

    if is_fast_process_wait_supported; then
        interval="$PROCESS_WAIT_INTERVAL"
        max_attempts=$((timeout * PROCESS_WAIT_STEPS_PER_SECOND))
    fi

    while [ "$attempts" -lt "$max_attempts" ]; do
        if check_process "$process_name"; then
            return 0
        fi
        sleep "$interval"
        attempts=$((attempts + 1))
    done

    return 1
}

wait_for_process_stopped() {
    local process_name="$1"
    local timeout="${2:-10}"
    local interval="1"
    local max_attempts="$timeout"
    local attempts=0

    if ! check_process "$process_name"; then
        return 0
    fi

    if is_fast_process_wait_supported; then
        interval="$PROCESS_WAIT_INTERVAL"
        max_attempts=$((timeout * PROCESS_WAIT_STEPS_PER_SECOND))
    fi

    while [ "$attempts" -lt "$max_attempts" ]; do
        if ! check_process "$process_name"; then
            return 0
        fi
        sleep "$interval"
        attempts=$((attempts + 1))
    done

    return 1
}

set_port() {
    read -p "$(echo -e "$prompt_set_port")" choose

    if ! is_valid_port "$choose"; then
        echo "$msg_invalid_port"
        return 1
    fi

    if ! is_port_available "$choose"; then
        echo "$msg_port_in_use"
        return 1
    fi

    setConfig START_PORT "$choose"

    stop

    start
}

set_https_admin() {
    set_https

    stop

    start
}

set_https() {
    echo "$prompt_https_question"
    echo "$prompt_https_off"
    echo "$prompt_https_on"

    read -p "$(echo -e "$prompt_https_choose")" choose

    case $choose in
    1)
        setConfig ENABLE_WEB_TLS 0
        ;;
    2)
        setConfig ENABLE_WEB_TLS 1
        return
        ;;
    *)
        setConfig ENABLE_WEB_TLS 1
        echo "$prompt_https_invalid"
        return
        ;;
    esac
}

get_ip(){
    local IP=""

    if command -v curl >/dev/null 2>&1; then
        IP=$(curl -fsSL --max-time 2 https://ipv4.icanhazip.com 2>/dev/null | tr -d '[:space:]')
    fi

    if [ -z "$IP" ] && command -v wget >/dev/null 2>&1; then
        IP=$(wget -qO- -t1 -T2 ipv4.icanhazip.com | tr -d '[:space:]')
    fi

    if [ -z "$IP" ] && command -v ip >/dev/null 2>&1; then
        IP=$(ip -4 route get 1.1.1.1 2>/dev/null | awk '{for(i=1;i<=NF;i++) if($i=="src") print $(i+1)}' | head -n 1)
    fi

    if [ -z "$IP" ] && command -v hostname >/dev/null 2>&1; then
        IP=$(hostname -I 2>/dev/null | awk '{print $1}')
    fi

    echo "$IP"
}

ensure_runtime_files() {
    mkdir -p "$PATH_RUST"
    chmod 755 "$PATH_RUST"

    [ -f "$PATH_NOHUP" ] || touch "$PATH_NOHUP"
    [ -f "$PATH_ERR" ] || touch "$PATH_ERR"
    chmod 640 "$PATH_NOHUP" "$PATH_ERR"
}

create_systemd_service() {
    ensure_runtime_files

    cat > "/etc/systemd/system/${SERVICE_NAME}.service" <<EOF
[Unit]
Description=$APP_NAME
After=network-online.target
Wants=network-online.target

[Service]
Type=simple
WorkingDirectory=$PATH_RUST/
ExecStart=/bin/sh -c 'exec "\$1" >> "\$2" 2>> "\$3"' sh "$PATH_RUST/$PATH_EXEC" "$PATH_NOHUP" "$PATH_ERR"
Restart=always
RestartSec=3
LimitNOFILE=65535
TimeoutStopSec=5

[Install]
WantedBy=multi-user.target
EOF

    systemctl daemon-reload
}

remove_service_file() {
    if is_systemd_available; then
        systemctl disable --now "${SERVICE_NAME}.service" >/dev/null 2>&1
        rm -f -- "/etc/systemd/system/${SERVICE_NAME}.service"
        systemctl daemon-reload
    else
        sed -i "/${PATH_EXEC}/d" /etc/rc.local 2>/dev/null || true
    fi
}

sysctl_key_path() {
    local key="$1"

    echo "/proc/sys/${key//./\/}"
}

cleanup_global_network_optimization() {
    local keys=(
        fs.file-max fs.inotify.max_user_instances
        net.ipv4.tcp_congestion_control net.core.default_qdisc
        net.ipv4.tcp_fin_timeout net.ipv4.tcp_fastopen net.ipv4.tcp_fastopen_blackhole_timeout_sec
        net.ipv4.tcp_max_orphans net.ipv4.tcp_tw_reuse net.ipv4.ip_local_port_range
        net.ipv4.tcp_rmem net.ipv4.tcp_wmem net.ipv4.tcp_no_metrics_save
        net.ipv4.tcp_mtu_probing net.ipv4.tcp_notsent_lowat
        net.ipv4.tcp_syn_retries net.ipv4.tcp_synack_retries
        net.ipv4.tcp_keepalive_time net.ipv4.tcp_keepalive_intvl net.ipv4.tcp_keepalive_probes
        net.core.somaxconn net.core.rmem_max net.core.wmem_max
        net.core.rmem_default net.core.wmem_default
        net.core.netdev_max_backlog net.core.netdev_budget
        net.ipv4.tcp_max_tw_buckets net.ipv4.tcp_max_syn_backlog net.ipv4.tcp_slow_start_after_idle
        vm.swappiness vm.dirty_ratio vm.dirty_background_ratio
    )
    local files=("/etc/sysctl.conf")
    local f
    local key

    sed -i '/ulimit -SHn/d' /etc/profile 2>/dev/null || true
    touch /etc/sysctl.conf

    if [ -d /etc/sysctl.d ]; then
        while IFS= read -r f; do
            [ -f "$f" ] && files+=("$f")
        done < <(find /etc/sysctl.d -maxdepth 1 -name "*.conf" 2>/dev/null)
    fi

    for f in "${files[@]}"; do
        [ -f "$f" ] || continue
        sed -i "/^# === ${SYSCTL_TAG} network optimization begin ===/,/^# === ${SYSCTL_TAG} network optimization end ===/d" "$f"
        for key in "${keys[@]}"; do
            sed -i "/^[[:space:]]*${key}[[:space:]]*=/d" "$f"
        done
    done

    rm -f "/etc/sysctl.d/99-${SYSCTL_TAG}-optimize.conf" /etc/sysctl.d/99-tcpmux-optimize.conf 2>/dev/null || true
}

apply_sysctl_setting() {
    local key="$1"
    local value="$2"
    local output_file="$3"
    local available

    [ -e "$(sysctl_key_path "$key")" ] || return 1

    if [ "$key" = "net.ipv4.tcp_congestion_control" ]; then
        available=$(sysctl -n net.ipv4.tcp_available_congestion_control 2>/dev/null || true)
        [[ "$available" == *"$value"* ]] || return 1
    fi

    if sysctl -w "${key}=${value}" >/dev/null 2>&1; then
        echo "${key} = ${value}" >> "$output_file"
        return 0
    fi

    return 1
}

apply_global_network_optimization() {
    local sysctl_file="/etc/sysctl.conf"
    local applied_count=0

    if ! command -v sysctl >/dev/null 2>&1; then
        echo "$msg_limit_sysctl_missing"
        return 1
    fi

    cleanup_global_network_optimization

    {
        echo ""
        echo "# === ${SYSCTL_TAG} network optimization begin ==="
        echo "# Generated by install.sh. Menu 8 cleans these keys before writing again."
        echo "# File descriptors and TCP backlog"
    } >> "$sysctl_file"

    apply_sysctl_setting fs.file-max 1048576 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting fs.inotify.max_user_instances 8192 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.core.default_qdisc fq "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.tcp_congestion_control bbr "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.tcp_fastopen 3 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.tcp_fastopen_blackhole_timeout_sec 0 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.tcp_fin_timeout 15 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.tcp_max_orphans 262144 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.tcp_tw_reuse 1 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.tcp_max_tw_buckets 2000000 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.tcp_max_syn_backlog 65535 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.tcp_slow_start_after_idle 0 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.tcp_no_metrics_save 1 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.tcp_mtu_probing 1 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.tcp_notsent_lowat 16384 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.tcp_syn_retries 3 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.tcp_synack_retries 3 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.tcp_keepalive_time 600 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.tcp_keepalive_intvl 30 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.tcp_keepalive_probes 3 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.ip_local_port_range "10000 65535" "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.tcp_rmem "4096 87380 16777216" "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.ipv4.tcp_wmem "4096 65536 16777216" "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.core.somaxconn 65535 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.core.rmem_max 16777216 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.core.wmem_max 16777216 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.core.rmem_default 2097152 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.core.wmem_default 2097152 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.core.netdev_max_backlog 50000 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting net.core.netdev_budget 600 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting vm.swappiness 10 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting vm.dirty_ratio 10 "$sysctl_file" && applied_count=$((applied_count + 1))
    apply_sysctl_setting vm.dirty_background_ratio 5 "$sysctl_file" && applied_count=$((applied_count + 1))

    echo "# === ${SYSCTL_TAG} network optimization end ===" >> "$sysctl_file"

    mkdir -p /etc/security/limits.d
    cat > "/etc/security/limits.d/99-${SYSCTL_TAG}.conf" <<'EOF'
* soft nofile 1048576
* hard nofile 1048576
root soft nofile 1048576
root hard nofile 1048576
EOF

    if is_systemd_available; then
        mkdir -p /etc/systemd/system.conf.d /etc/systemd/user.conf.d
        cat > "/etc/systemd/system.conf.d/99-${SYSCTL_TAG}-limits.conf" <<'EOF'
[Manager]
DefaultLimitNOFILE=1048576
EOF
        cat > "/etc/systemd/user.conf.d/99-${SYSCTL_TAG}-limits.conf" <<'EOF'
[Manager]
DefaultLimitNOFILE=1048576
EOF
        systemctl daemon-reload
    fi

    sysctl -p "$sysctl_file" >/dev/null 2>&1 || true

    echo "${msg_limit_global_done} (${applied_count} sysctl)"
    echo "$msg_limit_reboot_required"
}

start() {
    # set_https

    echo "${msg_starting}..."
    check_process $PATH_EXEC

    if [ $? -eq 0 ]; then
        echo "${msg_already_running}"
        return
    else
        ensure_runtime_files

        if is_systemd_available; then
            create_systemd_service
            systemctl start "${SERVICE_NAME}.service"
        else
            nohup "$PATH_RUST/$PATH_EXEC" >> "$PATH_NOHUP" 2>> "$PATH_ERR" &
        fi

        if wait_for_process_started "$PATH_EXEC" 10; then
            clear   
            port=$(getConfig "START_PORT")
            https=$(getConfig "ENABLE_WEB_TLS")
            http_h="http://"
            http_t="$msg_http_tip"
            
            if [ "$https" = 0 ];then
                http_t="$msg_http_tip"
                http_h="http://"
            else
                http_t="$msg_https_tip"
                http_h="https://"
            fi

            show_start_success "${http_h}$(get_ip):${port}" "$http_t"
        else
            echo "${msg_start_failed}"
        fi
    fi
}

resetpass() {
    stop

    echo "$msg_delete_config"

    safe_remove_data_file "$PATH_D_1"
    safe_remove_data_file "$PATH_D_2"
    safe_remove_data_file "$PATH_D_3"

    start

    echo "${msg_password_reset_done}"
}

restart() {
    stop

    start
}

stop() {
    echo "${msg_terminating}"

    if is_systemd_available && [ -f "/etc/systemd/system/${SERVICE_NAME}.service" ]; then
        systemctl stop "${SERVICE_NAME}.service"
    fi

    if check_process "$PATH_EXEC"; then
        kill_process "$PATH_EXEC"
    else
        echo "${msg_process_not_found} $PATH_EXEC ${msg_process_label}."
    fi
}

kill_process() {
    local process_name="$1"
    local pids=($(pgrep -x "$process_name"))

    if [ ${#pids[@]} -eq 0 ]; then
        echo "${msg_process_not_found} $process_name ${msg_process_label}."
        return 1
    fi

    for pid in "${pids[@]}"; do
        echo "${msg_stopping_process} $pid ..."
        kill -TERM "$pid"
    done

    if wait_for_process_stopped "$process_name" 10; then
        echo "${msg_process_terminated} $process_name ."
    else
        echo "${msg_stop_timeout}: $process_name ."
        return 1
    fi
}

enable_autostart() {
    echo "${msg_enable_autostart}"
    if is_systemd_available; then
        create_systemd_service
        systemctl enable "${SERVICE_NAME}.service"
        systemctl start "${SERVICE_NAME}.service"
    else
        if [ ! -f /etc/rc.local ]; then
            printf "%s\n\n%s\n" "#!/bin/sh" "exit 0" > /etc/rc.local
        fi

        if ! grep -q "$PATH_RUST/$PATH_EXEC" /etc/rc.local; then
            sed -i "/^exit 0/i ${PATH_RUST}/${PATH_EXEC} >> ${PATH_NOHUP} 2>> ${PATH_ERR} &" /etc/rc.local 2>/dev/null || \
                echo "${PATH_RUST}/${PATH_EXEC} >> ${PATH_NOHUP} 2>> ${PATH_ERR} &" >> /etc/rc.local
        fi
        chmod +x /etc/rc.local
    fi
}

disable_autostart() {
    echo "${msg_disable_autostart}"
    if is_systemd_available; then
        systemctl disable "${SERVICE_NAME}.service"
    else
        sed -i "/${PATH_EXEC}/d" /etc/rc.local 2>/dev/null || true
    fi
}


ISSUE() {
    echo "$msg_version_example"
}

filterResult() {
    if [ "$1" -eq 0 ]; then
        echo ""
    else
        echo "!!!!!!!!!!!!!!!ERROR!!!!!!!!!!!!!!!!"
        echo "【${2}】${msg_failed}。"
	
        if [ -z "$3" ];then
            echo "!!!!!!!!!!!!!!!ERROR!!!!!!!!!!!!!!!!"
            exit 1
        fi
    fi
    echo -e
}

getConfig() {
    local key="$1"
    local value=""

    if [ -f "$PATH_CONFIG" ]; then
        value=$(sed -n "s/^[[:space:]]*${key}[[:space:]]*=[[:space:]]*\\(.*[^[:space:]]\\)\\([[:space:]]*\\)$/\\1/p" "$PATH_CONFIG")
    fi

    echo "$value"
}

setConfig() {
    if [ ! -f "$PATH_CONFIG" ]; then
        echo "${msg_config_missing}"
        mkdir -p "$PATH_RUST"
        chmod 755 "$PATH_RUST"
        touch "$PATH_CONFIG"

        chmod 600 "$PATH_CONFIG"

        echo "START_PORT=63521" >> "$PATH_CONFIG"
        echo "ENABLE_WEB_TLS=0" >> "$PATH_CONFIG"
    fi

    if grep -q "^$1=" "$PATH_CONFIG"; then
        # 如果key已经存在，则修改它的值
        sed -i "s/^$1=.*/$1=$2/" "$PATH_CONFIG"
        echo "${msg_config_updated}: $PATH_CONFIG"
    else
        # 如果key不存在，则添加新的key=value行
        echo "$1=$2" >> "$PATH_CONFIG"
        echo "${msg_config_added}: $PATH_CONFIG"
    fi

    echo "${msg_config_changed}: $1=$2"
}

# 关闭防火墙
disable_firewall() {
    local os_name="${OS_ID:-unknown}"
    echo "$msg_disable_firewall"

    if [ "$os_name" == "ubuntu" ] && command -v ufw >/dev/null 2>&1; then
        ufw disable
    elif [[ "$os_name" =~ ^(centos|rhel|rocky|almalinux|fedora)$ ]] && is_systemd_available; then
        systemctl stop firewalld
        systemctl disable firewalld
    else
        echo "$msg_unknown_os_firewall"
    fi
}

change_limit() {
    echo "${msg_change_limit}"

    apply_global_network_optimization
}

installapp() {
    local target_version="$1"
    local default_port
    local tmp_exec

    if [ -n "$1" ]; then
        if ! is_valid_version "$target_version"; then
            echo "$msg_invalid_version"
            return 1
        fi

        VERSION="$target_version"
        ORIGIN_EXEC="${DOWNLOAD_EXEC_PREFIX}-${target_version}"
    fi

    tmp_exec="${PATH_RUST}/${PATH_EXEC}.tmp"

    echo "$ORIGIN_EXEC"

    echo "${msg_install_start}${ORIGIN_EXEC}"

    disable_firewall

    check_process $PATH_EXEC
    
    if [ $? -eq 0 ]; then
        echo "${msg_running_detected}${PATH_EXEC}${msg_must_stop_before_install}"
        echo "${msg_enter_stop_running}${PATH_EXEC}${msg_or_cancel_install}"

        read -p "$(echo -e "${prompt_choose_short}[1-2]：")" choose
        case $choose in
        1)
            stop
            ;;
        2)
            echo "${msg_cancel_install}"
            return
            ;;
        *)
            echo "${msg_invalid_cancel_install}"
            return
            ;;
        esac
    fi

    echo "${msg_create_dir}"

    if [[ ! -d $PATH_RUST ]];then
        mkdir -p "$PATH_RUST"
        chmod 755 "$PATH_RUST"
    else
        printf "%b%s%b\n" "$YELLOW" "$msg_dir_exists" "$RESET"
    fi

    ensure_runtime_files

    if [[ ! -f $PATH_CONFIG ]];then
        default_port=$(generate_port)
        setConfig START_PORT "$default_port"
    fi

    change_limit

    echo "${msg_downloading}"

    rm -f -- "$tmp_exec"
    download_file "${DOWNLOAD_HOST}/${ORIGIN_EXEC}" "$tmp_exec"

    filterResult $? "${msg_download_program}"

    chmod 755 "$tmp_exec"
    mv -f "$tmp_exec" "${PATH_RUST}/${PATH_EXEC}"

    enable_autostart

    if check_process "$PATH_EXEC"; then
        clear
        port=$(getConfig "START_PORT")
        https=$(getConfig "ENABLE_WEB_TLS")
        http_h="http://"
        http_t="$msg_http_tip"

        if [ "$https" = 0 ]; then
            http_t="$msg_http_tip"
            http_h="http://"
        else
            http_t="$msg_https_tip"
            http_h="https://"
        fi

        show_start_success "${http_h}$(get_ip):${port}" "$http_t"
    else
        echo "${msg_start_failed}"
    fi
}

uninstall() {
    local confirm

    read -p "$(echo -e "$prompt_confirm_uninstall")" confirm
    if [ "$confirm" != "YES" ]; then
        echo "$msg_uninstall_cancelled"
        return
    fi

    stop

    disable_autostart
    remove_service_file
    safe_remove_install_dir || return 1

    echo "${msg_uninstall_done}"
}

check_hub() {
    echo "${msg_tail_hint}"
    tail -f $PATH_NOHUP
}

check_err() {
    echo "${msg_tail_hint}"
    tail -f $PATH_ERR
}

check_service_log() {
    if ! command -v journalctl >/dev/null 2>&1; then
        echo "$msg_journalctl_missing"
        return 1
    fi

    echo "${msg_service_log}: ${SERVICE_NAME}.service"
    echo "${msg_tail_hint}"
    journalctl -u "${SERVICE_NAME}.service" -n 100 -f
}

clearlog() {
    echo "${msg_clear_logs}"
    : > "$PATH_NOHUP" 2>/dev/null || touch "$PATH_NOHUP"
    : > "$PATH_ERR" 2>/dev/null || touch "$PATH_ERR"
    chmod 640 "$PATH_NOHUP" "$PATH_ERR" 2>/dev/null || true
    echo "${msg_clear_done}"
}


lookport() {
    port=$(getConfig "START_PORT")

    echo "${msg_current_web_port}${port}"
}

install_target() {
    echo "${msg_enter_release_version}"
    echo ""
    ISSUE
    echo ""
    read -p "$(echo -e "$prompt_enter_version")" choose

    if ! is_valid_version "$choose"; then
        echo "$msg_invalid_version"
        return 1
    fi

    installapp "$choose"
}

# -----------------------------------------------------------------------------
# Entrypoint
# -----------------------------------------------------------------------------

dispatch_menu_choice() {
    local choose="$1"

    case $choose in
    1)
        installapp "$VERSION"
        ;;
    2)
        update
        ;;
    3)
        install_target
        ;;
    4)
        start
        ;;
    5)
        stop
        ;;
    6)
        restart
        ;;
    7)
        set_port
        ;;
    8)
        change_limit
        ;;
    9)
        set_https_admin
        ;;
    10)
        enable_autostart
        ;;
    11)
        disable_autostart
        ;;
    12)
        check_service_log
        ;;
    13)
        check_hub
        ;;
    14)
        check_err
        ;;
    15)
        clearlog
        ;;
    16)
        lookport
        ;;
    17)
        uninstall
        ;;
    18)
        resetpass
        ;;
    *)
        echo "$prompt_error_command"
        ;;
    esac
}

main() {
    local choose

    select_language
    load_language
    clear
    require_root
    detect_system
    check_dependencies || exit 1
    show_main_menu
    read -p "$(echo -e "$prompt_choose_menu")" choose
    dispatch_menu_choice "$choose"
}

main "$@"
