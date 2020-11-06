#Gionee <GN_BSP_AUD> <huangzhuolin> <20150510 add for dts config file CR01471094 begin
srs_config_file="/data/misc/srs/srs_processing.cfg"
if [ ! -f "$srs_config_file" ]; then
cp /system/data/srs_processing.cfg /data/misc/srs/srs_processing.cfg
fi

sys_version=`cat /system/data/srs_processing.cfg |grep lib_version |cut -d '=' -f 2`
data_version=`cat /data/misc/srs/srs_processing.cfg |grep lib_version |cut -d '=' -f 2`

if [ "$sys_version" != "$data_version" ];then
cp /system/data/srs_processing.cfg /data/misc/srs/srs_processing.cfg
fi

chmod 0666 "$srs_config_file"
#Gionee <GN_BSP_AUD> <huangzhuolin> <20150510 add for dts config file CR01471094 end

