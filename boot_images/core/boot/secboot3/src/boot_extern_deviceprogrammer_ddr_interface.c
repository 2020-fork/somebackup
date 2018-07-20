/*===========================================================================

                    BOOT EXTERN DEVICEPROGRAMMER DRIVER DEFINITIONS

DESCRIPTION
  Contains wrapper definition for deviceprogrammer main function

INITIALIZATION AND SEQUENCING REQUIREMENTS
  DDR must be initialized
  
Copyright 2014 by Qualcomm Technologies, Incorporated.  All Rights Reserved.
============================================================================*/
/*===========================================================================

                      EDIT HISTORY FOR FILE

This section contains comments describing changes made to this file.
Notice that changes are listed in reverse chronological order.
    
$Header: //components/rel/boot.bf/3.1.2.c2.2/boot_images/core/boot/secboot3/src/boot_extern_deviceprogrammer_ddr_interface.c#1 $
$DateTime: 2016/12/12 23:35:46 $
$Author: pwbldsvc $
    
when       who     what, where, why
--------   ---     ----------------------------------------------------------
12/17/14   sb      Initial Creation.

===========================================================================*/

/*==========================================================================

                               INCLUDE FILES

===========================================================================*/

#include "boot_extern_deviceprogrammer_ddr_interface.h"
#include "boot_sbl_if.h"
#include "deviceprogrammer_entry_initialize.h"

/*===========================================================================
                      FUNCTION DECLARATIONS
===========================================================================*/ 

/*===========================================================================

**  Function :  boot_deviceprogrammer_ddr_main

** ==========================================================================
*/
/*!
 * Run deviceprogrammer after ddr has been initialized.
 *
 * @param bl_shared_data
 *    The shared bootloader information.
 *
 * @return
 *    This function never returns.
 *
*****************************************************************************/
void boot_hand_control_to_deviceprogrammer_ddr_main
(
  bl_shared_data_type *bl_shared_data
)
{
  deviceprogrammer_entry(bl_shared_data->sbl_shared_data->pbl_shared_data);
  for (;;);
}

