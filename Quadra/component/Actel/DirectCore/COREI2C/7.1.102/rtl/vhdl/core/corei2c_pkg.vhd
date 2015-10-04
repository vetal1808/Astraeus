-- *********************************************************************
-- Copyright (c) 2014 Microsemi Corporation.  All rights reserved.
--
-- Any use or redistribution in part or in whole must be handled in
-- accordance with the Microsemi license agreement and must be approved
-- in advance in writing.
--
--
-- SVN Revision Information:
-- SVN $Revision: $
-- SVN $Date:  $ 

PACKAGE corei2c_pkg IS 
FUNCTION SYNC_MODE_SEL( FAMILY: INTEGER) RETURN INTEGER;
END corei2c_pkg;

package body corei2c_pkg is
    FUNCTION SYNC_MODE_SEL (FAMILY: INTEGER) RETURN INTEGER IS
        VARIABLE return_val : INTEGER := 0;
        BEGIN
        IF(FAMILY = 25) THEN
            return_val := 1;
        ELSE
            return_val := 0;
        END IF;
        RETURN return_val;
    END SYNC_MODE_SEL;
END corei2c_pkg;