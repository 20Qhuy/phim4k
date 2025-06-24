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
qemu-system-x86_64 -vnc :0 -hda  -smp cores=4 -m 8096M -machine usb=on -drive file=win.qcow2,aio=threads,cache=writeback,if=none,id=hda -device ahci,id=hdaahci -device ide-hd,drive=hda,bus=hdaahci.0 -cdrom win.iso -device e1000e,netdev=n0 -netdev user,id=n0 -device usb-tablet
