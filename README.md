# Simple-DMA-Usage
DMA enabled Zynq PS-PL communication to implement high throughput data transfer between Linux applications and user IP core.


This is a simple loop-back project in which data transfer between host OS (Zynq-PS) and FPGA (Zynq-PL) is done using DMA mechanism. This project instantiates an AXI CDMA IP in PL and integrates it with the processing system high performance (HP) 64 bit slave port. In this system, AXI CDMA acts as master device to copy an array of the data from the source buffer location to the destination buffer location in DDR system memory. AXI CDMA uses processing system HP slave port to get read/write access of DDR system memory.
We also wrote a Linux OS based application software using mmap() for the data transfer using AXI CDMA block, and executes it on the ZC702 board.


