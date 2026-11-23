#!/usr/bin/env sh
# Trinh Cai Dat & Quan Ly Server Minecraft Da Nen Tang (Tat Ca Linux & macOS)
# Tieng Viet khong dau tranh loi font tren moi terminal.

SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
ROOT_DIR="$SCRIPT_DIR"
SERVER_DIR="$ROOT_DIR/server"
MODS_DIR="$SERVER_DIR/mods"
PLUGINS_DIR="$SERVER_DIR/plugins"
RUNTIME_DIR="$ROOT_DIR/runtime"
PLAYIT_DIR="$ROOT_DIR/playit"
WEB_DIR="$ROOT_DIR/web_panel"
LOGS_DIR="$ROOT_DIR/logs"
CONFIG_FILE="$ROOT_DIR/server_config.json"

INDEX_HTML_GZ_B64="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"
WEBSERVER_JAVA_GZ_B64="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"

decode_gz_b64() {
    b64="$1"
    dest="$2"
    mkdir -p "$(dirname "$dest")"
    if printf '%s' "$b64" | base64 -d 2>/dev/null | gzip -dc > "$dest" 2>/dev/null && [ -s "$dest" ]; then
        return 0
    fi
    if printf '%s' "$b64" | base64 -D 2>/dev/null | gzip -dc > "$dest" 2>/dev/null && [ -s "$dest" ]; then
        return 0
    fi
    if command -v openssl >/dev/null 2>&1; then
        if printf '%s\n' "$b64" | openssl base64 -d -A 2>/dev/null | gzip -dc > "$dest" 2>/dev/null && [ -s "$dest" ]; then
            return 0
        fi
    fi
    if command -v python3 >/dev/null 2>&1; then
        python3 -c "import sys,base64,gzip; open(sys.argv[1],'wb').write(gzip.decompress(base64.b64decode(sys.argv[2])))" "$dest" "$b64" && return 0
    fi
    return 1
}

extract_webgui_files() {
    mkdir -p "$WEB_DIR"
    decode_gz_b64 "$INDEX_HTML_GZ_B64" "$WEB_DIR/index.html"
    decode_gz_b64 "$WEBSERVER_JAVA_GZ_B64" "$WEB_DIR/WebServer.java"
}

ensure_config_file() {
    if [ ! -f "$CONFIG_FILE" ]; then
        cat > "$CONFIG_FILE" <<'EOF'
{
  "mc_version": "1.21.11",
  "loader": "fabric",
  "ram_min_mb": 4096,
  "ram_max_mb": 6144,
  "flag_profile": "meowice_g1gc",
  "server_jar": "server.jar",
  "web_port": 8888,
  "auto_playit": true
}
EOF
    fi
}

detect_os() {
    case "$(uname -s)" in
        Darwin*) echo "macos" ;;
        Linux*)  echo "linux" ;;
        *)       echo "linux" ;;
    esac
}

detect_arch() {
    case "$(uname -m)" in
        aarch64|arm64) echo "aarch64" ;;
        *)             echo "amd64" ;;
    esac
}

is_musl() {
    if [ -e /lib/ld-musl-x86_64.so.1 ] || [ -e /lib/ld-musl-aarch64.so.1 ]; then
        return 0
    fi
    if ldd --version 2>&1 | grep -qi "musl"; then
        return 0
    fi
    return 1
}

read_cfg_str() {
    key="$1"
    def="$2"
    if [ ! -f "$CONFIG_FILE" ]; then
        echo "$def"; return
    fi
    val="$(grep "\"$key\"" "$CONFIG_FILE" 2>/dev/null | head -n 1 | sed -n 's/.*:[[:space:]]*"\([^"]*\)".*/\1/p')"
    if [ -z "$val" ]; then echo "$def"; else echo "$val"; fi
}

read_cfg_int() {
    key="$1"
    def="$2"
    if [ ! -f "$CONFIG_FILE" ]; then
        echo "$def"; return
    fi
    val="$(grep "\"$key\"" "$CONFIG_FILE" 2>/dev/null | head -n 1 | sed -n 's/.*:[[:space:]]*\([0-9][0-9]*\).*/\1/p')"
    if [ -z "$val" ]; then echo "$def"; else echo "$val"; fi
}

write_cfg() {
    mc_v="$1"; ldr="$2"; rmin="$3"; rmax="$4"; fprof="$5"; wport="$6"
    cat > "$CONFIG_FILE" <<EOF
{
  "mc_version": "$mc_v",
  "loader": "$ldr",
  "ram_min_mb": $rmin,
  "ram_max_mb": $rmax,
  "flag_profile": "$fprof",
  "server_jar": "server.jar",
  "web_port": $wport,
  "auto_playit": true
}
EOF
}

