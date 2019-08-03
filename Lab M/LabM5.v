module labM ;
   reg   [31:0] address, memIn;
   reg          clk, read, write;
   wire [31:0]  memOut;

   mem data(memOut, address, memIn, clk, read, write);

   initial
     begin

        address = 128;
        write = 0;
        read = 1;

        repeat (11)
          begin
             #1 $display("Address %h contains %h", address, memOut);
             address = address + 4;
          end

        $finish;
     end

endmodule // labM
