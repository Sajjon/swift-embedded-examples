// Generated by svd2swift.

import MMIO

/// Reset and clock control
@RegisterBank
struct RCC {
  /// clock control register
  @RegisterBank(offset: 0x0)
  var cr: Register<CR>

  /// PLL configuration register
  @RegisterBank(offset: 0x4)
  var pllcfgr: Register<PLLCFGR>

  /// clock configuration register
  @RegisterBank(offset: 0x8)
  var cfgr: Register<CFGR>

  /// clock interrupt register
  @RegisterBank(offset: 0xc)
  var cir: Register<CIR>

  /// AHB1 peripheral reset register
  @RegisterBank(offset: 0x10)
  var ahb1rstr: Register<AHB1RSTR>

  /// AHB2 peripheral reset register
  @RegisterBank(offset: 0x14)
  var ahb2rstr: Register<AHB2RSTR>

  /// AHB3 peripheral reset register
  @RegisterBank(offset: 0x18)
  var ahb3rstr: Register<AHB3RSTR>

  /// APB1 peripheral reset register
  @RegisterBank(offset: 0x20)
  var apb1rstr: Register<APB1RSTR>

  /// APB2 peripheral reset register
  @RegisterBank(offset: 0x24)
  var apb2rstr: Register<APB2RSTR>

  /// AHB1 peripheral clock register
  @RegisterBank(offset: 0x30)
  var ahb1enr: Register<AHB1ENR>

  /// AHB2 peripheral clock enable register
  @RegisterBank(offset: 0x34)
  var ahb2enr: Register<AHB2ENR>

  /// AHB3 peripheral clock enable register
  @RegisterBank(offset: 0x38)
  var ahb3enr: Register<AHB3ENR>

  /// APB1 peripheral clock enable register
  @RegisterBank(offset: 0x40)
  var apb1enr: Register<APB1ENR>

  /// APB2 peripheral clock enable register
  @RegisterBank(offset: 0x44)
  var apb2enr: Register<APB2ENR>

  /// AHB1 peripheral clock enable in low power mode register
  @RegisterBank(offset: 0x50)
  var ahb1lpenr: Register<AHB1LPENR>

  /// AHB2 peripheral clock enable in low power mode register
  @RegisterBank(offset: 0x54)
  var ahb2lpenr: Register<AHB2LPENR>

  /// AHB3 peripheral clock enable in low power mode register
  @RegisterBank(offset: 0x58)
  var ahb3lpenr: Register<AHB3LPENR>

  /// APB1 peripheral clock enable in low power mode register
  @RegisterBank(offset: 0x60)
  var apb1lpenr: Register<APB1LPENR>

  /// APB2 peripheral clock enabled in low power mode register
  @RegisterBank(offset: 0x64)
  var apb2lpenr: Register<APB2LPENR>

  /// Backup domain control register
  @RegisterBank(offset: 0x70)
  var bdcr: Register<BDCR>

  /// clock control & status register
  @RegisterBank(offset: 0x74)
  var csr: Register<CSR>

  /// spread spectrum clock generation register
  @RegisterBank(offset: 0x80)
  var sscgr: Register<SSCGR>

  /// PLLI2S configuration register
  @RegisterBank(offset: 0x84)
  var plli2scfgr: Register<PLLI2SCFGR>

  /// PLL configuration register
  @RegisterBank(offset: 0x88)
  var pllsaicfgr: Register<PLLSAICFGR>

  /// dedicated clocks configuration register
  @RegisterBank(offset: 0x8c)
  var dkcfgr1: Register<DKCFGR1>

  /// dedicated clocks configuration register
  @RegisterBank(offset: 0x90)
  var dkcfgr2: Register<DKCFGR2>
}

extension RCC {
  /// clock control register
  @Register(bitWidth: 32)
  struct CR {
    /// PLLI2S clock ready flag
    @ReadOnly(bits: 27..<28)
    var plli2srdy: PLLI2SRDY

    /// PLLI2S enable
    @ReadWrite(bits: 26..<27)
    var plli2son: PLLI2SON

    /// Main PLL (PLL) clock ready flag
    @ReadOnly(bits: 25..<26)
    var pllrdy: PLLRDY

    /// Main PLL (PLL) enable
    @ReadWrite(bits: 24..<25)
    var pllon: PLLON

    /// Clock security system enable
    @ReadWrite(bits: 19..<20)
    var csson: CSSON

    /// HSE clock bypass
    @ReadWrite(bits: 18..<19)
    var hsebyp: HSEBYP

    /// HSE clock ready flag
    @ReadOnly(bits: 17..<18)
    var hserdy: HSERDY

    /// HSE clock enable
    @ReadWrite(bits: 16..<17)
    var hseon: HSEON

    /// Internal high-speed clock calibration
    @ReadOnly(bits: 8..<16)
    var hsical: HSICAL

    /// Internal high-speed clock trimming
    @ReadWrite(bits: 3..<8)
    var hsitrim: HSITRIM

    /// Internal high-speed clock ready flag
    @ReadOnly(bits: 1..<2)
    var hsirdy: HSIRDY

    /// Internal high-speed clock enable
    @ReadWrite(bits: 0..<1)
    var hsion: HSION
  }

  /// PLL configuration register
  @Register(bitWidth: 32)
  struct PLLCFGR {
    /// Main PLL (PLL) division factor for USB OTG FS, SDIO and random number generator clocks
    @ReadWrite(bits: 27..<28)
    var pllq3: PLLQ3

    /// Main PLL (PLL) division factor for USB OTG FS, SDIO and random number generator clocks
    @ReadWrite(bits: 26..<27)
    var pllq2: PLLQ2

    /// Main PLL (PLL) division factor for USB OTG FS, SDIO and random number generator clocks
    @ReadWrite(bits: 25..<26)
    var pllq1: PLLQ1

    /// Main PLL (PLL) division factor for USB OTG FS, SDIO and random number generator clocks
    @ReadWrite(bits: 24..<25)
    var pllq0: PLLQ0

    /// Main PLL(PLL) and audio PLL (PLLI2S) entry clock source
    @ReadWrite(bits: 22..<23)
    var pllsrc: PLLSRC

    /// Main PLL (PLL) division factor for main system clock
    @ReadWrite(bits: 17..<18)
    var pllp1: PLLP1

