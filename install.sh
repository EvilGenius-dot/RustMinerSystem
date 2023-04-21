#!/bin/bash

VERSION="0.9.93"
DOWNLOAD_HOST="https://github.com/EvilGenius-dot/RustMinerSystem/raw/main/linux"
ORIGIN_EXEC="rustminersystem-${VERSION}"

SERVICE_NAME="rustservice"

PATH_RUST="/root/rustminersystem"
PATH_EXEC="rustminersystem"

PATH_CONFIG="${PATH_RUST}/rust-config"
PATH_NOHUP="${PATH_RUST}/nohup.out"
PATH_ERR="${PATH_RUST}/err.log"
PATH_CUE="${PATH_RUST}/cue"

# 语言选择菜单
clear
echo "Please select your language / 请选择语言:"
# echo ""
echo "1. English"
echo "2. 中文"
# echo ""
read -p "$(echo -e "[1-2]：")" lang_choice

if [ "$lang_choice" = "1" ]; then
    prompt_title="---------- English Menu ----------"
    prompt_install="1. Install"
    prompt_update="2. Update"
    prompt_start="3. Start software"
    prompt_stop="4. Stop software"
    prompt_restart="5. Restart software"
    prompt_port="6. Modify startup port"
    prompt_ulimit="7. Remove Linux system connection limit (requires server restart to take effect)"
    prompt_auto_start="8. Set automatic startup"
    prompt_disable_auto_start="9. Disable automatic startup..."
    prompt_status="10. Check program running status"
    prompt_error_log="11. View error log"
    prompt_clear_log="12. Clear log files"
    prompt_web_port="13. View current WEB access port"
    prompt_uninstall="14. Uninstall"
    prompt_reset_pwd="15. Reset account password"
    prompt_target_version="16. Install specified version"
    prompt_root_no="Please run this script as root!"
    prompt_error_command="Invalid command entered. Please try again."
    prompt_msg_1="Start installation"
    prompt_msg_2="Disable firewall"
    prompt_msg_3="Unknown operating system, failed to disable firewall"
    m_4="Start program"
    m_5="Program is already running, please do not start it again."
    m_6="Program started successfully, WEB access port is"
    m_7="Default account is qzpm19kkx default password is xloqslz913"
    m_8="If you are using the default password and port, please change the account password and web access port in a timely manner through the web settings."
    m_9="Password reset completed, changed to default account password qzpm19kkx xloqslz913"
    m_10="Terminating process..."
    m_11="Not found"
    m_12="Process"
    m_13="Terminated"
    m_14="Set up automatic startup"
    m_15="Disable automatic startup..."
    m_16="Failed"
    m_17="Environment variable configuration file not found, creating one now"
    m_18="Modify system connection limit"
    m_19="Connection limit has been changed to 65535, please restart the server for the change to take effect"
    m_20="Current connection limit:"
    m_21="Modification completed, please restart the server for the change to take effect"
    m_22="Detected running"
    m_23=", it must be stopped before continuing with the installation."
    m_24="Enter 1 to stop the running"
    m_25="and continue with the installation, enter 2 to cancel the installation."
    m_26="Please choose"
    m_27="Cancel installation"
    m_28="Invalid input, cancelling installation."
    m_29="Creating directory"
    m_30="Directory already exists, no need to create it again, continuing with the installation."
    m_31="Downloading..."
    m_32="Downloading program"
    m_33="Uninstall completed"
    m_34="Press CTRL+C to run in the background"
    m_35="Cleaning up logs"
    m_36="Cleanup completed"
    m_37="Current WEB access port is"
    m_38="Enter the published version number to install:"
    m_39="Please enter the version number:"
    m_40="Program startup failure!!!"

