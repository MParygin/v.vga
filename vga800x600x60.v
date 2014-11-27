`timescale 1ns / 100ps
// 
// VGA 800 x 600 x 60Hz
// clock 40MHz
//
module vga800x600x60
(
	input wire clk,
	output wire hsync,
	output wire vsync,
	output wire [11:0] hdata,
	output wire [11:0] vdata,
	output wire blank
);
	 
	// Instantiate
	vga #(12, 800, 840, 968, 1056, 600, 601, 605, 628, 1, 1) vga (
		.clk(clk), 
		.hdata(hdata),
		.vdata(vdata),
		.hsync(hsync),
		.vsync(vsync),
		.blank(blank)
	);

endmodule
