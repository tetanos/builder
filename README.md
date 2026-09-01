# builder

Docker image providing the cross-compilation toolchain for the TetanOS
kernel. It packages the tools that turn the compiled kernel into a
bootable ISO — NASM, GRUB, and xorriso — together with mise, which
installs the Rust toolchain the kernel's own configuration pins, so the
kernel builds the same way on any machine with Docker.

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
