#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 17340416 fa1888b528c92cf3bf74002960866a0e6a374440 14727168 f3804385fcc288b79d2674c3d7323c6bd7f60e60
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:17340416:fa1888b528c92cf3bf74002960866a0e6a374440; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:14727168:f3804385fcc288b79d2674c3d7323c6bd7f60e60 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery fa1888b528c92cf3bf74002960866a0e6a374440 17340416 f3804385fcc288b79d2674c3d7323c6bd7f60e60:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
