
dbLoadTemplate("pmac.substitutions")

# PMAC VME driver setup parameters: 
#     (1)cards, (2) VME Address Type (24,32)
#     (3)Mailbox base address, (4)DPRAM base address, 
#     (5)interrupt vector (0=disable or  64 - 255),
#     (6)interrupt level (1 - 6),
#     (7)motor task polling rate (min=1Hz,max=60Hz)
#!PmacSetup(1, 32, 0xB07FA000, 0xB0700000, 0, 5, 2)
#!PmacSetup(1, 24, 0x7FA000, 0x700000, 0, 5, 2)
#!drvPmacdebug = 4