    /// Main PLL (PLL) division factor for main system clock
    @ReadWrite(bits: 16..<17)
    var pllp0: PLLP0

    /// Main PLL (PLL) multiplication factor for VCO
    @ReadWrite(bits: 14..<15)
    var plln8: PLLN8

    /// Main PLL (PLL) multiplication factor for VCO
    @ReadWrite(bits: 13..<14)
    var plln7: PLLN7

    /// Main PLL (PLL) multiplication factor for VCO
    @ReadWrite(bits: 12..<13)
    var plln6: PLLN6

    /// Main PLL (PLL) multiplication factor for VCO
    @ReadWrite(bits: 11..<12)
    var plln5: PLLN5

    /// Main PLL (PLL) multiplication factor for VCO
    @ReadWrite(bits: 10..<11)
    var plln4: PLLN4

    /// Main PLL (PLL) multiplication factor for VCO
    @ReadWrite(bits: 9..<10)
    var plln3: PLLN3

    /// Main PLL (PLL) multiplication factor for VCO
    @ReadWrite(bits: 8..<9)
    var plln2: PLLN2

    /// Main PLL (PLL) multiplication factor for VCO
    @ReadWrite(bits: 7..<8)
    var plln1: PLLN1

    /// Main PLL (PLL) multiplication factor for VCO
    @ReadWrite(bits: 6..<7)
    var plln0: PLLN0

    /// Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input clock
    @ReadWrite(bits: 5..<6)
    var pllm5: PLLM5

    /// Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input clock
    @ReadWrite(bits: 4..<5)
    var pllm4: PLLM4

    /// Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input clock
    @ReadWrite(bits: 3..<4)
    var pllm3: PLLM3

    /// Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input clock
    @ReadWrite(bits: 2..<3)
    var pllm2: PLLM2

    /// Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input clock
    @ReadWrite(bits: 1..<2)
    var pllm1: PLLM1

    /// Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input clock
    @ReadWrite(bits: 0..<1)
    var pllm0: PLLM0
  }

  /// clock configuration register
  @Register(bitWidth: 32)
  struct CFGR {
    /// Microcontroller clock output 2
    @ReadWrite(bits: 30..<32)
    var mco2: MCO2

    /// MCO2 prescaler
    @ReadWrite(bits: 27..<30)
    var mco2pre: MCO2PRE

    /// MCO1 prescaler
    @ReadWrite(bits: 24..<27)
    var mco1pre: MCO1PRE

    /// I2S clock selection
    @ReadWrite(bits: 23..<24)
    var i2ssrc: I2SSRC

    /// Microcontroller clock output 1
    @ReadWrite(bits: 21..<23)
    var mco1: MCO1

    /// HSE division factor for RTC clock
    @ReadWrite(bits: 16..<21)
    var rtcpre: RTCPRE

    /// APB high-speed prescaler (APB2)
    @ReadWrite(bits: 13..<16)
    var ppre2: PPRE2

    /// APB Low speed prescaler (APB1)
    @ReadWrite(bits: 10..<13)
    var ppre1: PPRE1

    /// AHB prescaler
    @ReadWrite(bits: 4..<8)
    var hpre: HPRE

    /// System clock switch status
    @ReadOnly(bits: 3..<4)
    var sws1: SWS1

    /// System clock switch status
    @ReadOnly(bits: 2..<3)
    var sws0: SWS0

    /// System clock switch
    @ReadWrite(bits: 1..<2)
    var sw1: SW1

    /// System clock switch
    @ReadWrite(bits: 0..<1)
    var sw0: SW0
  }

  /// clock interrupt register
  @Register(bitWidth: 32)
  struct CIR {
    /// Clock security system interrupt clear
    @WriteOnly(bits: 23..<24)
    var cssc: CSSC

    /// PLLSAI Ready Interrupt Clear
    @WriteOnly(bits: 22..<23)
    var pllsairdyc: PLLSAIRDYC

    /// PLLI2S ready interrupt clear
    @WriteOnly(bits: 21..<22)
    var plli2srdyc: PLLI2SRDYC

    /// Main PLL(PLL) ready interrupt clear
    @WriteOnly(bits: 20..<21)
    var pllrdyc: PLLRDYC

    /// HSE ready interrupt clear
    @WriteOnly(bits: 19..<20)
    var hserdyc: HSERDYC

    /// HSI ready interrupt clear
    @WriteOnly(bits: 18..<19)
    var hsirdyc: HSIRDYC

    /// LSE ready interrupt clear
    @WriteOnly(bits: 17..<18)
    var lserdyc: LSERDYC

    /// LSI ready interrupt clear
    @WriteOnly(bits: 16..<17)
    var lsirdyc: LSIRDYC

    /// PLLSAI Ready Interrupt Enable
    @ReadWrite(bits: 14..<15)
    var pllsairdyie: PLLSAIRDYIE

    /// PLLI2S ready interrupt enable
    @ReadWrite(bits: 13..<14)
    var plli2srdyie: PLLI2SRDYIE

    /// Main PLL (PLL) ready interrupt enable
    @ReadWrite(bits: 12..<13)
    var pllrdyie: PLLRDYIE

    /// HSE ready interrupt enable
    @ReadWrite(bits: 11..<12)
    var hserdyie: HSERDYIE

    /// HSI ready interrupt enable
    @ReadWrite(bits: 10..<11)
    var hsirdyie: HSIRDYIE

    /// LSE ready interrupt enable
    @ReadWrite(bits: 9..<10)
    var lserdyie: LSERDYIE

    /// LSI ready interrupt enable
    @ReadWrite(bits: 8..<9)
    var lsirdyie: LSIRDYIE

    /// Clock security system interrupt flag
    @ReadOnly(bits: 7..<8)
    var cssf: CSSF

    /// PLLSAI ready interrupt flag
    @ReadOnly(bits: 6..<7)
    var pllsairdyf: PLLSAIRDYF

    /// PLLI2S ready interrupt flag
    @ReadOnly(bits: 5..<6)
    var plli2srdyf: PLLI2SRDYF

    /// Main PLL (PLL) ready interrupt flag
    @ReadOnly(bits: 4..<5)
    var pllrdyf: PLLRDYF

    /// HSE ready interrupt flag
    @ReadOnly(bits: 3..<4)
    var hserdyf: HSERDYF

