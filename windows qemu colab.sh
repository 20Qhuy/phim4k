curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
  | tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
  && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
  | tee /etc/apt/sources.list.d/ngrok.list \
  && apt update \
  && apt install ngrok > /dev/null 2>&1
read -p "Paste authtoken here (Copy and Ctrl+V to paste then press Enter): " CRP
ngrok config add-authtoken $CRP 
nohup ngrok tcp 5900 &>/dev/null &
echo Please wait for installing new 10...
 apt update -y > /dev/null 2>&1
echo "Installing QEMU (2-3m)..."
apt install qemu-system-x86_64 curl -y > /dev/null 2>&1
echo "Windows datnguyen On Google Colab"
echo Your VNC IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Note: Use Right-Click Or Ctrl+C To Copy"
echo "Please Keep Colab Tab Open, Maximum Time 12h"
echo Script by 20.qhuy
echo Starting Windows xxxz...
qemu-system-x86_64 -M q35,nvdimm=on -device qemu-xhci -device usb-tablet -device usb-kbd -cpu qemu64,+pae,hv-relaxed -smp sockets=1,cores=4,threads=1 -overcommit mem-lock=off -m 8048M,slots=4,maxmem=8049M -object memory-backend-ram,size=2012M,id=m0 -numa node,nodeid=0,memdev=m0,cpus=0 -object memory-backend-ram,size=2012M,id=m1 -numa node,nodeid=1,memdev=m1,cpus=1 -object memory-backend-ram,size=2012M,id=m2 -numa node,nodeid=2,memdev=m2,cpus=2 -object memory-backend-ram,size=2012M,id=m3 -numa node,nodeid=3,memdev=m3,cpus=3 -drive format=raw,file=your_image.img -vga std -device ich9-intel-hda -device hda-duplex -device e1000e,netdev=n0 -netdev user,id=n0 -accel tcg,thread=multi,tb-size=2048 -device virtio-balloon-pci -device intel-iommu -monitor stdio -vnc :0