elif [ "$lang_choice" = "2" ]; then
    prompt_title="---------- 中文菜单 ----------"
    prompt_install="1. 安装"
    prompt_update="2. 更新"
    prompt_start="3. 启动软件"
    prompt_stop="4. 停止软件"
    prompt_restart="5. 重启软件"
    prompt_port="6. 修改启动端口"
    prompt_ulimit="7. 解除Linux系统连接数限制（需要重启服务器生效）"
    prompt_auto_start="8. 设置开机启动"
    prompt_disable_auto_start="9. 关闭开机启动"
    prompt_status="10. 查看程序运行状态"
    prompt_error_log="11. 查看错误日志"
    prompt_clear_log="12. 清理日志文件"
    prompt_web_port="13. 查看当前WEB访问端口"
    prompt_uninstall="14. 卸载"
    prompt_reset_pwd="15. 重置认账号密码"
    prompt_target_version="16. 安装指定版本"
    prompt_root_no="请使用root用户运行此脚本！"
    prompt_error_command="输入了错误的指令, 请重新输入。"
    prompt_msg_1="开始安装"
    prompt_msg_2="关闭防火墙"
    prompt_msg_3="未知的操作系统, 关闭防火墙失败"
    m_4="启动程序"
    m_5="程序已经启动，请不要重复启动。"
    m_6="程序启动成功, WEB访问端口"
    m_7="默认账号 qzpm19kkx 默认密码 xloqslz913"
    m_8="如果您是默认密码及默认端口, 请及时在网页设置中修改账号密码及web访问端口。"
    m_9="重置密码完成, 已修改为默认账号密码 qzpm19kkx xloqslz913"
    m_10="终止进程..."
    m_11="未发现"
    m_12="进程"
    m_13="终止"
    m_14="设置开机启动"
    m_15="关闭开机启动..."
    m_16="失败"
    m_17="未发现环境变量配置文件, 开始创建"
    m_18="修改系统连接数限制"
    m_19="连接数限制已修改为65535,重启服务器后生效"
    m_20="当前连接数限制："
    m_21="修改完成, 重启服务器后生效"
    m_22="发现正在运行的"
    m_23=", 需要停止才可继续安装。"
    m_24="输入1停止正在运行的"
    m_25="并且继续安装, 输入2取消安装。"
    m_26="请选择"
    m_27="取消安装"
    m_28="输入错误, 取消安装。"
    m_29="开始创建目录"
    m_30="目录已存在, 无需重复创建, 继续执行安装。"
    m_31="开始下载..."
    m_32="下载程序"
    m_33="卸载完成"
    m_34="按住CTRL+C后台运行"
    m_35="清理日志"
    m_36="清理完成"
    m_37="当前WEB访问端口"
    m_38="输入已发布的版本来进行安装："
    m_39="请输入版本号："
    m_40="程序启动失败!!!"
else
  echo "无效的选择"
  exit 1
fi

clear

[ $(id -u) != "0" ] && { echo "$prompt_root_no"; exit 1; }

echo "$prompt_title"
echo "$prompt_install"
echo "$prompt_update"
echo "$prompt_start"
echo "$prompt_stop"
echo "$prompt_restart"
echo "$prompt_port"
echo "$prompt_ulimit"
echo "$prompt_auto_start"
echo "$prompt_disable_auto_start"
echo "$prompt_status"
echo "$prompt_error_log"
echo "$prompt_clear_log"
echo "$prompt_web_port"
echo "$prompt_uninstall"
echo "$prompt_reset_pwd"
echo "$prompt_target_version"

update() {
    stop

    disable_autostart

    installapp $VERSION
}


check_process() {
    if [[ $(uname) == "Linux" ]]; then
        if pgrep -x "$1" >/dev/null; then
            return 0
        else
            return 1
        fi
    else
        if ps aux | grep -v grep | grep "$1" >/dev/null; then
            return 0
        else
            return 1
        fi
    fi
}

set_port() {
    read -p "$(echo -e "请输入要设置的端口号：")" choose

    setConfig START_PORT $choose

    stop

    start
}

start() {
    echo $BLUE "${m_4}..."
    check_process $PATH_EXEC

    if [ $? -eq 0 ]; then
        echo "${m_5}"
        return
    else
        # cd $PATH_RUST

        # nohup "${PATH_RUST}/${PATH_EXEC}" 2>$PATH_ERR &

        enable_autostart

        sleep 1

        check_process $PATH_EXEC

        if [ $? -eq 0 ]; then
            port=$(getConfig "START_PORT")

            echo "|----------------------------------------------------------------|"
            echo "${m_6}${port}, ${m_7}"
            echo "${m_8}"
            echo "|----------------------------------------------------------------|"
        else
            echo "${m_40}"
        fi
    fi
}

resetpass() {
    stop

    rm -rf $PATH_CUE

    start

    echo "${m_9}"
}

restart() {
    stop

    start
}

stop() {
    sleep 1

    disable_autostart

    sleep 1

    echo "${m_10}"

    kill_process $PATH_EXEC
}

