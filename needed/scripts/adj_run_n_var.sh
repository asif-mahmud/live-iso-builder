#!/bin/bash
find /run -type d -exec mkdir -p -- ../../chroot/{} \;
find /var -type d -exec mkdir -p -- ../../chroot/{} \;
