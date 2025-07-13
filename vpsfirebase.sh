echo "cài tailscale"
curl -fsSL https://tailscale.com/install.sh | sh
mkdir /var/lib/tailscale
nohup tailscaled --tun=userspace-networking --socket=/run/tailscale/tailscaled.sock --port 41641  >/dev/null 2>&1 
systemctl start tailscaled
tailscale up
echo "cài qemu"
apt qemu-kvm -y
echo "vps ip"
tailscale ip --4
echo "Administrator:Datnguyentv.com"
nohup qemu-system-x86_64 -M q35 -usb -device qemu-xhci -device usb-tablet -device usb-kbd -cpu host,+pae -smp sockets=1,cores=8,threads=1 -m 32G -drive file=win.qcow2,aio=threads,cache=writeback,if=none,id=hda -device ahci,id=hdaahci -device ide-hd,drive=hda,bus=hdaahci.0 -vga std -device ich9-intel-hda -device hda-duplex -device e1000e,netdev=n0 -netdev user,id=n0,hostfwd=tcp::3389-:3389 -accel kvm -device virtio-serial-pci -device intel-iommu -vnc :0  >/dev/null 2>&1 &  
