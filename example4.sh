#!/bin/bash
# See http://www.emutexlabs.com/project/215-intel-edison-gpio-pin-multiplexing-guide
: '
Example 4: Configure IO18/IO19 for I2C connectivity

1. The shield number is IO18 and IO19. Corresponding GPIO numbers are 28 and 27, respectively.
2. The function required is I2C. According to Table 1, other functions available on these pins are: GPIO, ADC
3. According to Table 3, GPIO 204 must be set to 0 to select GPIO/I2C, and GPIO 28 pin-mux must be set to ‘mode1’ to select I2C for IO18
4. According to Table 3, GPIO 205 must be set to 0 to select GPIO/I2C, and GPIO 27 pin-mux must be set to ‘mode1’ to select I2C for IO19
5. GPIO 14 and GPIO 165 are also connected to the I2C signals, and should be configured as high-impedance inputs when I2C is in use on these pins, to prevent them driving a signal on the I2C bus.
6. According to Table 4, GPIO 236 must be set to 0 to disable the output direction for GPIO 14, and GPIO 237 must be set to 0 to disable the output direction for GPIO 165.
7. According to Table 4, GPIO 212 and 213 must be set as high-impedance inputs to disable the pull-up resistors for IO18 and IO19, respectively.
8. According to Table 5, the TRI_STATE_ALL signal is controlled by GPIO 214

So, the commands in Linux to achieve this are as follows:
'

echo 28 > /sys/class/gpio/export
echo 27 > /sys/class/gpio/export
echo 204 > /sys/class/gpio/export
echo 205 > /sys/class/gpio/export
echo 236 > /sys/class/gpio/export
echo 237 > /sys/class/gpio/export
echo 14 > /sys/class/gpio/export
echo 165 > /sys/class/gpio/export
echo 212 > /sys/class/gpio/export
echo 213 > /sys/class/gpio/export
echo 214 > /sys/class/gpio/export
echo low > /sys/class/gpio/gpio214/direction
echo low > /sys/class/gpio/gpio204/direction
echo low > /sys/class/gpio/gpio205/direction
echo in > /sys/class/gpio/gpio14/direction
echo in > /sys/class/gpio/gpio165/direction
echo low > /sys/class/gpio/gpio236/direction
echo low > /sys/class/gpio/gpio237/direction
echo in > /sys/class/gpio/gpio212/direction
echo in > /sys/class/gpio/gpio213/direction
echo mode1 > /sys/kernel/debug/gpio_debug/gpio28/current_pinmux
echo mode1 > /sys/kernel/debug/gpio_debug/gpio27/current_pinmux
echo high > /sys/class/gpio/gpio214/direction