run_pkg_install() {
    pkgs="$*"
    SUDO=""
    if [ "$(id -u)" -ne 0 ] && command -v sudo >/dev/null 2>&1; then
        SUDO="sudo"
    fi
    if command -v apt-get >/dev/null 2>&1; then
        $SUDO apt-get update -qq && $SUDO apt-get install -y -qq $pkgs
    elif command -v dnf >/dev/null 2>&1; then
        $SUDO dnf install -y -q $pkgs
    elif command -v yum >/dev/null 2>&1; then
        $SUDO yum install -y -q $pkgs
    elif command -v pacman >/dev/null 2>&1; then
        $SUDO pacman -Sy --noconfirm --needed $pkgs
    elif command -v zypper >/dev/null 2>&1; then
        $SUDO zypper --non-interactive install -y $pkgs
    elif command -v apk >/dev/null 2>&1; then
        $SUDO apk add --no-cache $pkgs
    elif command -v xbps-install >/dev/null 2>&1; then
        $SUDO xbps-install -Sy $pkgs
    elif command -v emerge >/dev/null 2>&1; then
        $SUDO emerge --quiet $pkgs
    elif command -v eopkg >/dev/null 2>&1; then
        $SUDO eopkg install -y $pkgs
    elif command -v nix-env >/dev/null 2>&1; then
        nix-env -iA nixpkgs.curl nixpkgs.gnutar nixpkgs.gzip
    elif command -v brew >/dev/null 2>&1; then
        brew install $pkgs
    fi
}

ensure_base_tools() {
    missing=""
    if ! command -v curl >/dev/null 2>&1 && ! command -v wget >/dev/null 2>&1; then
        missing="$missing curl"
    fi
    if ! command -v tar >/dev/null 2>&1; then
        missing="$missing tar"
    fi
    if [ -n "$missing" ]; then
        run_pkg_install $missing
    fi
}

http_get_stdout() {
    url="$1"
    if command -v curl >/dev/null 2>&1; then
        curl -fsSL -A "MC-Server-Manager-VN/1.0" "$url"
    elif command -v wget >/dev/null 2>&1; then
        wget -qO- --user-agent="MC-Server-Manager-VN/1.0" "$url"
    else
        return 1
    fi
}

http_download() {
    url="$1"
    dest="$2"
    mkdir -p "$(dirname "$dest")"
    if command -v curl >/dev/null 2>&1; then
        curl -fsSL -A "MC-Server-Manager-VN/1.0" "$url" -o "$dest"
    elif command -v wget >/dev/null 2>&1; then
        wget -q --user-agent="MC-Server-Manager-VN/1.0" "$url" -O "$dest"
    else
        return 1
    fi
}

java_major_ver() {
    jbin="$1"
    [ -x "$jbin" ] || return 1
    ver_str="$("$jbin" -version 2>&1 | head -n 1 | sed -n 's/.*version "\([0-9][0-9]*\).*/\1/p')"
    if [ -n "$ver_str" ] && [ "$ver_str" -ge 21 ] 2>/dev/null; then
        return 0
    fi
    return 1
}

find_java() {
    if [ -d "$RUNTIME_DIR" ]; then
        local_j="$(find "$RUNTIME_DIR" -type f -name "java" 2>/dev/null | head -n 1)"
        if [ -n "$local_j" ] && java_major_ver "$local_j"; then
            echo "$local_j"
            return 0
        fi
    fi
    if command -v java >/dev/null 2>&1; then
        sys_j="$(command -v java)"
        if java_major_ver "$sys_j"; then
            echo "$sys_j"
            return 0
        fi
    fi
    return 1
}

install_java_silent() {
    if find_java >/dev/null 2>&1; then
        return 0
    fi
    mkdir -p "$RUNTIME_DIR"
    ensure_base_tools
    os="$(detect_os)"
    arch="$(detect_arch)"
    dl_url=""

    if [ "$os" = "linux" ] && ! is_musl; then
        if [ "$arch" = "aarch64" ]; then
            pat="linux-aarch64_bin\.tar\.gz"
        else
            pat="linux-x64_bin\.tar\.gz"
        fi
        dl_url="$(http_get_stdout "https://api.github.com/repos/graalvm/graalvm-ce-builds/releases/latest" | grep -o "https://[^\"]*${pat}" | head -n 1)"
    elif [ "$os" = "macos" ] && [ "$arch" = "aarch64" ]; then
        pat="macos-aarch64_bin\.tar\.gz"
        dl_url="$(http_get_stdout "https://api.github.com/repos/graalvm/graalvm-ce-builds/releases/latest" | grep -o "https://[^\"]*${pat}" | head -n 1)"
    fi

    if [ -z "$dl_url" ]; then
        ad_os="$os"
        [ "$os" = "macos" ] && ad_os="mac"
        if [ "$os" = "linux" ] && is_musl; then
            ad_os="alpine-linux"
        fi
        ad_arch="x64"
        [ "$arch" = "aarch64" ] && ad_arch="aarch64"
        dl_url="https://api.adoptium.net/v3/binary/latest/21/ga/${ad_os}/${ad_arch}/jdk/hotspot/normal/eclipse"
    fi

    pkg_file="$RUNTIME_DIR/java_pkg.tar.gz"
    http_download "$dl_url" "$pkg_file"
    tar -xzf "$pkg_file" -C "$RUNTIME_DIR"
    rm -f "$pkg_file"
    find "$RUNTIME_DIR" -type f -name "java" -exec chmod +x {} + 2>/dev/null || true
}

