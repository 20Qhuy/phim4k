curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
  | tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
  && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
  | tee /etc/apt/sources.list.d/ngrok.list \
  && apt update \
  && apt install ngrok > /dev/null 2>&1
ngrok config add-authtoken 2MWv85utwyi9ItXxwvdn948ytGR_7q5h1JLXmpMiyW1v4mXZn  
nohup ngrok tcp 3389 &>/dev/null &
echo Please wait for installing new 10...
apt update -y > /dev/null 2>&1
echo "Installing QEMU (2-3m)..."
apt install qemu-kvm curl -y > /dev/null 2>&1
echo "Windows datnguyen On Google Colab"
echo Your VNC IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Note: Use Right-Click Or Ctrl+C To Copy"
echo "Please Keep Colab Tab Open, Maximum Time 12h"
echo Starting Windows xxxz...
qemu-system-x86_64 -vnc :0 -net nic -net user,hostfwd=tcp::3389-:3389 -drive format=raw,file=win.img -smp cores=16 -m 32G -machine usb=on -device e1000e,netdev=n0 -netdev user,id=n0 -accel tcg -device virtio-serial-pci -device usb-tablet
