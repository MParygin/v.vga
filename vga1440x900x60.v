`timescale 1ns / 100ps
// 
// VGA 1440 x 900 x 60Hz
// clock 106MHz
//
module vga1440x900x60
(
	input wire clk,
	output wire hsync,
	output wire vsync,
	output wire [11:0] hdata,
	output wire [11:0] vdata,
	output wire de
);
	 
	// Instantiate
	vga #(12, 1440, 1520, 1672, 1904, 900, 901, 903, 932, 1, 0) vga (
		.clk(clk), 
		.hdata(hdata),
		.vdata(vdata),
		.hsync(hsync),
		.vsync(vsync),
		.de(de)
	);

endmodule