    /// HSI ready interrupt flag
    @ReadOnly(bits: 2..<3)
    var hsirdyf: HSIRDYF

    /// LSE ready interrupt flag
    @ReadOnly(bits: 1..<2)
    var lserdyf: LSERDYF

    /// LSI ready interrupt flag
    @ReadOnly(bits: 0..<1)
    var lsirdyf: LSIRDYF
  }

  /// AHB1 peripheral reset register
  @Register(bitWidth: 32)
  struct AHB1RSTR {
    /// USB OTG HS module reset
    @ReadWrite(bits: 29..<30)
    var otghsrst: OTGHSRST

    /// Ethernet MAC reset
    @ReadWrite(bits: 25..<26)
    var ethmacrst: ETHMACRST

    /// DMA2D reset
    @ReadWrite(bits: 23..<24)
    var dma2drst: DMA2DRST

    /// DMA2 reset
    @ReadWrite(bits: 22..<23)
    var dma2rst: DMA2RST

    /// DMA2 reset
    @ReadWrite(bits: 21..<22)
    var dma1rst: DMA1RST

    /// CRC reset
    @ReadWrite(bits: 12..<13)
    var crcrst: CRCRST

    /// IO port K reset
    @ReadWrite(bits: 10..<11)
    var gpiokrst: GPIOKRST

    /// IO port J reset
    @ReadWrite(bits: 9..<10)
    var gpiojrst: GPIOJRST

    /// IO port I reset
    @ReadWrite(bits: 8..<9)
    var gpioirst: GPIOIRST

    /// IO port H reset
    @ReadWrite(bits: 7..<8)
    var gpiohrst: GPIOHRST

    /// IO port G reset
    @ReadWrite(bits: 6..<7)
    var gpiogrst: GPIOGRST

    /// IO port F reset
    @ReadWrite(bits: 5..<6)
    var gpiofrst: GPIOFRST

    /// IO port E reset
    @ReadWrite(bits: 4..<5)
    var gpioerst: GPIOERST

    /// IO port D reset
    @ReadWrite(bits: 3..<4)
    var gpiodrst: GPIODRST

    /// IO port C reset
    @ReadWrite(bits: 2..<3)
    var gpiocrst: GPIOCRST

    /// IO port B reset
    @ReadWrite(bits: 1..<2)
    var gpiobrst: GPIOBRST

    /// IO port A reset
    @ReadWrite(bits: 0..<1)
    var gpioarst: GPIOARST
  }

  /// AHB2 peripheral reset register
  @Register(bitWidth: 32)
  struct AHB2RSTR {
    /// USB OTG FS module reset
    @ReadWrite(bits: 7..<8)
    var otgfsrst: OTGFSRST

    /// Random number generator module reset
    @ReadWrite(bits: 6..<7)
    var rngrst: RNGRST

    /// Hash module reset
    @ReadWrite(bits: 5..<6)
    var hsahrst: HSAHRST

    /// Cryptographic module reset
    @ReadWrite(bits: 4..<5)
    var cryprst: CRYPRST

    /// Camera interface reset
    @ReadWrite(bits: 0..<1)
    var dcmirst: DCMIRST
  }

  /// AHB3 peripheral reset register
  @Register(bitWidth: 32)
  struct AHB3RSTR {
    /// Flexible memory controller module reset
    @ReadWrite(bits: 0..<1)
    var fmcrst: FMCRST

    /// Quad SPI memory controller reset
    @ReadWrite(bits: 1..<2)
    var qspirst: QSPIRST
  }

  /// APB1 peripheral reset register
  @Register(bitWidth: 32)
  struct APB1RSTR {
    /// TIM2 reset
    @ReadWrite(bits: 0..<1)
    var tim2rst: TIM2RST

    /// TIM3 reset
    @ReadWrite(bits: 1..<2)
    var tim3rst: TIM3RST

    /// TIM4 reset
    @ReadWrite(bits: 2..<3)
    var tim4rst: TIM4RST

    /// TIM5 reset
    @ReadWrite(bits: 3..<4)
    var tim5rst: TIM5RST

    /// TIM6 reset
    @ReadWrite(bits: 4..<5)
    var tim6rst: TIM6RST

    /// TIM7 reset
    @ReadWrite(bits: 5..<6)
    var tim7rst: TIM7RST

    /// TIM12 reset
    @ReadWrite(bits: 6..<7)
    var tim12rst: TIM12RST

    /// TIM13 reset
    @ReadWrite(bits: 7..<8)
    var tim13rst: TIM13RST

    /// TIM14 reset
    @ReadWrite(bits: 8..<9)
    var tim14rst: TIM14RST

    /// Window watchdog reset
    @ReadWrite(bits: 11..<12)
    var wwdgrst: WWDGRST

    /// SPI 2 reset
    @ReadWrite(bits: 14..<15)
    var spi2rst: SPI2RST

    /// SPI 3 reset
    @ReadWrite(bits: 15..<16)
    var spi3rst: SPI3RST

    /// USART 2 reset
    @ReadWrite(bits: 17..<18)
    var uart2rst: UART2RST

    /// USART 3 reset
    @ReadWrite(bits: 18..<19)
    var uart3rst: UART3RST

    /// USART 4 reset
    @ReadWrite(bits: 19..<20)
    var uart4rst: UART4RST

    /// USART 5 reset
    @ReadWrite(bits: 20..<21)
    var uart5rst: UART5RST

    /// I2C 1 reset
    @ReadWrite(bits: 21..<22)
    var i2c1rst: I2C1RST

    /// I2C 2 reset
    @ReadWrite(bits: 22..<23)
    var i2c2rst: I2C2RST

    /// I2C3 reset
    @ReadWrite(bits: 23..<24)
    var i2c3rst: I2C3RST

    /// CAN1 reset
    @ReadWrite(bits: 25..<26)
    var can1rst: CAN1RST

    /// CAN2 reset
    @ReadWrite(bits: 26..<27)
    var can2rst: CAN2RST

    /// Power interface reset
    @ReadWrite(bits: 28..<29)
    var pwrrst: PWRRST

    /// DAC reset
    @ReadWrite(bits: 29..<30)
    var dacrst: DACRST

    /// UART7 reset
    @ReadWrite(bits: 30..<31)
    var uart7rst: UART7RST

    /// UART8 reset
    @ReadWrite(bits: 31..<32)
    var uart8rst: UART8RST

