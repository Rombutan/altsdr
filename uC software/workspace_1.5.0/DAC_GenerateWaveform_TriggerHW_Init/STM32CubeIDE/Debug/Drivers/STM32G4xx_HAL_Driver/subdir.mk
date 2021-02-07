################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_GenerateWaveform_TriggerHW_Init/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_dac.c \
/home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_GenerateWaveform_TriggerHW_Init/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_dma.c \
/home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_GenerateWaveform_TriggerHW_Init/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_exti.c \
/home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_GenerateWaveform_TriggerHW_Init/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_gpio.c \
/home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_GenerateWaveform_TriggerHW_Init/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_pwr.c \
/home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_GenerateWaveform_TriggerHW_Init/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_tim.c \
/home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_GenerateWaveform_TriggerHW_Init/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_utils.c 

OBJS += \
./Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_dac.o \
./Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_dma.o \
./Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_exti.o \
./Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_gpio.o \
./Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_pwr.o \
./Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_tim.o \
./Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_utils.o 

C_DEPS += \
./Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_dac.d \
./Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_dma.d \
./Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_exti.d \
./Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_gpio.d \
./Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_pwr.d \
./Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_tim.d \
./Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_dac.o: /home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_GenerateWaveform_TriggerHW_Init/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_dac.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 '-DLSI_VALUE=32000' '-DHSE_STARTUP_TIMEOUT=100' '-DHSI_VALUE=16000000' '-DLSE_STARTUP_TIMEOUT=5000' -DDEBUG '-DLSE_VALUE=32768' '-DDATA_CACHE_ENABLE=1' '-DEXTERNAL_CLOCK_VALUE=12288000' '-DVDD_VALUE=3300' '-DINSTRUCTION_CACHE_ENABLE=1' -DSTM32G474xx '-DHSE_VALUE=24000000' -DUSE_FULL_LL_DRIVER '-DPREFETCH_ENABLE=0' -c -I../../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../../Inc -I../../Drivers/STM32G4xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_dac.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_dma.o: /home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_GenerateWaveform_TriggerHW_Init/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_dma.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 '-DLSI_VALUE=32000' '-DHSE_STARTUP_TIMEOUT=100' '-DHSI_VALUE=16000000' '-DLSE_STARTUP_TIMEOUT=5000' -DDEBUG '-DLSE_VALUE=32768' '-DDATA_CACHE_ENABLE=1' '-DEXTERNAL_CLOCK_VALUE=12288000' '-DVDD_VALUE=3300' '-DINSTRUCTION_CACHE_ENABLE=1' -DSTM32G474xx '-DHSE_VALUE=24000000' -DUSE_FULL_LL_DRIVER '-DPREFETCH_ENABLE=0' -c -I../../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../../Inc -I../../Drivers/STM32G4xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_dma.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_exti.o: /home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_GenerateWaveform_TriggerHW_Init/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_exti.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 '-DLSI_VALUE=32000' '-DHSE_STARTUP_TIMEOUT=100' '-DHSI_VALUE=16000000' '-DLSE_STARTUP_TIMEOUT=5000' -DDEBUG '-DLSE_VALUE=32768' '-DDATA_CACHE_ENABLE=1' '-DEXTERNAL_CLOCK_VALUE=12288000' '-DVDD_VALUE=3300' '-DINSTRUCTION_CACHE_ENABLE=1' -DSTM32G474xx '-DHSE_VALUE=24000000' -DUSE_FULL_LL_DRIVER '-DPREFETCH_ENABLE=0' -c -I../../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../../Inc -I../../Drivers/STM32G4xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_exti.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_gpio.o: /home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_GenerateWaveform_TriggerHW_Init/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_gpio.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 '-DLSI_VALUE=32000' '-DHSE_STARTUP_TIMEOUT=100' '-DHSI_VALUE=16000000' '-DLSE_STARTUP_TIMEOUT=5000' -DDEBUG '-DLSE_VALUE=32768' '-DDATA_CACHE_ENABLE=1' '-DEXTERNAL_CLOCK_VALUE=12288000' '-DVDD_VALUE=3300' '-DINSTRUCTION_CACHE_ENABLE=1' -DSTM32G474xx '-DHSE_VALUE=24000000' -DUSE_FULL_LL_DRIVER '-DPREFETCH_ENABLE=0' -c -I../../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../../Inc -I../../Drivers/STM32G4xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_gpio.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_pwr.o: /home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_GenerateWaveform_TriggerHW_Init/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_pwr.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 '-DLSI_VALUE=32000' '-DHSE_STARTUP_TIMEOUT=100' '-DHSI_VALUE=16000000' '-DLSE_STARTUP_TIMEOUT=5000' -DDEBUG '-DLSE_VALUE=32768' '-DDATA_CACHE_ENABLE=1' '-DEXTERNAL_CLOCK_VALUE=12288000' '-DVDD_VALUE=3300' '-DINSTRUCTION_CACHE_ENABLE=1' -DSTM32G474xx '-DHSE_VALUE=24000000' -DUSE_FULL_LL_DRIVER '-DPREFETCH_ENABLE=0' -c -I../../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../../Inc -I../../Drivers/STM32G4xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_pwr.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_tim.o: /home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_GenerateWaveform_TriggerHW_Init/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_tim.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 '-DLSI_VALUE=32000' '-DHSE_STARTUP_TIMEOUT=100' '-DHSI_VALUE=16000000' '-DLSE_STARTUP_TIMEOUT=5000' -DDEBUG '-DLSE_VALUE=32768' '-DDATA_CACHE_ENABLE=1' '-DEXTERNAL_CLOCK_VALUE=12288000' '-DVDD_VALUE=3300' '-DINSTRUCTION_CACHE_ENABLE=1' -DSTM32G474xx '-DHSE_VALUE=24000000' -DUSE_FULL_LL_DRIVER '-DPREFETCH_ENABLE=0' -c -I../../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../../Inc -I../../Drivers/STM32G4xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_tim.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_utils.o: /home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_GenerateWaveform_TriggerHW_Init/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_utils.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 '-DLSI_VALUE=32000' '-DHSE_STARTUP_TIMEOUT=100' '-DHSI_VALUE=16000000' '-DLSE_STARTUP_TIMEOUT=5000' -DDEBUG '-DLSE_VALUE=32768' '-DDATA_CACHE_ENABLE=1' '-DEXTERNAL_CLOCK_VALUE=12288000' '-DVDD_VALUE=3300' '-DINSTRUCTION_CACHE_ENABLE=1' -DSTM32G474xx '-DHSE_VALUE=24000000' -DUSE_FULL_LL_DRIVER '-DPREFETCH_ENABLE=0' -c -I../../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../../Inc -I../../Drivers/STM32G4xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32G4xx_HAL_Driver/stm32g4xx_ll_utils.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

