module main

import time
import live

[live]
fn print_message() {
	info := live.info()
	println('OK reloads: ${info.reloads_ok:4d} | Total reloads: ${info.reloads:4d}')
}

fn main() {
	mut age := 20
	println(age)
	age = 22
	println(age)
	for {
		print_message()
		time.sleep_ms(1000)
	}
}
