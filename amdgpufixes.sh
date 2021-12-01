#!/bin/bash

sudo su <<'EOF'
echo Old frequency

grep "MHz" /sys/kernel/debug/dri/0/amdgpu_pm_info

echo high > /sys/class/drm/card0/device/power_dpm_force_performance_level

echo 'New frequency'

sudo grep "MHz" /sys/kernel/debug/dri/0/amdgpu_pm_info

EOF
