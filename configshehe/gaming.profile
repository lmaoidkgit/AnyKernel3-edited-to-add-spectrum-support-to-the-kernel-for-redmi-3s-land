# Gaming
on property:persist.spectrum.profile=3
    # Configure governor settings for big cluster
    write /sys/devices/system/cpu/cpu0/online 1
    write /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor "schedutil"
    write /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq 960000
    write /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq 1497600
    write /sys/devices/system/cpu/cpu0/cpufreq/schedutil/up_rate_limit_us 1000
    write /sys/devices/system/cpu/cpu0/cpufreq/schedutil/down_rate_limit_us 10000
    write /sys/devices/system/cpu/cpu0/cpufreq/schedutil/iowait_boost_enable 0


    # Configure governor settings for little cluster
    write /sys/devices/system/cpu/cpu4/online 1
    write /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor "schedutil"
    write /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq 902400
    write /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq 1209600
    write /sys/devices/system/cpu/cpu4/cpufreq/schedutil/up_rate_limit_us 1000
    write /sys/devices/system/cpu/cpu4/cpufreq/schedutil/down_rate_limit_us 10000
    write /sys/devices/system/cpu/cpu4/cpufreq/schedutil/iowait_boost_enable 0

    write /sys/class/kgsl/kgsl-3d0/devfreq/max_gpuclk 500000000
    write /sys/class/kgsl/kgsl-3d0/devfreq/governor msm-adreno-tz

