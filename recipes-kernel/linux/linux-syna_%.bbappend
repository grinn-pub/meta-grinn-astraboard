FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

DT_NAME = "grinn-astraevb"
DT_DIR = "${S}/arch/arm64/boot/dts/synaptics"

SRC_URI += " \
        file://eth.cfg \
	file://${DT_NAME}.dts \
"

do_compile:prepend() {
	cp ${WORKDIR}/${DT_NAME}.dts ${DT_DIR}/
}