build_flags_string() {
    prof="$1"
    ram_max="$2"
    arch="$(detect_arch)"
    if [ "$prof" = "default" ]; then
        echo ""
        return
    fi
    if [ "$prof" = "aikar" ]; then
        echo "--add-modules=jdk.incubator.vector -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+IgnoreUnrecognizedVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true"
        return
    fi
    if [ "$prof" = "etil_flags" ]; then
        if [ "$ram_max" -gt 12288 ] 2>/dev/null; then
            g_new=40; g_max=50; g_reg="16M"; g_res=15; g_ihop=20
        else
            g_new=30; g_max=40; g_reg="8M"; g_res=20; g_ihop=15
        fi
        f="-XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+UnlockDiagnosticVMOptions -XX:+IgnoreUnrecognizedVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=${g_new} -XX:G1MaxNewSizePercent=${g_max} -XX:G1HeapRegionSize=${g_reg} -XX:G1ReservePercent=${g_res} -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=${g_ihop} -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -XX:-UseBiasedLocking -XX:+UseStringDeduplication -XX:+UseFastUnorderedTimeStamps -XX:+UseAES -XX:+UseAESIntrinsics -XX:+UseFMA -XX:AllocatePrefetchStyle=1 -XX:+UseLoopPredicate -XX:+RangeCheckElimination -XX:+EliminateLocks -XX:+DoEscapeAnalysis -XX:+UseCodeCacheFlushing -XX:+SegmentedCodeCache -XX:+UseFastJNIAccessors -XX:+OptimizeStringConcat -XX:+UseCompressedOops -XX:+UseThreadPriorities -XX:+OmitStackTraceInFastThrow -XX:+TrustFinalNonStaticFields -XX:ThreadPriorityPolicy=1 -XX:+UseInlineCaches -XX:+RewriteBytecodes -XX:+RewriteFrequentPairs -XX:+UseNUMA -XX:-DontCompileHugeMethods -XX:+UseFPUForSpilling -XX:+UseNewLongLShift -XX:+UseVectorCmov -XX:+UseXMMForArrayCopy -Dfile.encoding=UTF-8 -Djava.security.egd=file:/dev/urandom --add-modules=jdk.incubator.vector"
        if [ "$arch" != "aarch64" ]; then
            f="$f -XX:UseAVX=3 -XX:UseSSE=4 -XX:+UseFastStosb -XX:+UseXmmI2D -XX:+UseXmmI2F -XX:+UseXmmLoadAndClearUpper -XX:+UseXmmRegToRegMoveAll"
        fi
        echo "$f"
        return
    fi

    # MeowIce Flags (GraalVM CE compatible)
    if [ "$prof" = "meowice_zgc" ]; then
        soft_max=$((ram_max - 2048))
        [ "$soft_max" -lt 1024 ] && soft_max=1024
        gc="--add-modules=jdk.incubator.vector -XX:+UseZGC -XX:-ZProactive -XX:SoftMaxHeapSize=${soft_max}M -XX:+UnlockExperimentalVMOptions -XX:+UnlockDiagnosticVMOptions -XX:+IgnoreUnrecognizedVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:+PerfDisableSharedMem -XX:+UseNUMA -XX:-DontCompileHugeMethods -XX:MaxNodeLimit=240000 -XX:NodeLimitFudgeFactor=8000 -XX:ReservedCodeCacheSize=400M -XX:NonNMethodCodeHeapSize=12M -XX:ProfiledCodeHeapSize=194M -XX:NonProfiledCodeHeapSize=194M -XX:NmethodSweepActivity=1 -XX:+UseCriticalJavaThreadPriority -XX:AllocatePrefetchStyle=1 -XX:+AlwaysActAsServerClassMachine -XX:+UseTransparentHugePages -XX:LargePageSizeInBytes=2M -XX:+UseLargePages -XX:+EagerJVMCI -XX:+UseStringDeduplication"
    else
        gc="--add-modules=jdk.incubator.vector -XX:+UseG1GC -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+UnlockDiagnosticVMOptions -XX:+IgnoreUnrecognizedVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=28 -XX:G1MaxNewSizePercent=50 -XX:G1HeapRegionSize=16M -XX:G1ReservePercent=15 -XX:G1MixedGCCountTarget=3 -XX:InitiatingHeapOccupancyPercent=20 -XX:G1MixedGCLiveThresholdPercent=90 -XX:SurvivorRatio=32 -XX:G1HeapWastePercent=5 -XX:+PerfDisableSharedMem -XX:G1SATBBufferEnqueueingThresholdPercent=30 -XX:G1ConcMarkStepDurationMillis=5 -XX:G1RSetUpdatingPauseTimePercent=0 -XX:+UseNUMA -XX:-DontCompileHugeMethods -XX:MaxNodeLimit=240000 -XX:NodeLimitFudgeFactor=8000 -XX:ReservedCodeCacheSize=400M -XX:NonNMethodCodeHeapSize=12M -XX:ProfiledCodeHeapSize=194M -XX:NonProfiledCodeHeapSize=194M -XX:NmethodSweepActivity=1 -XX:+UseCriticalJavaThreadPriority -XX:AllocatePrefetchStyle=3 -XX:+AlwaysActAsServerClassMachine -XX:+UseTransparentHugePages -XX:LargePageSizeInBytes=2M -XX:+UseLargePages -XX:+EagerJVMCI -XX:+UseStringDeduplication"
    fi

    common="-XX:+UseAES -XX:+UseAESIntrinsics -XX:+UseFMA -XX:+UseLoopPredicate -XX:+RangeCheckElimination -XX:+OptimizeStringConcat -XX:+UseCompressedOops -XX:+UseThreadPriorities -XX:+OmitStackTraceInFastThrow -XX:+RewriteBytecodes -XX:+RewriteFrequentPairs -XX:+UseFPUForSpilling -XX:+UseNewLongLShift -XX:+UseVectorCmov -XX:+UseXMMForArrayCopy -XX:+EliminateLocks -XX:+DoEscapeAnalysis -XX:+AlignVector -XX:+OptimizeFill -XX:+EnableVectorSupport -XX:+UseCharacterCompareIntrinsics -XX:+UseCopySignIntrinsic -XX:+UseVectorStubs -XX:+UseFastJNIAccessors -XX:+UseInlineCaches -XX:+SegmentedCodeCache -XX:+UseCompactObjectHeaders -Djdk.nio.maxCachedBufferSize=262144 -Djdk.graal.UsePriorityInlining=true -Djdk.graal.Vectorization=true -Djdk.graal.OptDuplication=true -Djdk.graal.DetectInvertedLoopsAsCounted=true -Djdk.graal.LoopInversion=true -Djdk.graal.VectorizeHashes=true -Djdk.graal.StripMineNonCountedLoops=true -Djdk.graal.SpeculativeGuardMovement=true -Djdk.graal.TuneInlinerExploration=1 -Djdk.graal.LoopRotation=true -Djdk.graal.CompilerConfiguration=community -DLeaf.enableFMA=true"
    if [ "$arch" != "aarch64" ]; then
        common="$common -XX:+UseFastStosb -XX:+UseXmmI2D -XX:+UseXmmI2F -XX:+UseXmmLoadAndClearUpper -XX:+UseXmmRegToRegMoveAll -XX:UseAVX=2 -XX:UseSSE=4"
    fi
    echo "$gc $common"
}

