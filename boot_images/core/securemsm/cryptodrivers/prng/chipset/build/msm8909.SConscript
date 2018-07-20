#===============================================================================
#
# SECUREMSM Libs
#
# GENERAL DESCRIPTION
#    build script
#
# Copyright (c) 2011 by QUALCOMM, Incorporated.
# All Rights Reserved.
# QUALCOMM Proprietary/GTDR
#
#-------------------------------------------------------------------------------
#
#  $Header: //components/rel/boot.bf/3.1.2.c2.2/boot_images/core/securemsm/cryptodrivers/prng/chipset/build/msm8909.SConscript#1 $
#  $DateTime: 2016/12/12 23:35:46 $
#  $Author: pwbldsvc $
#  $Change: 11981336 $
#                      EDIT HISTORY FOR FILE
#
#  This section contains comments describing changes made to the module.
#  Notice that changes are listed in reverse chronological order.
#
# when       who     what, where, why
# --------   ---     ---------------------------------------------------------
# 09/26/11   nk      Intial checkin
#===============================================================================
import os
Import('env')
env = env.Clone()

# 8974 interface redirection
CHIPSETREDIRECTION = 'msm8909'

script_sconfname = None
if os.path.exists('../' + CHIPSETREDIRECTION + '/build/SConscript') :
   script_sconfname = '../' + CHIPSETREDIRECTION + '/build/SConscript'
else :
   print "Directory: [%s] doesnot exist"%script_sconfname
   raise RuntimeError, "msm8909  [%s] does not exist"%script_sconfname

DEL_FILES = [
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/build/apq8084.SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/build/msm8x10.SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/build/msm8x26.SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/build/mdm9x25.SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/build/mdm9x35.SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/build/msm8x62.SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/build/msm8974.SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/build/mpq8092.SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/build/msm8916.SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/build/msm8936.SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/build/mdm9x35.SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/build/mdm9x45.SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/build/msm8952.SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/mpq8092/build/SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/msm8x26/build/SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/apq8084/build/SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/msm8x10/build/SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/mdm9x25/build/SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/mdm9x35/build/SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/msm8x62/build/SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/msm8974/build/SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/msm8916/build/SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/msm8936/build/SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/mdm9x35/build/SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/mdm9x45/build/SConscript',
    '${BUILD_ROOT}/core/securemsm/cryptodrivers/prng/chipset/msm8952/build/SConscript'
]

env.CleanPack(['SBL1_BOOT'], DEL_FILES)

#-------------------------------------------------------------------------------
# Pack out files
#-------------------------------------------------------------------------------

# Remove target files
ALL_FILES = env.FindFiles(
  ['*'],
  '../')
BUILD_FILES = env.FindFiles(
  ['*'],
  '../build/')
TARGET_FILES = env.FindFiles(
  ['*'],
  '../${CHIPSET}')
PACK_FILES = list(set(ALL_FILES) - set(BUILD_FILES) - set(TARGET_FILES))
env.CleanPack(['SBL1_BOOT'], PACK_FILES)

#-------------------------------------------------------------------------------
# Load sub scripts
#-------------------------------------------------------------------------------
script_scon = None
script_scon = '../' + CHIPSETREDIRECTION + '/build'

env.SConscript(dirs=[script_scon], exports='env')
