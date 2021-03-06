#
#
#

 
FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

# apply patch
#SRC_URI_append_ccimx6ulsbc = "file://0001-ARM-dts-ccimx6ulsbc-enable-4GB-eMMC-4-bit.patch"
SRC_URI += "file://0001-ARM-dts-ccimx6ulsbc-enable-4GB-eMMC-4-bit.patch"

# set CCIMX6UL_8BIT_EMMC_ENABLED = "1" to enable 8-bit support
SRC_URI += " \
    ${@base_conditional('CCIMX6UL_8BIT_EMMC_ENABLED', '1', ' file://0002-ARM-dts-ccimx6ulsbc-enable-8-bit-support-for-eMMC.patch', '', d)} \
"

COMPATIBLE_MACHINE = "ccimx6ulsbc"