regen_startup_scripts() {
    mkdir -p "$SERVER_DIR"
    rmin="$(read_cfg_int ram_min_mb 4096)"
    rmax="$(read_cfg_int ram_max_mb 6144)"
    fprof="$(read_cfg_str flag_profile meowice_g1gc)"
    ldr="$(read_cfg_str loader fabric)"
    flags_str="$(build_flags_string "$fprof" "$rmax")"

    printf "# Auto-generated by MC Server Manager\n-Xms%sM\n-Xmx%sM\n" "$rmin" "$rmax" > "$SERVER_DIR/user_jvm_args.txt"
    for f in $flags_str; do
        printf "%s\n" "$f" >> "$SERVER_DIR/user_jvm_args.txt"
    done

    unix_args=""
    if [ -d "$SERVER_DIR/libraries" ]; then
        unix_args="$(find "$SERVER_DIR/libraries" -type f -name "unix_args.txt" 2>/dev/null | head -n 1)"
    fi
    if { [ "$ldr" = "forge" ] || [ "$ldr" = "neoforge" ]; } && [ -n "$unix_args" ]; then
        rel_args="${unix_args#$SERVER_DIR/}"
        target="@user_jvm_args.txt @${rel_args} nogui"
    else
        target="-Xms${rmin}M -Xmx${rmax}M ${flags_str} -jar server.jar nogui"
    fi

    cat > "$SERVER_DIR/start_server.sh" <<EOF
#!/usr/bin/env sh
cd "\$(dirname "\$0")"
JAVA_BIN="\$(find ../runtime -type f -name java 2>/dev/null | head -n 1)"
if [ -z "\$JAVA_BIN" ]; then JAVA_BIN="java"; fi
exec "\$JAVA_BIN" $target
EOF
    chmod +x "$SERVER_DIR/start_server.sh"
}