    /// SPDIF-RX reset
    @ReadWrite(bits: 16..<17)
    var spdifrxrst: SPDIFRXRST

    /// HDMI-CEC reset
    @ReadWrite(bits: 27..<28)
    var cecrst: CECRST

    /// Low power timer 1 reset
    @ReadWrite(bits: 9..<10)
    var lptim1rst: LPTIM1RST

    /// I2C 4 reset
    @ReadWrite(bits: 24..<25)
    var i2c4rst: I2C4RST
  }

  /// APB2 peripheral reset register
  @Register(bitWidth: 32)
  struct APB2RSTR {
    /// TIM1 reset
    @ReadWrite(bits: 0..<1)
    var tim1rst: TIM1RST

    /// TIM8 reset
    @ReadWrite(bits: 1..<2)
    var tim8rst: TIM8RST

    /// USART1 reset
    @ReadWrite(bits: 4..<5)
    var usart1rst: USART1RST

    /// USART6 reset
    @ReadWrite(bits: 5..<6)
    var usart6rst: USART6RST

    /// ADC interface reset (common to all ADCs)
    @ReadWrite(bits: 8..<9)
    var adcrst: ADCRST

    /// SPI 1 reset
    @ReadWrite(bits: 12..<13)
    var spi1rst: SPI1RST

    /// SPI4 reset
    @ReadWrite(bits: 13..<14)
    var spi4rst: SPI4RST

    /// System configuration controller reset
    @ReadWrite(bits: 14..<15)
    var syscfgrst: SYSCFGRST

    /// TIM9 reset
    @ReadWrite(bits: 16..<17)
    var tim9rst: TIM9RST

    /// TIM10 reset
    @ReadWrite(bits: 17..<18)
    var tim10rst: TIM10RST

    /// TIM11 reset
    @ReadWrite(bits: 18..<19)
    var tim11rst: TIM11RST

    /// SPI5 reset
    @ReadWrite(bits: 20..<21)
    var spi5rst: SPI5RST

    /// SPI6 reset
    @ReadWrite(bits: 21..<22)
    var spi6rst: SPI6RST

    /// SAI1 reset
    @ReadWrite(bits: 22..<23)
    var sai1rst: SAI1RST

    /// LTDC reset
    @ReadWrite(bits: 26..<27)
    var ltdcrst: LTDCRST

    /// SAI2 reset
    @ReadWrite(bits: 23..<24)
    var sai2rst: SAI2RST

    /// SDMMC1 reset
    @ReadWrite(bits: 11..<12)
    var sdmmc1rst: SDMMC1RST
  }

  /// AHB1 peripheral clock register
  @Register(bitWidth: 32)
  struct AHB1ENR {
    /// USB OTG HSULPI clock enable
    @ReadWrite(bits: 30..<31)
    var otghsulpien: OTGHSULPIEN

    /// USB OTG HS clock enable
    @ReadWrite(bits: 29..<30)
    var otghsen: OTGHSEN

    /// Ethernet PTP clock enable
    @ReadWrite(bits: 28..<29)
    var ethmacptpen: ETHMACPTPEN

    /// Ethernet Reception clock enable
    @ReadWrite(bits: 27..<28)
    var ethmacrxen: ETHMACRXEN

    /// Ethernet Transmission clock enable
    @ReadWrite(bits: 26..<27)
    var ethmactxen: ETHMACTXEN

    /// Ethernet MAC clock enable
    @ReadWrite(bits: 25..<26)
    var ethmacen: ETHMACEN

    /// DMA2D clock enable
    @ReadWrite(bits: 23..<24)
    var dma2den: DMA2DEN

    /// DMA2 clock enable
    @ReadWrite(bits: 22..<23)
    var dma2en: DMA2EN

    /// DMA1 clock enable
    @ReadWrite(bits: 21..<22)
    var dma1en: DMA1EN

    /// CCM data RAM clock enable
    @ReadWrite(bits: 20..<21)
    var ccmdataramen: CCMDATARAMEN

    /// Backup SRAM interface clock enable
    @ReadWrite(bits: 18..<19)
    var bkpsramen: BKPSRAMEN

    /// CRC clock enable
    @ReadWrite(bits: 12..<13)
    var crcen: CRCEN

    /// IO port K clock enable
    @ReadWrite(bits: 10..<11)
    var gpioken: GPIOKEN

    /// IO port J clock enable
    @ReadWrite(bits: 9..<10)
    var gpiojen: GPIOJEN

    /// IO port I clock enable
    @ReadWrite(bits: 8..<9)
    var gpioien: GPIOIEN

    /// IO port H clock enable
    @ReadWrite(bits: 7..<8)
    var gpiohen: GPIOHEN

    /// IO port G clock enable
    @ReadWrite(bits: 6..<7)
    var gpiogen: GPIOGEN

    /// IO port F clock enable
    @ReadWrite(bits: 5..<6)
    var gpiofen: GPIOFEN

    /// IO port E clock enable
    @ReadWrite(bits: 4..<5)
    var gpioeen: GPIOEEN

    /// IO port D clock enable
    @ReadWrite(bits: 3..<4)
    var gpioden: GPIODEN

    /// IO port C clock enable
    @ReadWrite(bits: 2..<3)
    var gpiocen: GPIOCEN

    /// IO port B clock enable
    @ReadWrite(bits: 1..<2)
    var gpioben: GPIOBEN

    /// IO port A clock enable
    @ReadWrite(bits: 0..<1)
    var gpioaen: GPIOAEN
  }

  /// AHB2 peripheral clock enable register
  @Register(bitWidth: 32)
  struct AHB2ENR {
    /// USB OTG FS clock enable
    @ReadWrite(bits: 7..<8)
    var otgfsen: OTGFSEN

    /// Random number generator clock enable
    @ReadWrite(bits: 6..<7)
    var rngen: RNGEN

    /// Hash modules clock enable
    @ReadWrite(bits: 5..<6)
    var hashen: HASHEN

    /// Cryptographic modules clock enable
    @ReadWrite(bits: 4..<5)
    var crypen: CRYPEN

    /// Camera interface enable
    @ReadWrite(bits: 0..<1)
    var dcmien: DCMIEN
  }

  /// AHB3 peripheral clock enable register
  @Register(bitWidth: 32)
  struct AHB3ENR {
    /// Flexible memory controller module clock enable
    @ReadWrite(bits: 0..<1)
    var fmcen: FMCEN

