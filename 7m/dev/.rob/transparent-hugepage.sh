#! /bin/sh
#
# kernel-virtualbox.sh
# Copyright (C) 2015 susy <susy@simbad>
#
# Distributed under terms of the MIT license.
#

# can be set from grub default then mkconfig to boot partition (persisten)
sudo echo never | sudo tee /sys/kernel/mm/transparent_hugepage/enabled


# no clue if this can be set too (t_h_defrag?) and not found online (volatile)
sudo echo never | sudo tee /sys/kernel/mm/transparent_hugepage/defrag

# thus use this script to get rid of the mongo warning in virtualbox
systemctl restart mongodb.service