run_java_cli() {
    install_java_silent
    jbin="$(find_java)"
    if [ -z "$jbin" ]; then
        echo "Khong tim thay Java 21+ sau khi cai dat." >&2
        return 1
    fi
    if [ -f "$WEB_DIR/WebServer.java" ]; then
        cd "$ROOT_DIR" && "$jbin" "$WEB_DIR/WebServer.java" --cli "$@"
        return $?
    fi
    tmp_java="/tmp/mc_webserver_$$.java"
    decode_gz_b64 "$WEBSERVER_JAVA_GZ_B64" "$tmp_java" || return 1
    cd "$ROOT_DIR" && "$jbin" "$tmp_java" --cli "$@"
    rc=$?
    rm -f "$tmp_java"
    return "$rc"
}

# ==================== SILENT TIMER RUNNER ====================

run_silent_task() {
    title="$1"
    shift
    mkdir -p "$LOGS_DIR"
    log_file="$LOGS_DIR/install_unix_silent.log"
    : > "$log_file"

    ( "$@" ) >"$log_file" 2>&1 &
    pid=$!
    start_ts="$(date +%s)"
    printf "\n"
    while kill -0 "$pid" 2>/dev/null; do
        now_ts="$(date +%s)"
        elapsed=$((now_ts - start_ts))
        mins=$((elapsed / 60))
        secs=$((elapsed % 60))
        printf "\r  [DANG CAI DAT] %s... | Thoi gian: %02d:%02ds   " "$title" "$mins" "$secs"
        sleep 1
    done
    wait "$pid"
    rc=$?
    end_ts="$(date +%s)"
    total=$((end_ts - start_ts))
    tmins=$((total / 60))
    tsecs=$((total % 60))
    printf "\r                                                                                \r"
    if [ "$rc" -eq 0 ]; then
        printf "  [HOAN THANH] Cai dat thanh cong %s! (Tong thoi gian: %02d:%02ds)\n" "$title" "$tmins" "$tsecs"
    else
        printf "  [LOI] Qua trinh cai dat '%s' that bai sau %02d:%02ds.\n" "$title" "$tmins" "$tsecs"
        tail -n 5 "$log_file" 2>/dev/null | sed 's/^/  Chi tiet: /'
    fi
    return "$rc"
}

task_full_auto() {
    ensure_config_file
    install_java_silent
    extract_webgui_files
    run_java_cli full-auto
}

task_install_mc() {
    ensure_config_file
    install_java_silent
    run_java_cli install-mc "$1" "$2"
}

task_install_playit() {
    install_java_silent
    run_java_cli install-playit
}

task_install_webgui() {
    ensure_config_file
    install_java_silent
    extract_webgui_files
    regen_startup_scripts
}

# ==================== CLI ARGS ====================

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo "Su dung: sh install_linux_mac.sh [--test-config | --help]"
    exit 0
fi

if [ "$1" = "--test-config" ]; then
    mc_v="$(read_cfg_str mc_version 1.21.11)"
    ldr="$(read_cfg_str loader fabric)"
    f_g1="$(build_flags_string meowice_g1gc 6144)"
    f_zgc="$(build_flags_string meowice_zgc 32768)"
    f_etil="$(build_flags_string etil_flags 6144)"
    echo "TEST_CONFIG_OK"
    echo "OS=$(detect_os) ARCH=$(detect_arch) MC=$mc_v LOADER=$ldr"
    echo "FLAGS_LEN: G1=${#f_g1} ZGC=${#f_zgc} ETIL=${#f_etil}"
    exit 0
fi

# ==================== INTERACTIVE MENUS ====================

pause_enter() {
    printf "\n  Nhan Enter de tiep tuc..."
    read -r _dummy
}

