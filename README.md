# meta-grinn-astraboard

Yocto meta layer for GRINN Astra platform.

## How to Use

### Option 1: Use Only This Layer to Set Up a Project

1. Run Docker using the following command:
   ```bash
   docker run --rm -it -v $(pwd):$(pwd) ghcr.io/synaptics-astra/crops:1.0.0 --workdir=$(pwd)
   ```

2. Install `kas` in container:
   ```bash
   pip3 install kas
   ```

3. Run the desired configuration file for your board using `kas`:
   ```bash
   /home/pokyuser/.local/bin/kas build meta-grinn-astraboard/<board-config-file>.yml
   ```

### Option 2: Use This Layer in an Existing Synaptics Astra Build

1. Include this layer in your `build/conf/bblayers.conf` file

2. Set the `MACHINE` variable to `grinnastraevb` or `grinnastra` in your `build/conf/local.conf` file:
   ```conf
   MACHINE ?= "grinnastra"
   ```
