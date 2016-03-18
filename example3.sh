#!/bin/bash
# See http://www.emutexlabs.com/project/215-intel-edison-gpio-pin-multiplexing-guide
: '
Example 3: Configure IO6 as a PWM output

1. The shield number is IO6. According to Table 1, the GPIO number is 182.
2. The function required is PWM. According to Table 1, other functions available on this pin are: GPIO
3. According to Table 3, GPIO 182 pin-mux must be set to ‘mode1’ to select PWM
4. According to Table 4, GPIO 254 must be set to 1 to enable the output direction for IO6.
5. According to Table 4, GPIO 222 must be set as a high-impedance input to disable the pull-up resistor for IO6.
6. According to Table 5, the TRI_STATE_ALL signal is controlled by GPIO 214
'

echo 254 > /sys/class/gpio/export
echo 222 > /sys/class/gpio/export
echo 214 > /sys/class/gpio/export
echo low > /sys/class/gpio/gpio214/direction
echo high > /sys/class/gpio/gpio254/direction
echo in > /sys/class/gpio/gpio222/direction
echo mode1 > /sys/kernel/debug/gpio_debug/gpio182/current_pinmux
echo high > /sys/class/gpio/gpio214/direction