menu_version_loader() {
    mc_cur="$(read_cfg_str mc_version 1.21.11)"
    ldr_cur="$(read_cfg_str loader fabric)"
    echo ""
    echo "  --- CHON PHIEN BAN MINECRAFT ---"
    echo "  [1] 1.21.11 (Mac dinh moi nhat)"
    echo "  [2] 1.21.10"
    echo "  [3] 1.21.8"
    echo "  [4] 1.21.4"
    echo "  [5] 1.20.4"
    echo "  [6] 1.20.1"
    echo "  [7] Tu nhap phien ban khac (vd: 1.16.5, 1.12.2)"
    printf "  Chon phien ban [1-7, Enter = %s]: " "$mc_cur"
    read -r vc
    case "$vc" in
        1) ver="1.21.11" ;;
        2) ver="1.21.10" ;;
        3) ver="1.21.8" ;;
        4) ver="1.21.4" ;;
        5) ver="1.20.4" ;;
        6) ver="1.20.1" ;;
        7) printf "  Nhap phien ban MC: "; read -r ver ;;
        *) ver="$mc_cur" ;;
    esac
    [ -z "$ver" ] && ver="$mc_cur"

    echo ""
    echo "  --- CHON LOADER / NHAN SERVER ---"
    echo "  [1] Fabric   (Mod nhe, toi uu TPS)"
    echo "  [2] PaperMC  (Plugin pho bien)"
    echo "  [3] Purpur   (Plugin tuy bien cao)"
    echo "  [4] LeafMC   (Plugin toi uu nhat cho MeowIce Flags)"
    echo "  [5] NeoForge (Mod hien dai 1.20.2+)"
    echo "  [6] Forge    (Mod truyen thong)"
    echo "  [7] Vanilla  (Goc Mojang)"
    printf "  Chon loader [1-7, Enter = %s]: " "$ldr_cur"
    read -r lc
    case "$lc" in
        1) ldr="fabric" ;;
        2) ldr="paper" ;;
        3) ldr="purpur" ;;
        4) ldr="leaf" ;;
        5) ldr="neoforge" ;;
        6) ldr="forge" ;;
        7) ldr="vanilla" ;;
        *) ldr="$ldr_cur" ;;
    esac

    run_silent_task "Server MC $ver ($ldr)" task_install_mc "$ver" "$ldr"
}

menu_mods_plugins() {
    while true; do
        mc_cur="$(read_cfg_str mc_version 1.21.11)"
        ldr_cur="$(read_cfg_str loader fabric)"
        echo ""
        echo "  === CHE DO 3: CAI DAT GOI MOD / PLUGIN ($mc_cur | $ldr_cur) ==="
        echo "  [1] Cai goi Mod Toi Uu Co Ban (Fabric API + Lithium + FerriteCore + Spark + Chunky)"
        echo "  [2] Cai goi Plugin Co Ban (Spark + Chunky + ViaVersion + ViaBackwards + LuckPerms)"
        echo "  [3] Cai 1 Mod/Plugin theo ten/slug Modrinth"
        echo "  [4] Cai Mod/Plugin tu link URL (.jar)"
        echo "  [5] Xem danh sach Mod/Plugin da cai"
        echo "  [0] Quay lai menu chinh"
        printf "  Lua chon: "
        read -r mc
        case "$mc" in
            1) run_silent_task "Goi Mod Toi Uu Co Ban" run_java_cli install-pack mod_opt; pause_enter ;;
            2) run_silent_task "Goi Plugin Co Ban" run_java_cli install-pack plugin_base; pause_enter ;;
            3)
                printf "  Nhap slug Modrinth (vd: lithium, spark, luckperms): "
                read -r slug
                [ -n "$slug" ] && run_silent_task "Mod/Plugin '$slug'" run_java_cli install-mod "$slug"
                pause_enter
                ;;
            4)
                printf "  Dan URL truc tiep file .jar: "
                read -r jurl
                [ -n "$jurl" ] && run_silent_task "File tu URL" run_java_cli install-url "$jurl"
                pause_enter
                ;;
            5)
                echo "  --- Thu muc mods/ ---"
                ls -1 "$MODS_DIR" 2>/dev/null || true
                echo "  --- Thu muc plugins/ ---"
                ls -1 "$PLUGINS_DIR" 2>/dev/null || true
                pause_enter
                ;;
            0) return ;;
        esac
    done
}

menu_ram_flags() {
    mc_cur="$(read_cfg_str mc_version 1.21.11)"
    ldr_cur="$(read_cfg_str loader fabric)"
    rmin="$(read_cfg_int ram_min_mb 4096)"
    rmax="$(read_cfg_int ram_max_mb 6144)"
    fprof="$(read_cfg_str flag_profile meowice_g1gc)"
    wport="$(read_cfg_int web_port 8888)"

    echo ""
    echo "  === CAU HINH RAM & CHON BO JVM FLAGS ==="
    printf "  Nhap RAM Min -Xms (MB) [Enter = %s]: " "$rmin"; read -r in_min
    printf "  Nhap RAM Max -Xmx (MB) [Enter = %s]: " "$rmax"; read -r in_max
    [ -n "$in_min" ] && rmin="$in_min"
    [ -n "$in_max" ] && rmax="$in_max"

    echo ""
    echo "  Chon bo Startup Flags:"
    echo "  [1] MeowIce Flags - G1GC (Khuyen nghi < 32GB RAM, GraalVM/JDK 21-25)"
    echo "  [2] MeowIce Flags - ZGC  (Server >= 32GB RAM, 10+ CPU Cores)"
    echo "  [3] Etil Minecraft Flags (G1GC toi uu cho Adoptium/HotSpot)"
    echo "  [4] Aikar Flags          (Co dien)"
    echo "  [5] Mac dinh             (Khong dung Flags)"
    printf "  Chon [1-5, Enter = %s]: " "$fprof"; read -r fc
    case "$fc" in
        1) fprof="meowice_g1gc" ;;
        2) fprof="meowice_zgc" ;;
        3) fprof="etil_flags" ;;
        4) fprof="aikar" ;;
        5) fprof="default" ;;
    esac

    write_cfg "$mc_cur" "$ldr_cur" "$rmin" "$rmax" "$fprof" "$wport"
    regen_startup_scripts
    echo "  [HOAN THANH] Da cap nhat RAM & Flags ($fprof)!"
    pause_enter
}

