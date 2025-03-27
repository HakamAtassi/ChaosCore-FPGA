//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Thu Mar 27 01:38:03 2025
//Host        : Desktop-Home running 64-bit Linux Mint 22
//Command     : generate_target BD_wrapper.bd
//Design      : BD_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BD_wrapper
   (heartbeat,
    rst_led,
    uart0_rx,
    uart0_tx);
  output heartbeat;
  output rst_led;
  input uart0_rx;
  output uart0_tx;

  wire heartbeat;
  wire rst_led;
  wire uart0_rx;
  wire uart0_tx;

  BD BD_i
       (.heartbeat(heartbeat),
        .rst_led(rst_led),
        .uart0_rx(uart0_rx),
        .uart0_tx(uart0_tx));
endmodule
