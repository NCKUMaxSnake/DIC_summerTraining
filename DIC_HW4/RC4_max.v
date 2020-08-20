`timescale 1ns/10ps
module RC4(clk,rst,key_valid,key_in,plain_read,plain_in_valid,plain_in,plain_write,plain_out,cipher_write,cipher_out,cipher_read,cipher_in,cipher_in_valid,done);
    input clk,rst;
    input key_valid,plain_in_valid,cipher_in_valid;
    input [7:0] key_in,cipher_in,plain_in;
    output done;
    output plain_write,cipher_write,plain_read,cipher_read;
    output [7:0] cipher_out,plain_out;

	parameter STATE_WAITKEY     = 4'b0,
			  STATE_GETKEY      = 4'b1,
			  STATE_SBOXMIX     = 4'b10,
			  STATE_GETPLAIN    = 4'b11,
			  STATE_WRITECIPHER = 4'b100,
			  STATE_INITSBOX    = 4'b101,
			  STATE_SBOXMIX2    = 4'b110,
			  STATE_GETCIPHER   = 4'b111,
			  STATE_WRITEPLAIN  = 4'b1000,
			  STATE_DONE        = 4'b1001,
			  STATE_WRITE       = 4'b1010;
	reg plain_write, cipher_write, plain_read, cipher_read, done;
	reg [7:0] cipher_out;
	reg [7:0] plain_out;
	reg [3:0] cur_state,next_state;
	reg [7:0] key [0:31];
	reg [5:0] key_count;
	wire [5:0] key_index;
	reg [5:0] j;
	reg [5:0] Sbox [0:63];
	wire [5:0] i_new, j_new, temp;
	reg [5:0] tempi;


	integer i;

//control Unit
	assign key_index = j + Sbox[key_count] + key[key_count[4:0]];
	assign i_new = key_count + 1;
	assign j_new = j + tempi;
	assign temp = Sbox[i_new] + Sbox[j_new];

	always @(*) begin // next state combinational circuit
		case(cur_state)
			STATE_WAITKEY: begin
				if(key_valid)
					next_state = STATE_GETKEY;
				else
					next_state = STATE_WAITKEY;
			end
			STATE_GETKEY: begin
				if(!key_valid)
					next_state = STATE_SBOXMIX;
				else
					next_state = STATE_GETKEY;
			end
			STATE_SBOXMIX: begin
				if(key_count < 63)
					next_state = STATE_SBOXMIX;
				else
					next_state = STATE_GETPLAIN;
			end
			STATE_GETPLAIN: begin
				next_state = STATE_WRITECIPHER;
			end
			STATE_WRITECIPHER: begin
				if(!plain_in_valid)
					next_state = STATE_INITSBOX;
				else
					next_state = STATE_WRITE;
			end
			STATE_WRITE: begin
				next_state = STATE_WRITECIPHER;
			end
			STATE_INITSBOX:
				next_state = STATE_SBOXMIX2;
			STATE_SBOXMIX2: begin
				if(key_count < 63)
					next_state = STATE_SBOXMIX2;
				else
					next_state = STATE_GETCIPHER;
			end
			STATE_GETCIPHER:
				next_state = STATE_WRITEPLAIN;
			STATE_WRITEPLAIN: begin
				if(!cipher_in_valid)
					next_state = STATE_DONE;
				else
					next_state = STATE_WRITEPLAIN;
			end
			default:
				next_state = STATE_DONE;
		endcase
	end

	always @(posedge clk or posedge rst) begin // flip-flop for state
		if(rst) begin
			key_count <= 0;
			cur_state <= STATE_WAITKEY;
			for(i = 0; i < 64; i = i + 1)
				Sbox[i] <= i;
			plain_write  <= 0;
			cipher_write <= 0;
			plain_read   <= 0;
			cipher_read  <= 0;
			done         <= 0;
			j 			 <= 0;
		end
		else begin
			cur_state <= next_state;
			case(cur_state)
				STATE_GETKEY: begin
					if(key_valid) begin
						key_count <= key_count + 1;
						key[key_count] <= key_in;
					end
					else begin
						key_count <= 0;
					end
				end
				STATE_SBOXMIX: begin
					j <= key_index;
					Sbox[key_count] <= Sbox[key_index];
					Sbox[key_index] <= Sbox[key_count];
					key_count <= key_count + 1;
				end
				STATE_GETPLAIN: begin
					plain_read <= 1;
					//plain_write <= 0;
					j <= 0;
					tempi <= Sbox[1];
					key_count <= 0;

				end
				STATE_WRITECIPHER: begin
					if(plain_in_valid) begin //??
						plain_read <= 0; //??
						cipher_write <= 0;

						Sbox[i_new] <= Sbox[j_new]; //i_new = key_count, so key_count has been init in prev step
						Sbox[j_new] <= Sbox[i_new];



						//temp = Sbox[i_new] + Sbox[j_new];

						//j_new = j + s[i]
						
						
						/*
						if(temp == i_new)
							cipher_out <= plain_in ^ Sbox[j_new];
						else if(temp == j_new)
							cipher_out <= plain_in ^ Sbox[i_new];
						else
							cipher_out <= plain_in ^ Sbox[temp];
						cipher_write <= 1;

						key_count <= i_new; // refresh key_count
						j <= j_new; // refresh j
						*/
					end
					else
						plain_read <= 0;
				end
				STATE_WRITE:begin
					cipher_out <= plain_in ^ Sbox[temp];

					j <= j_new;
					
					key_count = i_new;
					tempi = Sbox[i_new];

					cipher_write <= 1;
					plain_read <= 1;
				end
				STATE_INITSBOX: begin
					cipher_write <= 0;
					cipher_read <= 0;
					key_count <= 0;
					//key_index <= 0;
					j <= 0;
					for(i = 0; i < 64; i = i + 1)
						Sbox[i] <= i;
				end
				STATE_SBOXMIX2: begin
					j <= key_index;
					Sbox[key_count] <= Sbox[key_index];
					Sbox[key_index] <= Sbox[key_count];
					key_count <= key_count + 1;
				end
				STATE_GETCIPHER: begin
					cipher_read <= 1;
					cipher_write <= 0;
					j <= 0;
					key_count <= 0;
				end
				STATE_WRITEPLAIN: begin
				/*
					if(cipher_in_valid) begin //
						cipher_read <= 1; //
						Sbox[i_new] <= Sbox[j_new]; //i_new = key_count, so key_count has been init in prev step
						Sbox[j_new] <= Sbox[i_new]; //j_new = j + s[i]
						if(temp == i_new)
							plain_out <= cipher_in ^ Sbox[j_new];
						else if(temp == j_new)
							plain_out <= cipher_in ^ Sbox[i_new];
						else
							plain_out <= cipher_in ^ Sbox[temp];
						plain_write <= 1;

						key_count <= i_new; // refresh key_count
						j <= j_new; // refresh j
					end
					else
						cipher_read <= 0;
				*/
				end
				STATE_DONE: begin
					done <= 1;
				end


			endcase	
		end
	end

	/*
	always @()begin //according current state,send signals to datapath
		
	end
	*/

//datapath
/*
	parameter sboxLength = 64;
	parameter keyLength = 32;

	parameter	STATE_IDLE  = 3'b0,
				STATE_KEYIN = 3'b1,
				STATE_KSA   = 3'b10;
	reg [2:0] state;


	reg [5:0] sbox [0:sboxLength-1];
	reg [7:0] key [0:keyLength-1];
	reg [4:0] keyCounter;

	

	integer i;

	always @ (posedge clk or posedge rst) begin
		if(rst) begin
			state <= STATE_IDLE;
			for(i = 0; i < sboxLength; i = i + 1) begin
				sbox[i] <= i;
			end
		end
		else begin

		end
	end

    always @ (posedge clk) begin //key in part
		if(key_valid) begin
			state <= STATE_KEYIN;
			key[keyCounter] = key_in;
			case(key_in)
				8'hXX:
					keyCounter <= keyCounter;
				default:
					keyCounter <= keyCounter + 1;
			endcase
		end
		else begin
			keyCounter <= 0;
		end
	end
*/

endmodule
