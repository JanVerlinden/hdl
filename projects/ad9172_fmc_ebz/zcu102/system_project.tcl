
source ../../scripts/adi_env.tcl
source $ad_hdl_dir/projects/scripts/adi_project.tcl
source $ad_hdl_dir/projects/scripts/adi_board.tcl

adi_project_xilinx ad9172_fmc_ebz_zcu102
adi_project_files ad9172_fmc_ebz_zcu102 [list \
  "system_top.v" \
  "system_constr.xdc"\
  "jesd_exceptions.xdc"\
  "$ad_hdl_dir/projects/common/zcu102/zcu102_system_constr.xdc" ]

set_property PROCESSING_ORDER LATE [get_files jesd_exceptions.xdc]

adi_project_run ad9172_fmc_ebz_zcu102