menu_properties() {
    mkdir -p "$SERVER_DIR"
    prop="$SERVER_DIR/server.properties"
    if [ ! -f "$prop" ]; then
        cat > "$prop" <<'EOF'
online-mode=false
max-players=20
gamemode=survival
difficulty=normal
server-port=25565
view-distance=10
pvp=true
white-list=false
motd=Minecraft 1.21.11 Server - MeowIce Flags + Playit.gg
EOF
    fi
    echo ""
    echo "  === CHINH SUA SERVER.PROPERTIES ==="
    printf "  Cho phep TK Cracked/TLauncher? (online-mode=false) [y/n, Enter giu nguyen]: "
    read -r om
    if [ "$om" = "y" ]; then
        sed 's/^online-mode=.*/online-mode=false/' "$prop" > "$prop.tmp" && mv "$prop.tmp" "$prop"
    elif [ "$om" = "n" ]; then
        sed 's/^online-mode=.*/online-mode=true/' "$prop" > "$prop.tmp" && mv "$prop.tmp" "$prop"
    fi
    printf "  So nguoi choi toi da (max-players) [Enter giu nguyen]: "
    read -r mp
    [ -n "$mp" ] && sed "s/^max-players=.*/max-players=$mp/" "$prop" > "$prop.tmp" && mv "$prop.tmp" "$prop"
    printf "  Ten hien thi server (motd) [Enter giu nguyen]: "
    read -r mt
    if [ -n "$mt" ]; then
        grep -v "^motd=" "$prop" > "$prop.tmp"
        printf "motd=%s\n" "$mt" >> "$prop.tmp"
        mv "$prop.tmp" "$prop"
    fi
    echo "  [HOAN THANH] Da luu server.properties!"
    pause_enter
}

start_web_gui() {
    if [ ! -f "$WEB_DIR/WebServer.java" ] || ! find_java >/dev/null 2>&1; then
        run_silent_task "Giao Dien Quan Ly Web GUI & Java" task_install_webgui
    fi
    jbin="$(find_java)"
    if [ -z "$jbin" ]; then
        echo "  [LOI] Khong tim thay Java 21+."
        pause_enter; return
    fi
    wport="$(read_cfg_int web_port 8888)"
    echo "  Dang khoi dong Giao Dien Quan Ly Web GUI tai http://127.0.0.1:$wport ..."
    cd "$ROOT_DIR" && "$jbin" "$WEB_DIR/WebServer.java" --port "$wport" &
    wpid=$!
    sleep 2
    if command -v open >/dev/null 2>&1; then
        open "http://127.0.0.1:$wport" 2>/dev/null || true
    elif command -v xdg-open >/dev/null 2>&1; then
        xdg-open "http://127.0.0.1:$wport" 2>/dev/null || true
    fi
    echo "  Truy cap trinh duyet: http://127.0.0.1:$wport"
    echo "  Nhan Enter de tat Web GUI va quay lai menu..."
    read -r _stop
    kill "$wpid" 2>/dev/null || true
}

start_mc_server() {
    if [ ! -f "$SERVER_DIR/start_server.sh" ]; then
        echo "  [CANH BAO] Chua cai dat Server Minecraft. Hay chon Che Do 1 hoac 2 truoc!"
        pause_enter; return
    fi
    printf "  Bat kem Playit.gg de ban be vao choi chung? [Y/n]: "
    read -r ans
    playit_pid=""
    if [ "$ans" != "n" ] && [ "$ans" != "N" ]; then
        pbin=""
        [ -d "$PLAYIT_DIR" ] && pbin="$(find "$PLAYIT_DIR" -type f -name "playit*" 2>/dev/null | head -n 1)"
        if [ -z "$pbin" ]; then
            run_silent_task "Playit.gg Tunnel" task_install_playit
            pbin="$(find "$PLAYIT_DIR" -type f -name "playit*" 2>/dev/null | head -n 1)"
        fi
        if [ -n "$pbin" ]; then
            mkdir -p "$LOGS_DIR"
            chmod +x "$pbin" 2>/dev/null || true
            ( cd "$PLAYIT_DIR" && "$pbin" > "$LOGS_DIR/playit_live.log" 2>&1 ) &
            playit_pid=$!
            echo "  [PLAYIT.GG] Dang chay ngam. Xem link claim trong: logs/playit_live.log"
        fi
    fi
    sh "$SERVER_DIR/start_server.sh"
    [ -n "$playit_pid" ] && kill "$playit_pid" 2>/dev/null || true
}

