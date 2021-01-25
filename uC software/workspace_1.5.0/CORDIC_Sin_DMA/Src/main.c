/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    CORDIC/CORDIC_Sin_DMA/Src/main.c
  * @author  MCD Application Team
  * @brief   This sample code shows how to use the STM32G4xx CORDIC HAL API
  *          to compute Sine on arrays of data (Q1.31 format) in DMA mode.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
CORDIC_HandleTypeDef hcordic;
DMA_HandleTypeDef hdma_cordic_write;
DMA_HandleTypeDef hdma_cordic_read;

/* USER CODE BEGIN PV */
/* CORDIC configuration structure */
CORDIC_ConfigTypeDef sCordicConfig;

/* Array of angles in Q1.31 format, regularly incremented from 0 to 2*pi */


/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_DMA_Init(void);
static void MX_CORDIC_Init(void);
/* USER CODE BEGIN PFP */
uint32_t Check_Residual_Error(int32_t VarA, int32_t VarB, uint32_t MaxError);

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
  /* STM32G4xx HAL library initialization:
       - Configure the Flash prefetch
       - Systick timer is configured by default as source of time base, but user
         can eventually implement his proper time base source (a general purpose
         timer for example or other time source), keeping in mind that Time base
         duration should be kept 1ms since PPP_TIMEOUT_VALUEs are defined and
         handled in milliseconds basis.
       - Set NVIC Group Priority to 4
       - Low Level Initialization
     */
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */
  /* Configure LED2 */
  BSP_LED_Init(LED2);

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_DMA_Init();
  MX_CORDIC_Init();
  /* USER CODE BEGIN 2 */
  /*## Configure the CORDIC peripheral ####################################*/
  sCordicConfig.Function         = CORDIC_FUNCTION_SINE;     /* sine function */
  sCordicConfig.Precision        = CORDIC_PRECISION_6CYCLES; /* max precision for q1.31 sine */
  sCordicConfig.Scale            = CORDIC_SCALE_0;           /* no scale */
  sCordicConfig.NbWrite          = CORDIC_NBWRITE_1;         /* One input data: angle. Second input data (modulus) is 1 after cordic reset */
  sCordicConfig.NbRead           = CORDIC_NBREAD_1;          /* One output data: sine */
  sCordicConfig.InSize           = CORDIC_INSIZE_32BITS;     /* q1.31 format for input data */
  sCordicConfig.OutSize          = CORDIC_OUTSIZE_32BITS;    /* q1.31 format for output data */

  if (HAL_CORDIC_Configure(&hcordic, &sCordicConfig) != HAL_OK)
  {
    /* Configuration Error */
    Error_Handler();
  }

  /*## Start calculation of sines in DMA mode #############################*/
  if (HAL_CORDIC_Calculate_DMA(&hcordic, aAngles, aCalculatedSin,
                               ARRAY_SIZE, CORDIC_DMA_DIR_IN_OUT) != HAL_OK)
  {
    /* Processing Error */
    Error_Handler();
  }

  /*  Before starting a new process, you need to check the current state of the peripheral;
      if it’s busy you need to wait for the end of current transfer before starting a new one.
      For simplicity reasons, this example is just waiting till the end of the
      process, but application may perform other tasks while transfer operation
      is ongoing. */
  while (HAL_CORDIC_GetState(&hcordic) != HAL_CORDIC_STATE_READY)
  {
  }

  /*## Compare CORDIC results to the reference values #####################*/
  for (uint32_t i = 0; i < ARRAY_SIZE; i++)
  {
    if (Check_Residual_Error(aCalculatedSin[i], aRefSin[i], DELTA) == FAIL)
    {
      Error_Handler();
    }
  }

  /* Correct CORDIC output values: Turn LED2 on */
  BSP_LED_On(LED2);

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1_BOOST);
  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = RCC_PLLM_DIV4;
  RCC_OscInitStruct.PLL.PLLN = 85;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief CORDIC Initialization Function
  * @param None
  * @retval None
  */
static void MX_CORDIC_Init(void)
{

  /* USER CODE BEGIN CORDIC_Init 0 */

  /* USER CODE END CORDIC_Init 0 */

  /* USER CODE BEGIN CORDIC_Init 1 */

  /* USER CODE END CORDIC_Init 1 */
  hcordic.Instance = CORDIC;
  if (HAL_CORDIC_Init(&hcordic) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN CORDIC_Init 2 */

  /* USER CODE END CORDIC_Init 2 */

}

/**
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void)
{

  /* DMA controller clock enable */
  __HAL_RCC_DMAMUX1_CLK_ENABLE();
  __HAL_RCC_DMA1_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Channel1_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel1_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);
  /* DMA1_Channel2_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel2_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel2_IRQn);

}

/* USER CODE BEGIN 4 */
/**
  * @brief  Check delta between two values is below threshold
  * @param  VarA First input variable
  * @param  VarB Second input variable
  * @param  MaxError Maximum delta allowed between VarA and VarB
  * @retval Status
  *           PASS: Delta is below threshold
  *           FAIL: Delta is above threshold
  */
uint32_t Check_Residual_Error(int32_t VarA, int32_t VarB, uint32_t MaxError)
{
  uint32_t status = PASS;

  if ((VarA - VarB) >= 0)
  {
    if ((VarA - VarB) > MaxError)
    {
      status = FAIL;
    }
  }
  else
  {
    if ((VarB - VarA) > MaxError)
    {
      status = FAIL;
    }
  }

  return status;
}
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  while (1)
  {
    /* LED2 is blinking */
    BSP_LED_Toggle(LED2);
    HAL_Delay(500);
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
