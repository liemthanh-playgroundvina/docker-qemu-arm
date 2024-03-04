# termux folder (remove if you aren't using proot-distro)
export PREFIX=/data/data/com.termux/files/usr

port_forwarding=""
for port in $(seq 8000 8999); do
    port_forwarding+=",hostfwd=tcp::${port}-:${port}"
done

qemu-system-x86_64 -machine q35 -m 4096 -smp cpus=4 -cpu qemu64 \
  -drive if=pflash,format=raw,read-only=on,file=$PREFIX/share/qemu/edk2-x86_64-code.fd \
  -netdev user,id=n1${port_forwarding},net=192.168.50.0/24 -device virtio-net,netdev=n1 \
  -nographic alpine.img
