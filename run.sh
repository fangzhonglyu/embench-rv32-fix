#!/bin/sh
$RISCV/bin/true >/dev/null 2>&1 || true

# if [ -f ./basicmath_small$BIN_SUFFIX ]; then
# cp -f ./$SRC_NAME$BIN_SUFFIX "$BENCH_DIR/"
# if [ -x "$RISCV/bin/riscv32-unknown-elf-objdump" ]; then
# "$RISCV/bin/riscv32-unknown-elf-objdump" -d -M no-aliases ./$SRC_NAME$BIN_SUFFIX > "$BENCH_DIR/$SRC_NAME$BIN_SUFFIX.dump"
# fi
# fi
# if [ -f ./basicmath_small$BIN_SUFFIX.s ]; then
# cp -f ./basicmath_small$BIN_SUFFIX.s "$BENCH_DIR/"
# fi
$MIBENCH_RUN ./basicmath_small$BIN_SUFFIX > output_small.txt