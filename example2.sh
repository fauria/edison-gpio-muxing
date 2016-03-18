#!/bin/bash
# See http://www.emutexlabs.com/project/215-intel-edison-gpio-pin-multiplexing-guide
: '
Example 2: Configure IO7 as a GPIO input, with pull-up resistor enabled

1. The shield number is IO7. According to Table 1, the GPIO number is 48.
2. The function required is GPIO. According to Table 1, there are no other functions available on this pin
3. For IO7, there are no applicable mux options listed in Table 3.
4. According to Table 4, GPIO 255 must be set to 0 to disable the output direction for IO7.
5. According to Table 4, GPIO 223 must be set to output high to enable the external pull-up resistor for IO7.
6. According to Table 5, the TRI_STATE_ALL signal is controlled by GPIO 214
'

echo 48 > /sys/class/gpio/export
echo 255 > /sys/class/gpio/export
echo 223 > /sys/class/gpio/export
echo 214 > /sys/class/gpio/export
echo low > /sys/class/gpio/gpio214/direction
echo low > /sys/class/gpio/gpio255/direction
echo high > /sys/class/gpio/gpio223/direction
echo in > /sys/class/gpio/gpio48/direction
echo high > /sys/class/gpio/gpio214/direction