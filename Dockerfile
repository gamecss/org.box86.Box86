FROM --platform=linux/i386 debian:bookworm

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y gcc-arm-linux-gnueabihf build-essential qemu-user-static cmake flatpak && rm -rf /var/lib/apt/lists/*

RUN flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo && flatpak install org.freedesktop.Sdk/aarch64 && rm -rf /var/tmp/flatpak-cache-*
# flatpak remote-add --if-not-exists gnome-nightly https://nightly.gnome.org/gnome-nightly.flatpakrepo
