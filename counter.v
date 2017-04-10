module counter                      //Модуль
(
    input wire CLK,                 //Входной провод 
    input wire RST,                 //Тоже входной провод
    output reg [7:0]DATA            //8 выходных регистров
);

initial begin
    DATA = 8'h0;                    //Начальное значение счетчика
end
/* Блок always. То что в теле будет происходит тогда, когда будет фронт (posedge) сигналов CLK или RST,
   другими словами, CLK or RST будет тактовым сигналом для ВСЕХ триггеров, которым делается неблокирующее присваивание в теле блока
    */
always @(posedge CLK or posedge RST) begin    
    if (RST)
        DATA <= 8'h0;   //Неблокирующее присваивание (<=)
    else
        DATA <= DATA + 8'h1;
end

endmodule
