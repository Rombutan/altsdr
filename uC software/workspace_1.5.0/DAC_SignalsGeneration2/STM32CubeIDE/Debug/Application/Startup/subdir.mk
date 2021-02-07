################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Application/Startup/startup_stm32g474retx.s 

OBJS += \
./Application/Startup/startup_stm32g474retx.o 

S_DEPS += \
./Application/Startup/startup_stm32g474retx.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Startup/startup_stm32g474retx.o: ../Application/Startup/startup_stm32g474retx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Application/Startup/startup_stm32g474retx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

