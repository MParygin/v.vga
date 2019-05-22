`timescale 1ns / 100ps
//
// VGA 1920*1080*60
// clock 148.5 MHz
//
module vga1920x1080x60
(
	input wire clk,
	output wire hsync,
	output wire vsync,
	output wire [11:0] hdata,
	output wire [11:0] vdata,
	output wire de
);
	 
	// Instantiate
	vga #(12, 1920, 1976, 2008, 2200, 1080, 1083, 1085, 1125, 0, 0) vga (
		.clk(clk), 
		.hdata(hdata),
		.vdata(vdata),
		.hsync(hsync),
		.vsync(vsync),
		.de(de)
	);

endmodule

