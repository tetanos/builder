# builder

Docker image providing the cross-compilation toolchain for the TetanOS
kernel. It packages Rust nightly with the `rust-src` component, `xargo`
for building a sysroot for the kernel's custom target, and the tools that
turn the compiled kernel into a bootable ISO — NASM, GRUB, and xorriso —
so the kernel builds the same way on any machine with Docker. The nightly
toolchain is resolved at image build time, so two images built months apart
do not carry the same compiler.

## Usage

Build the image:

```sh
mise run build
```

Run it with the kernel source mounted at `/build`; the container invokes
the kernel's `build` task:

```sh
mise run run
```