clean_all_installed() {
    echo ""
    printf "  [CANH BAO] Ban chac chan muon XOA HET server, runtime, playit, web_panel, logs? [y/N]: "
    read -r ans
    if [ "$ans" = "y" ] || [ "$ans" = "Y" ]; then
        rm -rf "$SERVER_DIR" "$RUNTIME_DIR" "$PLAYIT_DIR" "$WEB_DIR" "$LOGS_DIR" "$CONFIG_FILE"
        echo "  [HOAN THANH] Da xoa sach toan bo thu muc cai dat!"
    else
        echo "  Da huy thao tac xoa."
    fi
    pause_enter
}

while true; do
    mc_v="$(read_cfg_str mc_version 1.21.11)"
    ldr="$(read_cfg_str loader fabric)"
    fprof="$(read_cfg_str flag_profile meowice_g1gc)"
    rmin="$(read_cfg_int ram_min_mb 4096)"
    rmax="$(read_cfg_int ram_max_mb 6144)"
    clear 2>/dev/null || true
    echo "========================================================================"
    echo "  TRINH CAI DAT & QUAN LY SERVER MINECRAFT ($(detect_os | tr 'a-z' 'A-Z') / $(detect_arch))"
    echo "  MC: $mc_v | Loader: $(echo "$ldr" | tr 'a-z' 'A-Z') | Flags: $(echo "$fprof" | tr 'a-z' 'A-Z') | RAM: ${rmin}-${rmax}MB"
    echo "========================================================================"
    echo "  [CHON CHE DO CAI DAT]"
    echo "  [1] Che Do 1: CAI DAT TAT CA (Full Auto: Java 25 + MC 1.21.11 + Loader + Web GUI + Playit.gg + Flags)"
    echo "  [2] Che Do 2: CAI RIENG SERVER MINECRAFT & LOADER (Chon Version & Fabric/Paper/Purpur/Leaf/Forge/NeoForge)"
    echo "  [3] Che Do 3: CAI RIENG GOI MOD / PLUGIN (Goi co ban, Modrinth, Link URL .jar)"
    echo "  [4] Che Do 4: CAI RIENG PLAYIT.GG (Playgit.gg Tunnel khong can mo Port)"
    echo "  [5] Che Do 5: CAI RIENG GIAO DIEN QUAN LY WEB GUI (Giai nen Web Panel & Cai Java Runtime)"
    echo ""
    echo "  [DIEU KHIEN & CAU HINH]"
    echo "  [6] MO GIAO DIEN QUAN LY WEB GUI (Chinh Version, Loader, Cai Mod/Plugin, Console)"
    echo "  [7] KHOI DONG SERVER MINECRAFT (Co tuy chon bat kem Playit.gg)"
    echo "  [8] CHON BO FLAGS & CAU HINH RAM (MeowIce G1GC/ZGC vs Etil Flags vs Aikar)"
    echo "  [9] CHINH SUA SERVER.PROPERTIES (Cracked/Online-mode, Slot, Gamemode, MOTD)"
    echo "  [10] XOA TOAN BO THU MUC DA CAI (Clean / Go bo)"
    echo "  [0] THOAT"
    echo "========================================================================"
    printf "  Nhap lua chon cua ban [0-10]: "
    read -r choice
    case "$choice" in
        1) run_silent_task "Tat Ca (Java 25 + MC $mc_v + $ldr + Playit.gg + Web GUI + Flags)" task_full_auto; pause_enter ;;
        2) menu_version_loader; pause_enter ;;
        3) menu_mods_plugins ;;
        4) run_silent_task "Playit.gg Tunnel" task_install_playit; pause_enter ;;
        5) run_silent_task "Giao Dien Quan Ly Web GUI" task_install_webgui; pause_enter ;;
        6) start_web_gui ;;
        7) start_mc_server ;;
        8) menu_ram_flags ;;
        9) menu_properties ;;
        10) clean_all_installed ;;
        0) exit 0 ;;
        *) echo "  Lua chon khong hop le."; sleep 1 ;;
    esac
done