    /// Quad SPI memory controller clock enable
    @ReadWrite(bits: 1..<2)
    var qspien: QSPIEN
  }

  /// APB1 peripheral clock enable register
  @Register(bitWidth: 32)
  struct APB1ENR {
    /// TIM2 clock enable
    @ReadWrite(bits: 0..<1)
    var tim2en: TIM2EN

    /// TIM3 clock enable
    @ReadWrite(bits: 1..<2)
    var tim3en: TIM3EN

    /// TIM4 clock enable
    @ReadWrite(bits: 2..<3)
    var tim4en: TIM4EN

    /// TIM5 clock enable
    @ReadWrite(bits: 3..<4)
    var tim5en: TIM5EN

    /// TIM6 clock enable
    @ReadWrite(bits: 4..<5)
    var tim6en: TIM6EN

    /// TIM7 clock enable
    @ReadWrite(bits: 5..<6)
    var tim7en: TIM7EN

    /// TIM12 clock enable
    @ReadWrite(bits: 6..<7)
    var tim12en: TIM12EN

    /// TIM13 clock enable
    @ReadWrite(bits: 7..<8)
    var tim13en: TIM13EN

    /// TIM14 clock enable
    @ReadWrite(bits: 8..<9)
    var tim14en: TIM14EN

    /// Window watchdog clock enable
    @ReadWrite(bits: 11..<12)
    var wwdgen: WWDGEN

    /// SPI2 clock enable
    @ReadWrite(bits: 14..<15)
    var spi2en: SPI2EN

    /// SPI3 clock enable
    @ReadWrite(bits: 15..<16)
    var spi3en: SPI3EN

    /// USART 2 clock enable
    @ReadWrite(bits: 17..<18)
    var usart2en: USART2EN

    /// USART3 clock enable
    @ReadWrite(bits: 18..<19)
    var usart3en: USART3EN

    /// UART4 clock enable
    @ReadWrite(bits: 19..<20)
    var uart4en: UART4EN

    /// UART5 clock enable
    @ReadWrite(bits: 20..<21)
    var uart5en: UART5EN

    /// I2C1 clock enable
    @ReadWrite(bits: 21..<22)
    var i2c1en: I2C1EN

    /// I2C2 clock enable
    @ReadWrite(bits: 22..<23)
    var i2c2en: I2C2EN

    /// I2C3 clock enable
    @ReadWrite(bits: 23..<24)
    var i2c3en: I2C3EN

    /// CAN 1 clock enable
    @ReadWrite(bits: 25..<26)
    var can1en: CAN1EN

    /// CAN 2 clock enable
    @ReadWrite(bits: 26..<27)
    var can2en: CAN2EN

    /// Power interface clock enable
    @ReadWrite(bits: 28..<29)
    var pwren: PWREN

    /// DAC interface clock enable
    @ReadWrite(bits: 29..<30)
    var dacen: DACEN

    /// UART7 clock enable
    @ReadWrite(bits: 30..<31)
    var uart7enr: UART7ENR

    /// UART8 clock enable
    @ReadWrite(bits: 31..<32)
    var uart8enr: UART8ENR

    /// SPDIF-RX clock enable
    @ReadWrite(bits: 16..<17)
    var spdifrxen: SPDIFRXEN

    /// HDMI-CEN clock enable
    @ReadWrite(bits: 27..<28)
    var cecen: CECEN

    /// Low power timer 1 clock enable
    @ReadWrite(bits: 9..<10)
    var lptmi1en: LPTMI1EN

    /// I2C4 clock enable
    @ReadWrite(bits: 24..<25)
    var i2c4en: I2C4EN
  }

  /// APB2 peripheral clock enable register
  @Register(bitWidth: 32)
  struct APB2ENR {
    /// TIM1 clock enable
    @ReadWrite(bits: 0..<1)
    var tim1en: TIM1EN

    /// TIM8 clock enable
    @ReadWrite(bits: 1..<2)
    var tim8en: TIM8EN

    /// USART1 clock enable
    @ReadWrite(bits: 4..<5)
    var usart1en: USART1EN

    /// USART6 clock enable
    @ReadWrite(bits: 5..<6)
    var usart6en: USART6EN

    /// ADC1 clock enable
    @ReadWrite(bits: 8..<9)
    var adc1en: ADC1EN

    /// ADC2 clock enable
    @ReadWrite(bits: 9..<10)
    var adc2en: ADC2EN

    /// ADC3 clock enable
    @ReadWrite(bits: 10..<11)
    var adc3en: ADC3EN

    /// SPI1 clock enable
    @ReadWrite(bits: 12..<13)
    var spi1en: SPI1EN

    /// SPI4 clock enable
    @ReadWrite(bits: 13..<14)
    var spi4enr: SPI4ENR

    /// System configuration controller clock enable
    @ReadWrite(bits: 14..<15)
    var syscfgen: SYSCFGEN

    /// TIM9 clock enable
    @ReadWrite(bits: 16..<17)
    var tim9en: TIM9EN

    /// TIM10 clock enable
    @ReadWrite(bits: 17..<18)
    var tim10en: TIM10EN

    /// TIM11 clock enable
    @ReadWrite(bits: 18..<19)
    var tim11en: TIM11EN

    /// SPI5 clock enable
    @ReadWrite(bits: 20..<21)
    var spi5enr: SPI5ENR

    /// SPI6 clock enable
    @ReadWrite(bits: 21..<22)
    var spi6enr: SPI6ENR

    /// SAI1 clock enable
    @ReadWrite(bits: 22..<23)
    var sai1en: SAI1EN

    /// LTDC clock enable
    @ReadWrite(bits: 26..<27)
    var ltdcen: LTDCEN

    /// SAI2 clock enable
    @ReadWrite(bits: 23..<24)
    var sai2en: SAI2EN

    /// SDMMC1 clock enable
    @ReadWrite(bits: 11..<12)
    var sdmmc1en: SDMMC1EN
  }

  /// AHB1 peripheral clock enable in low power mode register
  @Register(bitWidth: 32)
  struct AHB1LPENR {
    /// IO port A clock enable during sleep mode
    @ReadWrite(bits: 0..<1)
    var gpioalpen: GPIOALPEN

