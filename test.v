//11 is for giving info. 01 is for confirming ing info. 00 is for ending the phase.
module test( phaser, in1, in2, data, phaser_plus, diode);

input wire phaser;
input wire in1;
input wire in2;
input wire [3:0] data;

output reg phaser_plus;
output reg [3:0] diode;

wire [1:0] in = {in1, in2};
reg d;

always@(*)begin
    if(phaser==3'b000)begin
        case(in)
        2'b00:begin
            phaser_plus = 1'b1; //phaser_plus adds phaser 1 
        end
        2'b01:begin
            if(d)begin
                diode = 4'b2222;
                d = 1'b0;
            end else begin
                
            end
        end
        2'b11:begin
            diode = data;
        end
        
        endcase
    end
    
end

endmodule
