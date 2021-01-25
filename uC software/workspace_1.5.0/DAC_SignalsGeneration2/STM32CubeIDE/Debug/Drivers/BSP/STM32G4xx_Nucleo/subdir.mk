################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_SignalsGeneration2/Drivers/BSP/STM32G4xx_Nucleo/stm32g4xx_nucleo.c 

OBJS += \
./Drivers/BSP/STM32G4xx_Nucleo/stm32g4xx_nucleo.o 

C_DEPS += \
./Drivers/BSP/STM32G4xx_Nucleo/stm32g4xx_nucleo.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32G4xx_Nucleo/stm32g4xx_nucleo.o: /home/lucag/STM32CubeIDE/workspace_1.5.0/DAC_SignalsGeneration2/Drivers/BSP/STM32G4xx_Nucleo/stm32g4xx_nucleo.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32G474xx -DUSE_NUCLEO_64 -DDEBUG -c -I../../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../../Inc -I../../Drivers/STM32G4xx_HAL_Driver/Inc -I../../Drivers/BSP/STM32G4xx_Nucleo -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/STM32G4xx_Nucleo/stm32g4xx_nucleo.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