    /// IO port B clock enable during Sleep mode
    @ReadWrite(bits: 1..<2)
    var gpioblpen: GPIOBLPEN

    /// IO port C clock enable during Sleep mode
    @ReadWrite(bits: 2..<3)
    var gpioclpen: GPIOCLPEN

    /// IO port D clock enable during Sleep mode
    @ReadWrite(bits: 3..<4)
    var gpiodlpen: GPIODLPEN

    /// IO port E clock enable during Sleep mode
    @ReadWrite(bits: 4..<5)
    var gpioelpen: GPIOELPEN

    /// IO port F clock enable during Sleep mode
    @ReadWrite(bits: 5..<6)
    var gpioflpen: GPIOFLPEN

    /// IO port G clock enable during Sleep mode
    @ReadWrite(bits: 6..<7)
    var gpioglpen: GPIOGLPEN

    /// IO port H clock enable during Sleep mode
    @ReadWrite(bits: 7..<8)
    var gpiohlpen: GPIOHLPEN

    /// IO port I clock enable during Sleep mode
    @ReadWrite(bits: 8..<9)
    var gpioilpen: GPIOILPEN

    /// IO port J clock enable during Sleep mode
    @ReadWrite(bits: 9..<10)
    var gpiojlpen: GPIOJLPEN

    /// IO port K clock enable during Sleep mode
    @ReadWrite(bits: 10..<11)
    var gpioklpen: GPIOKLPEN

    /// CRC clock enable during Sleep mode
    @ReadWrite(bits: 12..<13)
    var crclpen: CRCLPEN

    /// Flash interface clock enable during Sleep mode
    @ReadWrite(bits: 15..<16)
    var flitflpen: FLITFLPEN

    /// SRAM 1interface clock enable during Sleep mode
    @ReadWrite(bits: 16..<17)
    var sram1lpen: SRAM1LPEN

    /// SRAM 2 interface clock enable during Sleep mode
    @ReadWrite(bits: 17..<18)
    var sram2lpen: SRAM2LPEN

    /// Backup SRAM interface clock enable during Sleep mode
    @ReadWrite(bits: 18..<19)
    var bkpsramlpen: BKPSRAMLPEN

    /// SRAM 3 interface clock enable during Sleep mode
    @ReadWrite(bits: 19..<20)
    var sram3lpen: SRAM3LPEN

    /// DMA1 clock enable during Sleep mode
    @ReadWrite(bits: 21..<22)
    var dma1lpen: DMA1LPEN

    /// DMA2 clock enable during Sleep mode
    @ReadWrite(bits: 22..<23)
    var dma2lpen: DMA2LPEN

    /// DMA2D clock enable during Sleep mode
    @ReadWrite(bits: 23..<24)
    var dma2dlpen: DMA2DLPEN

    /// Ethernet MAC clock enable during Sleep mode
    @ReadWrite(bits: 25..<26)
    var ethmaclpen: ETHMACLPEN

    /// Ethernet transmission clock enable during Sleep mode
    @ReadWrite(bits: 26..<27)
    var ethmactxlpen: ETHMACTXLPEN

    /// Ethernet reception clock enable during Sleep mode
    @ReadWrite(bits: 27..<28)
    var ethmacrxlpen: ETHMACRXLPEN

    /// Ethernet PTP clock enable during Sleep mode
    @ReadWrite(bits: 28..<29)
    var ethmacptplpen: ETHMACPTPLPEN

    /// USB OTG HS clock enable during Sleep mode
    @ReadWrite(bits: 29..<30)
    var otghslpen: OTGHSLPEN

    /// USB OTG HS ULPI clock enable during Sleep mode
    @ReadWrite(bits: 30..<31)
    var otghsulpilpen: OTGHSULPILPEN
  }

  /// AHB2 peripheral clock enable in low power mode register
  @Register(bitWidth: 32)
  struct AHB2LPENR {
    /// USB OTG FS clock enable during Sleep mode
    @ReadWrite(bits: 7..<8)
    var otgfslpen: OTGFSLPEN

    /// Random number generator clock enable during Sleep mode
    @ReadWrite(bits: 6..<7)
    var rnglpen: RNGLPEN

    /// Hash modules clock enable during Sleep mode
    @ReadWrite(bits: 5..<6)
    var hashlpen: HASHLPEN

    /// Cryptography modules clock enable during Sleep mode
    @ReadWrite(bits: 4..<5)
    var cryplpen: CRYPLPEN

    /// Camera interface enable during Sleep mode
    @ReadWrite(bits: 0..<1)
    var dcmilpen: DCMILPEN
  }

  /// AHB3 peripheral clock enable in low power mode register
  @Register(bitWidth: 32)
  struct AHB3LPENR {
    /// Flexible memory controller module clock enable during Sleep mode
    @ReadWrite(bits: 0..<1)
    var fmclpen: FMCLPEN

    /// Quand SPI memory controller clock enable during Sleep mode
    @ReadWrite(bits: 1..<2)
    var qspilpen: QSPILPEN
  }

  /// APB1 peripheral clock enable in low power mode register
  @Register(bitWidth: 32)
  struct APB1LPENR {
    /// TIM2 clock enable during Sleep mode
    @ReadWrite(bits: 0..<1)
    var tim2lpen: TIM2LPEN

    /// TIM3 clock enable during Sleep mode
    @ReadWrite(bits: 1..<2)
    var tim3lpen: TIM3LPEN

    /// TIM4 clock enable during Sleep mode
    @ReadWrite(bits: 2..<3)
    var tim4lpen: TIM4LPEN

    /// TIM5 clock enable during Sleep mode
    @ReadWrite(bits: 3..<4)
    var tim5lpen: TIM5LPEN

    /// TIM6 clock enable during Sleep mode
    @ReadWrite(bits: 4..<5)
    var tim6lpen: TIM6LPEN

    /// TIM7 clock enable during Sleep mode
    @ReadWrite(bits: 5..<6)
    var tim7lpen: TIM7LPEN

    /// TIM12 clock enable during Sleep mode
    @ReadWrite(bits: 6..<7)
    var tim12lpen: TIM12LPEN

    /// TIM13 clock enable during Sleep mode
    @ReadWrite(bits: 7..<8)
    var tim13lpen: TIM13LPEN

    /// TIM14 clock enable during Sleep mode
    @ReadWrite(bits: 8..<9)
    var tim14lpen: TIM14LPEN

