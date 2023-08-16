# memory_cell_vhdl

This one bit memory cell is just a D flip flop with a Write Enable (WE), Output Enable (OE) and the data in (D) clock (CLK) and RESET from a D flip Flop

The output Q of the D flip flop goes into a tristate buffer which is the data that is outputted outside of the memory cell. The tristate buffer is enabled by the OE.


This design shows the logic for 1 bit but the vhdl code can be implemented with a structural design to combine multiple of the entities to form e.g. an 8 bit shift register: The output of one block is the input of another and all the WE, OE are connected together