kill_process() {
    local process_name="$1"
  local pids=($(pgrep "$process_name"))
  if [ ${#pids[@]} -eq 0 ]; then
    echo "${m_11} $process_name ${m_12}."
    return 1
  fi
  for pid in "${pids[@]}"; do
    echo "Stopping process $pid ..."
    kill -TERM "$pid"
  done
  echo "${m_13} $process_name ."
}

# 设置开机启动且进程守护
enable_autostart() {
    echo "${m_14}"
    if [ "$(command -v systemctl)" ]; then
        sudo tee /etc/systemd/system/$SERVICE_NAME.service > /dev/null <<EOF
[Unit]
Description=My Program
After=network.target

[Service]
Type=simple
ExecStart=$PATH_RUST/$PATH_EXEC
WorkingDirectory=$PATH_RUST/
Restart=always
StandardOutput=file:$PATH_RUST/nohup.out
StandardError=file:$PATH_RUST/err.log
TimeoutStopSec=5

[Install]
WantedBy=multi-user.target
EOF
        sudo systemctl daemon-reload
        sudo systemctl enable $SERVICE_NAME.service
        sudo systemctl start $SERVICE_NAME.service
    else
        sudo sh -c "echo '${PATH_RUST}/${PATH_EXEC} &' >> /etc/rc.local"
        sudo chmod +x /etc/rc.local
    fi
}

# 禁用开机启动函数
disable_autostart() {
    echo "${m_15}"
    if [ "$(command -v systemctl)" ]; then
        sudo systemctl stop $SERVICE_NAME.service
        sudo systemctl disable $SERVICE_NAME.service
        sudo rm /etc/systemd/system/$SERVICE_NAME.service
        sudo systemctl daemon-reload
    else # 系统使用的是SysVinit
        sudo sed -i '/\/root\/rustminersystem\/rustminersystem\ &/d' /etc/rc.local
    fi
}


ISSUE() {
    echo "0.1.0"
    echo "0.1.2"
    echo "0.9.9"
    echo "0.9.91"
    echo "0.9.92"
    echo "0.9.93"
}

filterResult() {
    if [ $1 -eq 0 ]; then
        echo ""
    else
        echo "!!!!!!!!!!!!!!!ERROR!!!!!!!!!!!!!!!!"
        echo "【${2}】${m_16}。"
	
        if [ ! $3 ];then
            echo "!!!!!!!!!!!!!!!ERROR!!!!!!!!!!!!!!!!"
            exit 1
        fi
    fi
    echo -e
}

getConfig() {
    value=$(sed -n 's/^[[:space:]]*'$1'[[:space:]]*=[[:space:]]*\(.*[^[:space:]]\)\([[:space:]]*\)$/\1/p' $PATH_CONFIG)
    echo $value
}

setConfig() {
    if [ ! -f "$PATH_CONFIG" ]; then
        echo "${m_17}"
        
        touch $PATH_CONFIG

        chmod -R 777 $PATH_CONFIG

        echo "START_PORT=63521" >> $PATH_CONFIG
    fi

    TARGET_VALUE="$1=$2"

    line=$(sed -n '/'$1'/=' ${PATH_CONFIG})

    sed -i "${line} a $TARGET_VALUE" $PATH_CONFIG

    sed  -i  "$line d" $PATH_CONFIG

    echo "$1已修改为$2"
}

# 关闭防火墙
disable_firewall() {
    os_name=$(grep "^ID=" /etc/os-release | cut -d "=" -f 2 | tr -d '"')
    echo $prompt_msg_2

    if [ "$os_name" == "ubuntu" ]; then
        sudo ufw disable
    elif [ "$os_name" == "centos" ]; then
        sudo systemctl stop firewalld
        sudo systemctl disable firewalld
    else
        echo $prompt_msg_3
    fi
}

change_limit() {
    echo "${m_18}"

    changeLimit="n"

    if [[ -f /etc/debian_version ]]; then
    echo "soft nofile 65535" | sudo tee -a /etc/security/limits.conf
    echo "hard nofile 65535" | sudo tee -a /etc/security/limits.conf
    echo "fs.file-max = 100000" | sudo tee -a /etc/sysctl.conf
    sudo sysctl -p

    # add PAM configuration to enable the limits for login sessions
    if [[ -f /etc/pam.d/common-session ]]; then
        grep -q '^session.*pam_limits.so$' /etc/pam.d/common-session || sudo sh -c "echo 'session required pam_limits.so' >> /etc/pam.d/common-session"
        fi
    fi

    # set file descriptor limits for CentOS/RHEL
    if [[ -f /etc/redhat-release ]]; then
        echo "* soft nofile 65535" | sudo tee -a /etc/security/limits.conf
        echo "* hard nofile 65535" | sudo tee -a /etc/security/limits.conf
        echo "fs.file-max = 100000" | sudo tee -a /etc/sysctl.conf
        sudo sysctl -p
    fi

    # set file descriptor limits for macOS
    if [[ "$(uname)" == "Darwin" ]]; then
        sudo launchctl limit maxfiles 65535 65535
        sudo sysctl -w kern.maxfiles=100000
        sudo sysctl -w kern.maxfilesperproc=65535
    fi

    # set systemd file descriptor limits
    if [[ -x /bin/systemctl ]]; then
        echo "DefaultLimitNOFILE=65535" >>/etc/systemd/user.conf
        echo "DefaultLimitNOFILE=65535" >>/etc/systemd/system.conf
        systemctl daemon-reexec
    fi

    if [ $(grep -c "root soft nofile" /etc/security/limits.conf) -eq '0' ]; then
        echo "root soft nofile 65535" >>/etc/security/limits.conf
        echo "* soft nofile 65535" >>/etc/security/limits.conf
        changeLimit="y"
    fi

    if [ $(grep -c "root hard nofile" /etc/security/limits.conf) -eq '0' ]; then
        echo "root hard nofile 65535" >>/etc/security/limits.conf
        echo "* hard nofile 65535" >>/etc/security/limits.conf
        changeLimit="y"
    fi

    if [ $(grep -c "DefaultLimitNOFILE=65535" /etc/systemd/user.conf) -eq '0' ]; then
        echo "DefaultLimitNOFILE=65535" >>/etc/systemd/user.conf
        changeLimit="y"
    fi

    if [ $(grep -c "DefaultLimitNOFILE=65535" /etc/systemd/system.conf) -eq '0' ]; then
        echo "DefaultLimitNOFILE=65535" >>/etc/systemd/system.conf
        changeLimit="y"
    fi

    if [[ "$changeLimit" = "y" ]]; then
        echo "${m_19}"
    else
        echo -n "${m_20}"
        ulimit -n
    fi

    echo "${m_21}"
}

installapp() {
    if [ -n "$1" ]; then
        VERSION="$1"
        ORIGIN_EXEC="rustminersystem-${1}"
    fi

    echo $ORIGIN_EXEC

    echo "${prompt_msg_1}${ORIGIN_EXEC}"

    disable_firewall

    check_process $PATH_EXEC
    
    if [ $? -eq 0 ]; then
        echo "${m_22}${PATH_EXEC}${m_23}"
        echo "${m_24}${PATH_EXEC}${m_25}"

        read -p "$(echo -e "${m_26}[1-2]：")" choose
        case $choose in
        1)
            stop
            ;;
        2)
            echo "${m_27}"
            return
            ;;
        *)
            echo "${m_28}"
            return
            ;;
        esac
    fi

    echo "${m_29}"

    if [[ ! -d $PATH_RUST ]];then
        mkdir $PATH_RUST
        chmod 777 -R $PATH_RUST
    else
        echo $YELLOW "${m_30}"
    fi

    if [[ ! -d $PATH_NOHUP ]];then
        touch $PATH_NOHUP
        touch $PATH_ERR

        chmod 777 -R $PATH_NOHUP
        chmod 777 -R $PATH_ERR
    fi

    if [[ ! -f $PATH_CONFIG ]];then
        setConfig START_PORT $((RANDOM%65535+1))
    fi

    echo "${m_31}"

    wget -P $PATH_RUST "${DOWNLOAD_HOST}/${ORIGIN_EXEC}" -O "${PATH_RUST}/${PATH_EXEC}" 1>/dev/null

    filterResult $? "${m_32}"

    chmod 777 -R "${PATH_RUST}/${PATH_EXEC}"

    # enable_autostart

    start
}

