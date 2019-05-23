`timescale 1ns / 100ps
// 
// VGA 640 x 480 x 75Hz
// clock 31.5MHz
//
module vga640x480x75
(
	input wire clk,
	output wire hsync,
	output wire vsync,
	output wire [11:0] hdata,
	output wire [11:0] vdata,
	output wire de
);
	 
	// Instantiate
	vga #(12, 640, 656, 720, 840, 480, 481, 484, 500, 0, 0) vga (
		.clk(clk), 
		.hdata(hdata),
		.vdata(vdata),
		.hsync(hsync),
		.vsync(vsync),
		.de(de)
	);

endmodule
