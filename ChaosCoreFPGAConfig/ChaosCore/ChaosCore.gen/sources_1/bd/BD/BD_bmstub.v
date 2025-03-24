// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module BD (
  rst_led,
  heartbeat,
  uart0_tx,
  uart0_rx
);

  (* X_INTERFACE_IGNORE = "true" *)
  output rst_led;
  (* X_INTERFACE_IGNORE = "true" *)
  output heartbeat;
  (* X_INTERFACE_IGNORE = "true" *)
  output uart0_tx;
  (* X_INTERFACE_IGNORE = "true" *)
  input uart0_rx;

  // stub module has no contents

endmodule
