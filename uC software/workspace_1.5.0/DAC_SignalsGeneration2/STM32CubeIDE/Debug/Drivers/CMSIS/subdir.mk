################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_SignalsGeneration2/Src/system_stm32g4xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32g4xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32g4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32g4xx.o: /home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_SignalsGeneration2/Src/system_stm32g4xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32G474xx -DUSE_NUCLEO_64 -DDEBUG -c -I../../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../../Inc -I../../Drivers/STM32G4xx_HAL_Driver/Inc -I../../Drivers/BSP/STM32G4xx_Nucleo -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/system_stm32g4xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