    /// Window watchdog clock enable during Sleep mode
    @ReadWrite(bits: 11..<12)
    var wwdglpen: WWDGLPEN

    /// SPI2 clock enable during Sleep mode
    @ReadWrite(bits: 14..<15)
    var spi2lpen: SPI2LPEN

    /// SPI3 clock enable during Sleep mode
    @ReadWrite(bits: 15..<16)
    var spi3lpen: SPI3LPEN

    /// USART2 clock enable during Sleep mode
    @ReadWrite(bits: 17..<18)
    var usart2lpen: USART2LPEN

    /// USART3 clock enable during Sleep mode
    @ReadWrite(bits: 18..<19)
    var usart3lpen: USART3LPEN

    /// UART4 clock enable during Sleep mode
    @ReadWrite(bits: 19..<20)
    var uart4lpen: UART4LPEN

    /// UART5 clock enable during Sleep mode
    @ReadWrite(bits: 20..<21)
    var uart5lpen: UART5LPEN

    /// I2C1 clock enable during Sleep mode
    @ReadWrite(bits: 21..<22)
    var i2c1lpen: I2C1LPEN

    /// I2C2 clock enable during Sleep mode
    @ReadWrite(bits: 22..<23)
    var i2c2lpen: I2C2LPEN

    /// I2C3 clock enable during Sleep mode
    @ReadWrite(bits: 23..<24)
    var i2c3lpen: I2C3LPEN

    /// CAN 1 clock enable during Sleep mode
    @ReadWrite(bits: 25..<26)
    var can1lpen: CAN1LPEN

    /// CAN 2 clock enable during Sleep mode
    @ReadWrite(bits: 26..<27)
    var can2lpen: CAN2LPEN

    /// Power interface clock enable during Sleep mode
    @ReadWrite(bits: 28..<29)
    var pwrlpen: PWRLPEN

    /// DAC interface clock enable during Sleep mode
    @ReadWrite(bits: 29..<30)
    var daclpen: DACLPEN

    /// UART7 clock enable during Sleep mode
    @ReadWrite(bits: 30..<31)
    var uart7lpen: UART7LPEN

    /// UART8 clock enable during Sleep mode
    @ReadWrite(bits: 31..<32)
    var uart8lpen: UART8LPEN

    /// SPDIF-RX clock enable during sleep mode
    @ReadWrite(bits: 16..<17)
    var spdifrxlpen: SPDIFRXLPEN

    /// HDMI-CEN clock enable during Sleep mode
    @ReadWrite(bits: 27..<28)
    var ceclpen: CECLPEN

    /// low power timer 1 clock enable during Sleep mode
    @ReadWrite(bits: 9..<10)
    var lptim1lpen: LPTIM1LPEN

    /// I2C4 clock enable during Sleep mode
    @ReadWrite(bits: 24..<25)
    var i2c4lpen: I2C4LPEN
  }

  /// APB2 peripheral clock enabled in low power mode register
  @Register(bitWidth: 32)
  struct APB2LPENR {
    /// TIM1 clock enable during Sleep mode
    @ReadWrite(bits: 0..<1)
    var tim1lpen: TIM1LPEN

    /// TIM8 clock enable during Sleep mode
    @ReadWrite(bits: 1..<2)
    var tim8lpen: TIM8LPEN

    /// USART1 clock enable during Sleep mode
    @ReadWrite(bits: 4..<5)
    var usart1lpen: USART1LPEN

    /// USART6 clock enable during Sleep mode
    @ReadWrite(bits: 5..<6)
    var usart6lpen: USART6LPEN

    /// ADC1 clock enable during Sleep mode
    @ReadWrite(bits: 8..<9)
    var adc1lpen: ADC1LPEN

    /// ADC2 clock enable during Sleep mode
    @ReadWrite(bits: 9..<10)
    var adc2lpen: ADC2LPEN

    /// ADC 3 clock enable during Sleep mode
    @ReadWrite(bits: 10..<11)
    var adc3lpen: ADC3LPEN

    /// SPI 1 clock enable during Sleep mode
    @ReadWrite(bits: 12..<13)
    var spi1lpen: SPI1LPEN

    /// SPI 4 clock enable during Sleep mode
    @ReadWrite(bits: 13..<14)
    var spi4lpen: SPI4LPEN

    /// System configuration controller clock enable during Sleep mode
    @ReadWrite(bits: 14..<15)
    var syscfglpen: SYSCFGLPEN

    /// TIM9 clock enable during sleep mode
    @ReadWrite(bits: 16..<17)
    var tim9lpen: TIM9LPEN

    /// TIM10 clock enable during Sleep mode
    @ReadWrite(bits: 17..<18)
    var tim10lpen: TIM10LPEN

    /// TIM11 clock enable during Sleep mode
    @ReadWrite(bits: 18..<19)
    var tim11lpen: TIM11LPEN

    /// SPI 5 clock enable during Sleep mode
    @ReadWrite(bits: 20..<21)
    var spi5lpen: SPI5LPEN

    /// SPI 6 clock enable during Sleep mode
    @ReadWrite(bits: 21..<22)
    var spi6lpen: SPI6LPEN

    /// SAI1 clock enable during sleep mode
    @ReadWrite(bits: 22..<23)
    var sai1lpen: SAI1LPEN

    /// LTDC clock enable during sleep mode
    @ReadWrite(bits: 26..<27)
    var ltdclpen: LTDCLPEN

    /// SAI2 clock enable during sleep mode
    @ReadWrite(bits: 23..<24)
    var sai2lpen: SAI2LPEN

    /// SDMMC1 clock enable during Sleep mode
    @ReadWrite(bits: 11..<12)
    var sdmmc1lpen: SDMMC1LPEN
  }

  /// Backup domain control register
  @Register(bitWidth: 32)
  struct BDCR {
    /// Backup domain software reset
    @ReadWrite(bits: 16..<17)
    var bdrst: BDRST

    /// RTC clock enable
    @ReadWrite(bits: 15..<16)
    var rtcen: RTCEN

    /// RTC clock source selection
    @ReadWrite(bits: 9..<10)
    var rtcsel1: RTCSEL1

    /// RTC clock source selection
    @ReadWrite(bits: 8..<9)
    var rtcsel0: RTCSEL0

