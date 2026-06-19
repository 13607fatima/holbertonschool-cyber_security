#!/bin/bash
status=$(getenforce 2>/dev/null || echo "disabled")
printf "%-32s%s\n" "SELinux status:" "${status,,}"
