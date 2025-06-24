curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
  | tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
  && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
  | tee /etc/apt/sources.list.d/ngrok.list \
  && apt update \
  && apt install ngrok > /dev/null 2>&1
ngrok config add-authtoken 2MWv85utwyi9ItXxwvdn948ytGR_7q5h1JLXmpMiyW1v4mXZn  
nohup ngrok tcp 5900 &>/dev/null &
echo Please wait for installing new 10...
 apt update -y > /dev/null 2>&1
echo "Installing QEMU (2-3m)..."
apt install qemu-kvm curl -y > /dev/null 2>&1
echo "Windows datnguyen On Google Colab"
echo Your VNC IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Note: Use Right-Click Or Ctrl+C To Copy"
echo "Please Keep Colab Tab Open, Maximum Time 12h"
echo Script by 20.qhuy
echo Starting Windows xxxz...
qemu-system-x86_64 -M q35,nvdimm=on -device qemu-xhci -device usb-tablet -device usb-kbd -cpu n270,+pae,hv-relaxed -smp sockets=1,cores=4,threads=2 -overcommit mem-lock=off -m 32432M,slots=8,maxmem=32433M -object memory-backend-ram,size=4054M,id=m0 -numa node,nodeid=0,memdev=m0,cpus=0 -object memory-backend-ram,size=4054M,id=m1 -numa node,nodeid=1,memdev=m1,cpus=1 -object memory-backend-ram,size=4054M,id=m2 -numa node,nodeid=2,memdev=m2,cpus=2 -object memory-backend-ram,size=4054M,id=m3 -numa node,nodeid=3,memdev=m3,cpus=3 -object memory-backend-ram,size=4054M,id=m4 -numa node,nodeid=4,memdev=m4,cpus=4 -object memory-backend-ram,size=4054M,id=m5 -numa node,nodeid=5,memdev=m5,cpus=5 -object memory-backend-ram,size=4054M,id=m6 -numa node,nodeid=6,memdev=m6,cpus=6 -object memory-backend-ram,size=4054M,id=m7 -numa node,nodeid=7,memdev=m7,cpus=7 -drive file=win.qcow2,aio=threads,cache=writeback -cdrom win.iso -vga cirrus -device ich9-intel-hda -device hda-duplex,audiodev=add -audiodev sdl,id=add -device e1000-82544gc,netdev=n0 -netdev user,id=n0,dns=1.1.1.1 -accel tcg,thread=multi,tb-size=2048 -device virtio-balloon-pci -device intel-iommu -monitor stdio -vnc :0
