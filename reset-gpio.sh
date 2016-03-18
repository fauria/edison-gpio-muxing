#!/bin/bash
# Reset Edison GPIO
2>/dev/null echo 13 > /sys/class/gpio/unexport
2>/dev/null echo 14 > /sys/class/gpio/unexport
2>/dev/null echo 27 > /sys/class/gpio/unexport
2>/dev/null echo 28 > /sys/class/gpio/unexport
2>/dev/null echo 48 > /sys/class/gpio/unexport
2>/dev/null echo 109 > /sys/class/gpio/unexport
2>/dev/null echo 111 > /sys/class/gpio/unexport
2>/dev/null echo 114 > /sys/class/gpio/unexport
2>/dev/null echo 115 > /sys/class/gpio/unexport
2>/dev/null echo 165 > /sys/class/gpio/unexport
2>/dev/null echo 204 > /sys/class/gpio/unexport
2>/dev/null echo 205 > /sys/class/gpio/unexport
2>/dev/null echo 212 > /sys/class/gpio/unexport
2>/dev/null echo 213 > /sys/class/gpio/unexport
2>/dev/null echo 214 > /sys/class/gpio/unexport
2>/dev/null echo 221 > /sys/class/gpio/unexport
2>/dev/null echo 222 > /sys/class/gpio/unexport
2>/dev/null echo 223 > /sys/class/gpio/unexport
2>/dev/null echo 226 > /sys/class/gpio/unexport
2>/dev/null echo 227 > /sys/class/gpio/unexport
2>/dev/null echo 228 > /sys/class/gpio/unexport
2>/dev/null echo 229 > /sys/class/gpio/unexport
2>/dev/null echo 236 > /sys/class/gpio/unexport
2>/dev/null echo 237 > /sys/class/gpio/unexport
2>/dev/null echo 240 > /sys/class/gpio/unexport
2>/dev/null echo 241 > /sys/class/gpio/unexport
2>/dev/null echo 242 > /sys/class/gpio/unexport
2>/dev/null echo 243 > /sys/class/gpio/unexport
2>/dev/null echo 253 > /sys/class/gpio/unexport
2>/dev/null echo 254 > /sys/class/gpio/unexport
2>/dev/null echo 255 > /sys/class/gpio/unexport
2>/dev/null echo 258 > /sys/class/gpio/unexport
2>/dev/null echo 259 > /sys/class/gpio/unexport
2>/dev/null echo 260 > /sys/class/gpio/unexport
2>/dev/null echo 261 > /sys/class/gpio/unexport
2>/dev/null echo 262 > /sys/class/gpio/unexport
2>/dev/null echo 263 > /sys/class/gpio/unexport
echo mode0 > /sys/kernel/debug/gpio_debug/gpio13/current_pinmux
echo mode0 > /sys/kernel/debug/gpio_debug/gpio182/current_pinmux
echo mode2 > /sys/kernel/debug/gpio_debug/gpio28/current_pinmux
echo mode2 > /sys/kernel/debug/gpio_debug/gpio27/current_pinmux
echo mode0 > /sys/kernel/debug/gpio_debug/gpio111/current_pinmux
echo mode1 > /sys/kernel/debug/gpio_debug/gpio115/current_pinmux
echo mode1 > /sys/kernel/debug/gpio_debug/gpio114/current_pinmux
echo mode1 > /sys/kernel/debug/gpio_debug/gpio109/current_pinmux