    /// External low-speed oscillator bypass
    @ReadWrite(bits: 2..<3)
    var lsebyp: LSEBYP

    /// External low-speed oscillator ready
    @ReadOnly(bits: 1..<2)
    var lserdy: LSERDY

    /// External low-speed oscillator enable
    @ReadWrite(bits: 0..<1)
    var lseon: LSEON
  }

  /// clock control & status register
  @Register(bitWidth: 32)
  struct CSR {
    /// Low-power reset flag
    @ReadWrite(bits: 31..<32)
    var lpwrrstf: LPWRRSTF

    /// Window watchdog reset flag
    @ReadWrite(bits: 30..<31)
    var wwdgrstf: WWDGRSTF

    /// Independent watchdog reset flag
    @ReadWrite(bits: 29..<30)
    var wdgrstf: WDGRSTF

    /// Software reset flag
    @ReadWrite(bits: 28..<29)
    var sftrstf: SFTRSTF

    /// POR/PDR reset flag
    @ReadWrite(bits: 27..<28)
    var porrstf: PORRSTF

    /// PIN reset flag
    @ReadWrite(bits: 26..<27)
    var padrstf: PADRSTF

    /// BOR reset flag
    @ReadWrite(bits: 25..<26)
    var borrstf: BORRSTF

    /// Remove reset flag
    @ReadWrite(bits: 24..<25)
    var rmvf: RMVF

    /// Internal low-speed oscillator ready
    @ReadOnly(bits: 1..<2)
    var lsirdy: LSIRDY

    /// Internal low-speed oscillator enable
    @ReadWrite(bits: 0..<1)
    var lsion: LSION
  }

  /// spread spectrum clock generation register
  @Register(bitWidth: 32)
  struct SSCGR {
    /// Spread spectrum modulation enable
    @ReadWrite(bits: 31..<32)
    var sscgen: SSCGEN

    /// Spread Select
    @ReadWrite(bits: 30..<31)
    var spreadsel: SPREADSEL

    /// Incrementation step
    @ReadWrite(bits: 13..<28)
    var incstep: INCSTEP

    /// Modulation period
    @ReadWrite(bits: 0..<13)
    var modper: MODPER
  }

  /// PLLI2S configuration register
  @Register(bitWidth: 32)
  struct PLLI2SCFGR {
    /// PLLI2S division factor for I2S clocks
    @ReadWrite(bits: 28..<31)
    var plli2sr: PLLI2SR

    /// PLLI2S division factor for SAI1 clock
    @ReadWrite(bits: 24..<28)
    var plli2sq: PLLI2SQ

    /// PLLI2S multiplication factor for VCO
    @ReadWrite(bits: 6..<15)
    var plli2sn: PLLI2SN
  }

  /// PLL configuration register
  @Register(bitWidth: 32)
  struct PLLSAICFGR {
    /// PLLSAI division factor for VCO
    @ReadWrite(bits: 6..<15)
    var pllsain: PLLSAIN

    /// PLLSAI division factor for 48MHz clock
    @ReadWrite(bits: 16..<18)
    var pllsaip: PLLSAIP

    /// PLLSAI division factor for SAI clock
    @ReadWrite(bits: 24..<28)
    var pllsaiq: PLLSAIQ

    /// PLLSAI division factor for LCD clock
    @ReadWrite(bits: 28..<31)
    var pllsair: PLLSAIR
  }

  /// dedicated clocks configuration register
  @Register(bitWidth: 32)
  struct DKCFGR1 {
    /// PLLI2S division factor for SAI1 clock
    @ReadWrite(bits: 0..<5)
    var plli2sdiv: PLLI2SDIV

    /// PLLSAI division factor for SAI1 clock
    @ReadWrite(bits: 8..<13)
    var pllsaidivq: PLLSAIDIVQ

    /// division factor for LCD_CLK
    @ReadWrite(bits: 16..<18)
    var pllsaidivr: PLLSAIDIVR

    /// SAI1 clock source selection
    @ReadWrite(bits: 20..<22)
    var sai1sel: SAI1SEL

    /// SAI2 clock source selection
    @ReadWrite(bits: 22..<24)
    var sai2sel: SAI2SEL

    /// Timers clocks prescalers selection
    @ReadWrite(bits: 24..<25)
    var timpre: TIMPRE
  }

  /// dedicated clocks configuration register
  @Register(bitWidth: 32)
  struct DKCFGR2 {
    /// USART 1 clock source selection
    @ReadWrite(bits: 0..<2)
    var usart1sel: USART1SEL

    /// USART 2 clock source selection
    @ReadWrite(bits: 2..<4)
    var usart2sel: USART2SEL

    /// USART 3 clock source selection
    @ReadWrite(bits: 4..<6)
    var usart3sel: USART3SEL

    /// UART 4 clock source selection
    @ReadWrite(bits: 6..<8)
    var uart4sel: UART4SEL

    /// UART 5 clock source selection
    @ReadWrite(bits: 8..<10)
    var uart5sel: UART5SEL

    /// USART 6 clock source selection
    @ReadWrite(bits: 10..<12)
    var usart6sel: USART6SEL

    /// UART 7 clock source selection
    @ReadWrite(bits: 12..<14)
    var uart7sel: UART7SEL

    /// UART 8 clock source selection
    @ReadWrite(bits: 14..<16)
    var uart8sel: UART8SEL

    /// I2C1 clock source selection
    @ReadWrite(bits: 16..<18)
    var i2c1sel: I2C1SEL

    /// I2C2 clock source selection
    @ReadWrite(bits: 18..<20)
    var i2c2sel: I2C2SEL

    /// I2C3 clock source selection
    @ReadWrite(bits: 20..<22)
    var i2c3sel: I2C3SEL

    /// I2C4 clock source selection
    @ReadWrite(bits: 22..<24)
    var i2c4sel: I2C4SEL

    /// Low power timer 1 clock source selection
    @ReadWrite(bits: 24..<26)
    var lptim1sel: LPTIM1SEL

    /// HDMI-CEC clock source selection
    @ReadWrite(bits: 26..<27)
    var cecsel: CECSEL

    /// 48MHz clock source selection
    @ReadWrite(bits: 27..<28)
    var ck48msel: CK48MSEL

    /// SDMMC clock source selection
    @ReadWrite(bits: 28..<29)
    var sdmmcsel: SDMMCSEL
  }
}
