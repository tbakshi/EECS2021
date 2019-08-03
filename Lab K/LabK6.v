module labK; 
reg a, b, c, expect, var, temp; 
wire z; 
not my_not(tmp, b); 
and my_and(z, a, tmp); 
initial 
begin 
         a = 1; b = 0; c=0; 
               expect = a & ~c;
               var = b & c;
               temp = expect | var ;
               #1; // wait for z 
               if (temp === z) 
               	   $display("PASS: a=%b b=%b c=%b z=%b", a, b, c, z); 
               	   else 
               	   $display("FAIL: a=%b b=%b c=%b z=%b", a, b, c, z); 
        $finish; 
end 
endmodule 