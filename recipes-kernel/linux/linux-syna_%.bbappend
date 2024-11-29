FILESEXTRAPATHS:prepend := "${THISDIR}/grinn-astra:"
FILESEXTRAPATHS:prepend := "${THISDIR}/grinn-astra-evb:"

DT_DIR = "${S}/arch/arm64/boot/dts/synaptics"

SRC_URI += " \
        file://grinn-astra.dts \
        file://grinn-astraevb.dts \
        file://eth.cfg \
        file://enable-led-gpio.cfg \
        file://spi_driver.cfg \
"

do_compile:prepend() {
	cp ${WORKDIR}/grinn-astraevb.dts ${WORKDIR}/grinn-astra.dts ${DT_DIR}/
}