uninstall() {
    stop

    rm -rf ${PATH_RUST}

    disable_autostart

    echo "${m_33}"
}

check_hub() {
    echo "${m_34}"
    tail -f $PATH_NOHUP
}

check_err() {
    echo "${m_34}"
    tail -f $PATH_ERR
}

clearlog() {
    echo "${m_35}"
    rm $PATH_NOHUP > /dev/null 2>&1
    rm $PATH_ERR > /dev/null 2>&1
    echo "${m_36}"
}


lookport() {
    port=$(getConfig "START_PORT")

    echo "${m_37}${port}"
}

install_target() {
    echo "${m_38}"
    echo ""
    ISSUE
    echo ""
    read -p "$(echo -e "${m_39}")" choose

    installapp $choose
}


read -p "$(echo -e "[1-16]：")" choose

case $choose in
1)
    installapp $VERSION
    ;;
2)
    update
    ;;
3)
    start
    ;;
4)
    stop
    ;;
5)
    restart
    ;;
6)
    set_port
    ;;
7)
    change_limit
    ;;
8)
    enable_autostart
    ;;
9)
    disable_autostart
    ;;
10)
    check_hub
    ;;
11)
    check_err
    ;;
12)
    clearlog
    ;;
13)
    lookport
    ;;
14)
    uninstall
    ;;
15)
    resetpass
    ;;
16)
    install_target
    ;;
*)
    echo $prompt_error_command
    ;;
esac