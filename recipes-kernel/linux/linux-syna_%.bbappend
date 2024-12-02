FILESEXTRAPATHS:prepend := "${THISDIR}/grinn-astra:"
FILESEXTRAPATHS:prepend := "${THISDIR}/grinn-astra-evb:"

DT_DIR = "${S}/arch/arm64/boot/dts/synaptics"


SRC_URI += " \
        file://grinn-astraevb.dts \
        file://grinn-astra.dts \
"

SRC_URI += "${@bb.utils.contains('MACHINE', 'grinnastraevb', '${ASTRAEVB}', '', d)}"
SRC_URI += "${@bb.utils.contains('MACHINE', 'grinnastra', '${ASTRA}', '', d)}"

ASTRAEVB = " \
        file://eth.cfg \
        file://enable-led-gpio.cfg \
        file://spi_driver.cfg \
        file://regulator.cfg \
        file://0001-Add-sy20257-regulator.patch \
"

ASTRA = " \
        file://regulator.cfg \
        file://0001-Add-sy20257-regulator.patch \
"

do_compile:prepend() {
	cp ${WORKDIR}/grinn-astraevb.dts ${WORKDIR}/grinn-astra.dts ${DT_DIR}/
}


