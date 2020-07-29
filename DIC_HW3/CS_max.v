`timescale 1ns/10ps
module CS(Y, X, reset, clk);

input clk, reset; 
input 	[7:0] X;
output 	[9:0] Y;

//--------------------------------------
//  \^o^/   Write your code here~  \^o^/
//--------------------------------------
reg [7:0] data [0:8];
reg [11:0] sum;

wire [11:0] avg;
wire [11:0] tmp_sum;
wire [8:0] flag;

integer i;

always @(posedge reset or posedge clk) begin
	if(reset) begin
		sum <= 12'b0;
		for(i = 0; i < 9; i = i + 1) begin
			data[i] <= 8'b0;
		end
	end
	else begin
		for(i = 0; i < 8; i = i + 1) begin
			data[i+1] <= data[i];
		end
			data[0] <= X;
			sum <= tmp_sum;
	end
end

assign tmp_sum = sum - {4'b0, data[8]} + {4'b0, X};
assign avg = sum / 9;

assign flag[8] = data[0] <= avg;
assign flag[7] = data[1] <= avg;
assign flag[6] = data[2] <= avg;
assign flag[5] = data[3] <= avg;
assign flag[4] = data[4] <= avg;
assign flag[3] = data[5] <= avg;
assign flag[2] = data[6] <= avg;
assign flag[1] = data[7] <= avg;
assign flag[0] = data[8] <= avg;

wire [7:0] out_flag;
wire [7:0] out_value[0:7];

comparator c1(flag[8], flag[7], data[0], data[1], out_flag[0], out_value[0]);
comparator c2(flag[6], flag[5], data[2], data[3], out_flag[1], out_value[1]);
comparator c3(flag[4], flag[3], data[4], data[5], out_flag[2], out_value[2]);
comparator c4(flag[2], flag[1], data[6], data[7], out_flag[3], out_value[3]);
comparator c5(out_flag[0], out_flag[1], out_value[0], out_value[1], out_flag[4], out_value[4]);
comparator c6(out_flag[2], out_flag[3], out_value[2], out_value[3], out_flag[5], out_value[5]);
comparator c7(out_flag[4], out_flag[5], out_value[4], out_value[5], out_flag[6], out_value[6]);
comparator c8(flag[0], out_flag[6], data[8], out_value[6], out_flag[7], out_value[7]);

assign Y = ({1'b0, sum} + {1'b0,{out_value[7],3'b0}+{4'b0,out_value[7]}}) >>3;

endmodule


module comparator(flag1, flag2, value1, value2, result_flag, result_value);
	input flag1,flag2;
	input [7:0] value1,value2;
	output result_flag;
	output [7:0]result_value;
	reg result_flag;
	reg [7:0] result_value;

	always @(*)begin
		case({flag1, flag2})
			2'b11: begin
				result_flag = 1;
				if(value1 > value2) begin
					result_value = value1;
				end
				else begin
					result_value = value2;
				end
			end
			2'b10: begin
				result_flag = 1;
				result_value = value1;
			end
			2'b01: begin
				result_flag = 1;
				result_value = value2;
			end
			default: begin
				result_flag = 0;
				result_value = 8'bx;
			end
		endcase
	end	
endmodule
