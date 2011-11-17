#!/bin/sh

cp ../models/iid_adph_cv.psm ../experiments/iid_adph_cv_1.psm

(~/prism/1121/bin/upprism iid_adph_cv_1.psm iid_adph_nc000913_2_cv_1_sw iid_adph_nc000913_2_cv_1_sw_h > ../results/iid_adph_nc000913_2_cv_1.res &)

sed s/train_1/train_2/g iid_adph_cv_1.psm > iid_adph_cv_2.psm

(~/prism/1121/bin/upprism iid_adph_cv_2.psm iid_adph_nc000913_2_cv_2_sw iid_adph_nc000913_2_cv_2_sw_h > ../results/iid_adph_nc000913_2_cv_2.res &)

sed s/train_1/train_3/g iid_adph_cv_1.psm > iid_adph_cv_3.psm

(~/prism/1121/bin/upprism iid_adph_cv_3.psm iid_adph_nc000913_2_cv_adph_sw iid_adph_nc000913_2_cv_adph_sw_h > ../results/iid_adph_nc000913_2_cv_3.res &)

sed s/train_1/train_4/g iid_adph_cv_1.psm > iid_adph_cv_4.psm

(~/prism/1121/bin/upprism iid_adph_cv_4.psm iid_adph_nc000913_2_cv_4_sw iid_adph_nc000913_2_cv_4_sw_h > ../results/iid_adph_nc000913_2_cv_4.res &)

sed s/train_1/train_5/g iid_adph_cv_1.psm > iid_adph_cv_5.psm

(~/prism/1121/bin/upprism iid_adph_cv_5.psm iid_adph_nc000913_2_cv_5_sw iid_adph_nc000913_2_cv_5_sw_h > ../results/iid_adph_nc000913_2_cv_5.res &)


