#!/bin/bash
# See http://www.emutexlabs.com/project/215-intel-edison-gpio-pin-multiplexing-guide
: '
Example 1: Configure IO5 as a GPIO input, with pull-up resistor disabled

1. The shield number is IO5. According to Table 1, the GPIO number is 13.
2. The function required is GPIO. According to Table 1, other functions available on this shield pin are: PWM
3. According to Table 3, GPIO 43 pin-mux must be set to mode0 to select GPIO According to Table 4, GPIO 253 must be set to 0 to disable the output direction for IO5.
4. According to Table 4, GPIO 221 must be set as a high-impedance input to disable the external pull-up resistor for IO5.
5. According to Table 5, the TRI_STATE_ALL signal is controlled by GPIO 214

So, the commands in Linux to achieve this are as follows:
'

echo 13 > /sys/class/gpio/export
echo 253 > /sys/class/gpio/export
echo 221 > /sys/class/gpio/export
echo 214 > /sys/class/gpio/export
echo low > /sys/class/gpio/gpio214/direction
echo low > /sys/class/gpio/gpio253/direction
echo in > /sys/class/gpio/gpio221/direction
echo mode0 > /sys/kernel/debug/gpio_debug/gpio13/current_pinmux
echo in > /sys/class/gpio/gpio13/direction
echo high > /sys/class/gpio/gpio214/direction