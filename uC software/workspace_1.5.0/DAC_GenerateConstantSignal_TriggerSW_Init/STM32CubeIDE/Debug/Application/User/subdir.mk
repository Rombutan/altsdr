################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_GenerateConstantSignal_TriggerSW_Init/Src/main.c \
/home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_GenerateConstantSignal_TriggerSW_Init/Src/stm32g4xx_it.c \
../Application/User/syscalls.c \
../Application/User/sysmem.c 

OBJS += \
./Application/User/main.o \
./Application/User/stm32g4xx_it.o \
./Application/User/syscalls.o \
./Application/User/sysmem.o 

C_DEPS += \
./Application/User/main.d \
./Application/User/stm32g4xx_it.d \
./Application/User/syscalls.d \
./Application/User/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/main.o: /home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_GenerateConstantSignal_TriggerSW_Init/Src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 '-DLSI_VALUE=32000' '-DHSE_STARTUP_TIMEOUT=100' '-DHSI_VALUE=16000000' '-DLSE_STARTUP_TIMEOUT=5000' -DDEBUG '-DLSE_VALUE=32768' '-DDATA_CACHE_ENABLE=1' '-DEXTERNAL_CLOCK_VALUE=12288000' '-DVDD_VALUE=3300' '-DINSTRUCTION_CACHE_ENABLE=1' -DSTM32G474xx '-DHSE_VALUE=24000000' -DUSE_FULL_LL_DRIVER '-DPREFETCH_ENABLE=0' -c -I../../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../../Inc -I../../Drivers/STM32G4xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32g4xx_it.o: /home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_GenerateConstantSignal_TriggerSW_Init/Src/stm32g4xx_it.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 '-DLSI_VALUE=32000' '-DHSE_STARTUP_TIMEOUT=100' '-DHSI_VALUE=16000000' '-DLSE_STARTUP_TIMEOUT=5000' -DDEBUG '-DLSE_VALUE=32768' '-DDATA_CACHE_ENABLE=1' '-DEXTERNAL_CLOCK_VALUE=12288000' '-DVDD_VALUE=3300' '-DINSTRUCTION_CACHE_ENABLE=1' -DSTM32G474xx '-DHSE_VALUE=24000000' -DUSE_FULL_LL_DRIVER '-DPREFETCH_ENABLE=0' -c -I../../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../../Inc -I../../Drivers/STM32G4xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/stm32g4xx_it.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/syscalls.o: ../Application/User/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 '-DLSI_VALUE=32000' '-DHSE_STARTUP_TIMEOUT=100' '-DHSI_VALUE=16000000' '-DLSE_STARTUP_TIMEOUT=5000' -DDEBUG '-DLSE_VALUE=32768' '-DDATA_CACHE_ENABLE=1' '-DEXTERNAL_CLOCK_VALUE=12288000' '-DVDD_VALUE=3300' '-DINSTRUCTION_CACHE_ENABLE=1' -DSTM32G474xx '-DHSE_VALUE=24000000' -DUSE_FULL_LL_DRIVER '-DPREFETCH_ENABLE=0' -c -I../../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../../Inc -I../../Drivers/STM32G4xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/syscalls.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/sysmem.o: ../Application/User/sysmem.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 '-DLSI_VALUE=32000' '-DHSE_STARTUP_TIMEOUT=100' '-DHSI_VALUE=16000000' '-DLSE_STARTUP_TIMEOUT=5000' -DDEBUG '-DLSE_VALUE=32768' '-DDATA_CACHE_ENABLE=1' '-DEXTERNAL_CLOCK_VALUE=12288000' '-DVDD_VALUE=3300' '-DINSTRUCTION_CACHE_ENABLE=1' -DSTM32G474xx '-DHSE_VALUE=24000000' -DUSE_FULL_LL_DRIVER '-DPREFETCH_ENABLE=0' -c -I../../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../../Inc -I../../Drivers/STM32G4xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/sysmem.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

