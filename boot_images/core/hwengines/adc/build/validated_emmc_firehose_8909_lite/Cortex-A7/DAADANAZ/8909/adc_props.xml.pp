#line 1 "/local/mnt/workspace/CRMBuilds/BOOT.BF.3.1.2.c2.2-00002-M8909AAAAANAZB-1_20161214_063942/b/boot_images/core/hwengines/adc/config/8909/adc_props.xml"
#line 1 "/local/mnt/workspace/CRMBuilds/BOOT.BF.3.1.2.c2.2-00002-M8909AAAAANAZB-1_20161214_063942/b/boot_images/core/hwengines/adc/config/8909/vadc_props.xml"
<driver name="VAdc">
  <device id="DALDEVICEID_VADC">
    <props name="VADC_BSP" type=DALPROP_ATTR_TYPE_STRUCT_PTR>
      VAdcBsp
    </props>
  </device>
</driver>

#line 2 "/local/mnt/workspace/CRMBuilds/BOOT.BF.3.1.2.c2.2-00002-M8909AAAAANAZB-1_20161214_063942/b/boot_images/core/hwengines/adc/config/8909/adc_props.xml"

<driver name="NULL">
  <device id="QAdc">
    <props name="ADC_BOOT_BSP" type=DALPROP_ATTR_TYPE_STRUCT_PTR>
      AdcBootBsp
    </props>
  </device>
</driver>
