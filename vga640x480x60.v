`timescale 1ns / 100ps
// 
// VGA 640 x 480 x 60Hz
// clock 25MHz
//
module vga640x480x60
(
	input wire clk,
	output wire hsync,
	output wire vsync,
	output wire [11:0] hdata,
	output wire [11:0] vdata,
	output wire blank
);
	 
	// Instantiate
	vga #(12, 640, 648, 744, 800, 480, 482, 484, 525, 0, 0) vga (
		.clk(clk), 
		.hdata(hdata),
		.vdata(vdata),
		.hsync(hsync),
		.vsync(vsync),
		.blank(blank)
	);

endmodule
