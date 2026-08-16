create_clock -period 10 [get_ports clk]

set_input_delay 2 -clock clk [get_ports a_in]
set_input_delay 2 -clock clk [get_ports b_in]
set_input_delay 2 -clock clk [get_ports start]

set_output_delay 2 -clock clk [get_ports P]
set_output_delay 2 -clock clk [get_ports done]
