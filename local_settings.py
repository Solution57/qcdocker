import parser_util
ARM_EABI_PATH="/opt/home/arm-eabi-4.8/bin"
LINARO_TOOLCHAIN_PATH="/opt/home/gcc-linaro-aarch64-linux-gnu-4.8-2013.09_linux"
gdb_path = ARM_EABI_PATH + "/prebuilts/gcc/linux-x86/arm/arm-eabi-4.7/bin/arm-eabi-gdb"
nm_path = ARM_EABI_PATH +"/prebuilts/gcc/linux-x86/arm/arm-eabi-4.7/bin/arm-eabi-nm"

gdb64_path = LINARO_TOOLCHAIN_PATH + "/bin/aarch64-linux-gnu-gdb"
nm64_path = LINARO_TOOLCHAIN_PATH + "/bin/aarch64-linux-gnu-nm"
objdump64_path = LINARO_TOOLCHAIN_PATH + "/bin/aarch64-linux-gnu-objdump"
