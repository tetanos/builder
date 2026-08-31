# builder

Docker image providing the cross-compilation toolchain for the TetanOS
kernel. It packages Rust nightly with the `rust-src` component, `xargo`
for building a sysroot for the kernel's custom target, and the tools that
turn the compiled kernel into a bootable ISO — NASM, GRUB, and xorriso —
so the kernel builds identically on any machine with Docker.

## Usage

Build the image:

```sh
docker build -t tetanos/builder .
```

Run it with the kernel source mounted at `/build`; the container invokes
the kernel's `make iso` target:

```sh
docker run --rm -v "$(pwd)":/build tetanos/builder
```
