################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32G4xx_HAL_Driver/subdir.mk
-include Drivers/CMSIS/subdir.mk
-include Drivers/BSP/STM32G4xx_Nucleo/subdir.mk
-include Application/User/subdir.mk
-include Application/Startup/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

BUILD_ARTIFACT_NAME := CORDIC_Sin_DMA
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX := 
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME).$(BUILD_ARTIFACT_EXTENSION)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
CORDIC_Sin_DMA.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
CORDIC_Sin_DMA.list \

OBJCOPY_BIN += \
CORDIC_Sin_DMA.bin \


# All Target
all: main-build

# Main-build Target
main-build: CORDIC_Sin_DMA.elf secondary-outputs

# Tool invocations
CORDIC_Sin_DMA.elf: $(OBJS) $(USER_OBJS) /home/lucag/STM32CubeIDE/workspace_1.5.0/CORDIC_Sin_DMA/STM32CubeIDE/STM32G474RETX_FLASH.ld
	arm-none-eabi-gcc -o "CORDIC_Sin_DMA.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"/home/lucag/STM32CubeIDE/workspace_1.5.0/CORDIC_Sin_DMA/STM32CubeIDE/STM32G474RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="CORDIC_Sin_DMA.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

CORDIC_Sin_DMA.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "CORDIC_Sin_DMA.list"
	@echo 'Finished building: $@'
	@echo ' '

CORDIC_Sin_DMA.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "CORDIC_Sin_DMA.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents fail-specified-linker-script-missing warn-no-linker-script-specified
.SECONDARY:

-include ../makefile.targets
