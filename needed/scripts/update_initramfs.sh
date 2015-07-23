#!/bin/bash
for KRNL in ../../chroot/boot/vmlinuz-*; do
	VERSION="$(basename ${KRNL} | sed -e 's|vmlinuz-||')"
	#mkdir -p ../../chroot/var/{tmp,lib/initramfs-tools}
	chroot ../../chroot /bin/bash -c "ln -sf /boot/vmlinuz-${VERSION} /vmlinuz-${VERSION}"
	chroot ../../chroot /bin/bash -c "ln -sf /boot/initrd.img-${VERSION} /initrd.img-${VERSION}"
	chroot ../../chroot /bin/bash -c "update-initramfs -k ${VERSION} -t -u"
	if [[ "$VERSION" =~ .*pae ]]; then
		cp -f ../../chroot/boot/vmlinuz-${VERSION} ../../image/live/vmlinuz-pae
		cp -f ../../chroot/boot/initrd.img-${VERSION} ../../image/live/initrd-pae.img
	else
		cp -f ../../chroot/boot/vmlinuz-${VERSION} ../../image/live/vmlinuz
		cp -f ../../chroot/boot/initrd.img-${VERSION} ../../image/live/initrd.img
	fi
done


