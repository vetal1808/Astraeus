----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Sun Oct 04 22:23:18 2015
-- Parameters for COREABC
----------------------------------------------------------------------


LIBRARY ieee;
   USE ieee.std_logic_1164.all;
   USE ieee.std_logic_unsigned.all;
   USE ieee.numeric_std.all;

package coreparameters is
    constant ABCCODE : string( 1 to 350 ) := "//Uart repiter V1.0 with out config baud rate
//baud rate 115200, 8-bit with out parity
    
//define port at bus
def uart 0 
//define addresses for operations
def wr 0x00
def rd 0x04
    
$start
//wait RX_rdy from module
    wait until input0
    apbread uart rd
//wait RX_rdy from module
    wait until input1
    apbwrt acc uart wr
    jump $start";
    constant ACT_CALIBRATIONDATA : integer := 1;
    constant APB_AWIDTH : integer := 8;
    constant APB_DWIDTH : integer := 8;
    constant APB_SDEPTH : integer := 2;
    constant CODEHEXDUMP : string( 1 to 0 ) := "";
    constant CODEHEXDUMP2 : string( 1 to 0 ) := "";
    constant DEBUG : integer := 1;
    constant EN_ACM : integer := 1;
    constant EN_ADD : integer := 1;
    constant EN_ALURAM : integer := 0;
    constant EN_AND : integer := 1;
    constant EN_CALL : integer := 1;
    constant EN_DATAM : integer := 2;
    constant EN_INC : integer := 1;
    constant EN_INDIRECT : integer := 0;
    constant EN_INT : integer := 0;
    constant EN_IOREAD : integer := 1;
    constant EN_IOWRT : integer := 1;
    constant EN_MULT : integer := 0;
    constant EN_OR : integer := 1;
    constant EN_PUSH : integer := 1;
    constant EN_RAM : integer := 1;
    constant EN_SHL : integer := 1;
    constant EN_SHR : integer := 1;
    constant EN_XOR : integer := 1;
    constant FAMILY : integer := 19;
    constant HDL_license : string( 1 to 1 ) := "U";
    constant ICWIDTH : integer := 8;
    constant IFWIDTH : integer := 2;
    constant IIWIDTH : integer := 2;
    constant IMEM_APB_ACCESS : integer := 0;
    constant INITWIDTH : integer := 11;
    constant INSMODE : integer := 0;
    constant IOWIDTH : integer := 1;
    constant ISRADDR : integer := 1;
    constant MAX_NVMDWIDTH : integer := 32;
    constant STWIDTH : integer := 4;
    constant TESTBENCH : string( 1 to 4 ) := "User";
    constant TESTMODE : integer := 0;
    constant UNIQ_STRING : string( 1 to 13 ) := "top_COREABC_0";
    constant UNIQ_STRING_LENGTH : integer := 13;
    constant VERILOGCODE : string( 1 to 0 ) := "";
    constant VERILOGVARS : string( 1 to 0 ) := "";
    constant VHDLCODE : string( 1 to 0 ) := "";
    constant VHDLVARS : string( 1 to 0 ) := "";
    constant ZRWIDTH : integer := 0;
end coreparameters;
