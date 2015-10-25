----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Sun Oct 25 01:31:22 2015
-- Parameters for CoreUARTapb
----------------------------------------------------------------------


LIBRARY ieee;
   USE ieee.std_logic_1164.all;
   USE ieee.std_logic_unsigned.all;
   USE ieee.numeric_std.all;

package coreparameters is
    constant BAUD_VAL_FRCTN : integer := 0;
    constant BAUD_VAL_FRCTN_EN : integer := 0;
    constant BAUD_VALUE : integer := 26;
    constant FAMILY : integer := 19;
    constant FIXEDMODE : integer := 1;
    constant HDL_license : string( 1 to 1 ) := "U";
    constant PRG_BIT8 : integer := 1;
    constant PRG_PARITY : integer := 0;
    constant RX_FIFO : integer := 0;
    constant RX_LEGACY_MODE : integer := 0;
    constant testbench : string( 1 to 4 ) := "User";
    constant TX_FIFO : integer := 0;
    constant USE_SOFT_FIFO : integer := 0;
end coreparameters;
