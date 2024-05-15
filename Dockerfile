FROM ubuntu:22.04
ARG RUST_TOOLCHAIN="1.75.0"

# Adding rust binaries to PATH.
ENV PATH="$PATH:/root/.cargo/bin"
# Adding riscv cross compilation toolchain to PATH.
ENV PATH="$PATH:/opt/riscv/bin"

COPY build_container.sh /opt/src/scripts/build_container.sh
RUN /opt/src/scripts/build_container.sh
