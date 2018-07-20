;==*====*====*====*====*====*====*====*====*====*====*====*====*====*====*===*
;
;                     APT Boot Test Assembly File
;
; GENERAL DESCRIPTION
; This file contains the assembly instructions for APT tests in Boot
;
; Copyright 2013 by QUALCOMM Technologies, Incorporated.All Rights Reserved.
;*====*====*====*====*====*====*====*====*====*====*====*====*====*====*====*
;*====*====*====*====*====*====*====*====*====*====*====*====*====*====*====*
;
;                           EDIT HISTORY FOR FILE
;
; when       who     what, where, why
; --------   ---     --------------------------------------------------------
; 05/03/13   jihok   Created.
;*====*====*====*====*====*====*====*====*====*====*====*====*====*====*====*
;============================================================================
;
;                             MODULE EXPORTS
;
;============================================================================
   ; Export the symbols defined in this module
   EXPORT apt_jump
   EXPORT apt_execute
   EXPORT apt_get_PTptr
;============================================================================
;
;                             MODULE DATA AREA
;
;============================================================================
   PRESERVE8
   AREA    APT_ASM, CODE, READONLY
   CODE32
apt_jump
   bx r0
apt_execute
   mov lr, lr
   bx lr
apt_get_PTptr
   MRC p15, 0, r0, c2, c0, 0
   bx lr
   END
