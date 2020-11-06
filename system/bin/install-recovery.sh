#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:14375168:64d83c730c0dd30bd35f90856ac3293fc01362a5; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:9816320:72c42f4efa3a2d6a58c21736b94be3683d3a0971 EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery 64d83c730c0dd30bd35f90856ac3293fc01362a5 14375168 72c42f4efa3a2d6a58c21736b94be3683d3a0971:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
