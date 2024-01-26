#!/bin/sh
printf "=== Removing an old archive if it exists\n"
                                             rm -f "./MPLABX-v6.15-linux-installer.tar"
printf "=== Making a new archive from its parts\n"
                                             touch "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part01" >> "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part02" >> "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part03" >> "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part04" >> "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part05" >> "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part06" >> "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part07" >> "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part08" >> "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part09" >> "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part10" >> "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part11" >> "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part12" >> "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part13" >> "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part14" >> "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part15" >> "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part16" >> "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part17" >> "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part18" >> "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part19" >> "./MPLABX-v6.15-linux-installer.tar"
cat "./MPLABX-v6.15-linux-installer.tar_part20" >> "./MPLABX-v6.15-linux-installer.tar"
printf "=== Doing a sync command (just in case)\n"
sync
printf "=== Finding a sha256sum of this archive\n"
sha256sum_correct="6628a28ee082e1c39f27931d30367e2f2500cea2090cb4cdf779caa19b694c61  ./MPLABX-v6.15-linux-installer.tar"
sha256sum_my=$(sha256sum "./MPLABX-v6.15-linux-installer.tar")
printf "=== sha256sum should be\n$sha256sum_correct\n"
if [ "$sha256sum_my" = "$sha256sum_correct" ] ; then
    printf "^^^ this is correct, you can use a ./MPLABX-v6.15-linux-installer.tar now...\n"
    exit 0
else
    printf "^^^ ! MISMATCH ! Check sha256sum manually: sha256sum ./MPLABX-v6.15-linux-installer.tar\n"
    exit 1
fi
###
