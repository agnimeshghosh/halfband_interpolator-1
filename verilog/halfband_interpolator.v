module halfband_interpolator( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_clock_high, // @[:@6.4]
  input  [9:0]  io_scale, // @[:@6.4]
  input  [15:0] io_iptr_A_real, // @[:@6.4]
  input  [15:0] io_iptr_A_imag, // @[:@6.4]
  output [15:0] io_Z_real, // @[:@6.4]
  output [15:0] io_Z_imag // @[:@6.4]
);
  reg [15:0] inregs_0_real; // @[halfband_interpolator.scala 20:26:@19.4]
  reg [31:0] _RAND_0;
  reg [15:0] inregs_0_imag; // @[halfband_interpolator.scala 20:26:@19.4]
  reg [31:0] _RAND_1;
  reg [15:0] inregs_1_real; // @[halfband_interpolator.scala 20:26:@19.4]
  reg [31:0] _RAND_2;
  reg [15:0] inregs_1_imag; // @[halfband_interpolator.scala 20:26:@19.4]
  reg [31:0] _RAND_3;
  reg [15:0] slowregs_0_real; // @[halfband_interpolator.scala 25:32:@35.4]
  reg [31:0] _RAND_4;
  reg [15:0] slowregs_0_imag; // @[halfband_interpolator.scala 25:32:@35.4]
  reg [31:0] _RAND_5;
  reg [15:0] slowregs_1_real; // @[halfband_interpolator.scala 25:32:@35.4]
  reg [31:0] _RAND_6;
  reg [15:0] slowregs_1_imag; // @[halfband_interpolator.scala 25:32:@35.4]
  reg [31:0] _RAND_7;
  wire [16:0] _T_261; // @[SIntTypeClass.scala 18:40:@43.4]
  wire [15:0] _T_262; // @[SIntTypeClass.scala 18:40:@44.4]
  wire [15:0] _T_263; // @[SIntTypeClass.scala 18:40:@45.4]
  wire [16:0] _T_264; // @[SIntTypeClass.scala 28:50:@46.4]
  wire [15:0] _T_265; // @[SIntTypeClass.scala 28:50:@47.4]
  wire [15:0] _T_266; // @[SIntTypeClass.scala 28:50:@48.4]
  wire [24:0] _T_267; // @[SIntTypeClass.scala 44:41:@49.4]
  wire [16:0] _T_268; // @[SIntTypeClass.scala 44:41:@50.4]
  wire [24:0] _T_269; // @[SIntTypeClass.scala 44:41:@51.4]
  wire [24:0] _GEN_4; // @[SIntTypeClass.scala 28:50:@52.4]
  wire [25:0] _T_270; // @[SIntTypeClass.scala 28:50:@52.4]
  wire [24:0] _T_271; // @[SIntTypeClass.scala 28:50:@53.4]
  wire [24:0] tapped1_0_real; // @[SIntTypeClass.scala 28:50:@54.4]
  wire [25:0] _T_273; // @[SIntTypeClass.scala 18:40:@55.4]
  wire [24:0] _T_274; // @[SIntTypeClass.scala 18:40:@56.4]
  wire [24:0] tapped1_0_imag; // @[SIntTypeClass.scala 18:40:@57.4]
  wire [25:0] _T_295; // @[SIntTypeClass.scala 44:41:@70.4]
  wire [25:0] _T_297; // @[SIntTypeClass.scala 44:41:@72.4]
  wire [25:0] _GEN_5; // @[SIntTypeClass.scala 28:50:@73.4]
  wire [26:0] _T_298; // @[SIntTypeClass.scala 28:50:@73.4]
  wire [25:0] _T_299; // @[SIntTypeClass.scala 28:50:@74.4]
  wire [25:0] tapped1_1_real; // @[SIntTypeClass.scala 28:50:@75.4]
  wire [26:0] _T_301; // @[SIntTypeClass.scala 18:40:@76.4]
  wire [25:0] _T_302; // @[SIntTypeClass.scala 18:40:@77.4]
  wire [25:0] tapped1_1_imag; // @[SIntTypeClass.scala 18:40:@78.4]
  wire [26:0] _T_323; // @[SIntTypeClass.scala 44:41:@91.4]
  wire [26:0] _T_325; // @[SIntTypeClass.scala 44:41:@93.4]
  wire [26:0] _GEN_6; // @[SIntTypeClass.scala 28:50:@94.4]
  wire [27:0] _T_326; // @[SIntTypeClass.scala 28:50:@94.4]
  wire [26:0] _T_327; // @[SIntTypeClass.scala 28:50:@95.4]
  wire [26:0] tapped1_2_real; // @[SIntTypeClass.scala 28:50:@96.4]
  wire [27:0] _T_329; // @[SIntTypeClass.scala 18:40:@97.4]
  wire [26:0] _T_330; // @[SIntTypeClass.scala 18:40:@98.4]
  wire [26:0] tapped1_2_imag; // @[SIntTypeClass.scala 18:40:@99.4]
  wire [27:0] _T_351; // @[SIntTypeClass.scala 44:41:@112.4]
  wire [27:0] _T_353; // @[SIntTypeClass.scala 44:41:@114.4]
  wire [27:0] _GEN_7; // @[SIntTypeClass.scala 28:50:@115.4]
  wire [28:0] _T_354; // @[SIntTypeClass.scala 28:50:@115.4]
  wire [27:0] _T_355; // @[SIntTypeClass.scala 28:50:@116.4]
  wire [27:0] tapped1_3_real; // @[SIntTypeClass.scala 28:50:@117.4]
  wire [28:0] _T_357; // @[SIntTypeClass.scala 18:40:@118.4]
  wire [27:0] _T_358; // @[SIntTypeClass.scala 18:40:@119.4]
  wire [27:0] tapped1_3_imag; // @[SIntTypeClass.scala 18:40:@120.4]
  wire [27:0] _T_379; // @[SIntTypeClass.scala 44:41:@133.4]
  wire [27:0] _T_381; // @[SIntTypeClass.scala 44:41:@135.4]
  wire [28:0] _T_382; // @[SIntTypeClass.scala 28:50:@136.4]
  wire [27:0] _T_383; // @[SIntTypeClass.scala 28:50:@137.4]
  wire [27:0] tapped1_4_real; // @[SIntTypeClass.scala 28:50:@138.4]
  wire [28:0] _T_385; // @[SIntTypeClass.scala 18:40:@139.4]
  wire [27:0] _T_386; // @[SIntTypeClass.scala 18:40:@140.4]
  wire [27:0] tapped1_4_imag; // @[SIntTypeClass.scala 18:40:@141.4]
  wire [28:0] _T_407; // @[SIntTypeClass.scala 44:41:@154.4]
  wire [28:0] _T_409; // @[SIntTypeClass.scala 44:41:@156.4]
  wire [28:0] _GEN_9; // @[SIntTypeClass.scala 28:50:@157.4]
  wire [29:0] _T_410; // @[SIntTypeClass.scala 28:50:@157.4]
  wire [28:0] _T_411; // @[SIntTypeClass.scala 28:50:@158.4]
  wire [28:0] tapped1_5_real; // @[SIntTypeClass.scala 28:50:@159.4]
  wire [29:0] _T_413; // @[SIntTypeClass.scala 18:40:@160.4]
  wire [28:0] _T_414; // @[SIntTypeClass.scala 18:40:@161.4]
  wire [28:0] tapped1_5_imag; // @[SIntTypeClass.scala 18:40:@162.4]
  wire [29:0] _T_435; // @[SIntTypeClass.scala 44:41:@175.4]
  wire [29:0] _T_437; // @[SIntTypeClass.scala 44:41:@177.4]
  wire [29:0] _GEN_10; // @[SIntTypeClass.scala 28:50:@178.4]
  wire [30:0] _T_438; // @[SIntTypeClass.scala 28:50:@178.4]
  wire [29:0] _T_439; // @[SIntTypeClass.scala 28:50:@179.4]
  wire [29:0] tapped1_6_real; // @[SIntTypeClass.scala 28:50:@180.4]
  wire [30:0] _T_441; // @[SIntTypeClass.scala 18:40:@181.4]
  wire [29:0] _T_442; // @[SIntTypeClass.scala 18:40:@182.4]
  wire [29:0] tapped1_6_imag; // @[SIntTypeClass.scala 18:40:@183.4]
  wire [31:0] _T_463; // @[SIntTypeClass.scala 44:41:@196.4]
  wire [31:0] _T_465; // @[SIntTypeClass.scala 44:41:@198.4]
  wire [31:0] _GEN_11; // @[SIntTypeClass.scala 28:50:@199.4]
  wire [32:0] _T_466; // @[SIntTypeClass.scala 28:50:@199.4]
  wire [31:0] _T_467; // @[SIntTypeClass.scala 28:50:@200.4]
  wire [31:0] tapped1_7_real; // @[SIntTypeClass.scala 28:50:@201.4]
  wire [32:0] _T_469; // @[SIntTypeClass.scala 18:40:@202.4]
  wire [31:0] _T_470; // @[SIntTypeClass.scala 18:40:@203.4]
  wire [31:0] tapped1_7_imag; // @[SIntTypeClass.scala 18:40:@204.4]
  reg [31:0] registerchain1_1_real; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_8;
  reg [31:0] registerchain1_1_imag; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_9;
  reg [31:0] registerchain1_2_real; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_10;
  reg [31:0] registerchain1_2_imag; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_11;
  reg [31:0] registerchain1_3_real; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_12;
  reg [31:0] registerchain1_3_imag; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_13;
  reg [31:0] registerchain1_4_real; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_14;
  reg [31:0] registerchain1_4_imag; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_15;
  reg [31:0] registerchain1_5_real; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_16;
  reg [31:0] registerchain1_5_imag; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_17;
  reg [31:0] registerchain1_6_real; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_18;
  reg [31:0] registerchain1_6_imag; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_19;
  reg [31:0] registerchain1_7_real; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_20;
  reg [31:0] registerchain1_7_imag; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_21;
  reg [31:0] registerchain1_8_real; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_22;
  reg [31:0] registerchain1_8_imag; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_23;
  reg [31:0] registerchain1_9_real; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_24;
  reg [31:0] registerchain1_9_imag; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_25;
  reg [31:0] registerchain1_10_real; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_26;
  reg [31:0] registerchain1_10_imag; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_27;
  reg [31:0] registerchain1_11_real; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_28;
  reg [31:0] registerchain1_11_imag; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_29;
  reg [31:0] registerchain1_12_real; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_30;
  reg [31:0] registerchain1_12_imag; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_31;
  reg [31:0] registerchain1_13_real; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_32;
  reg [31:0] registerchain1_13_imag; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_33;
  reg [31:0] registerchain1_14_real; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_34;
  reg [31:0] registerchain1_14_imag; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_35;
  reg [31:0] registerchain1_15_real; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_36;
  reg [31:0] registerchain1_15_imag; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_37;
  reg [31:0] registerchain1_16_real; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_38;
  reg [31:0] registerchain1_16_imag; // @[halfband_interpolator.scala 31:35:@462.4]
  reg [31:0] _RAND_39;
  wire [31:0] _GEN_20; // @[SIntTypeClass.scala 18:40:@465.4]
  wire [32:0] _T_1351; // @[SIntTypeClass.scala 18:40:@465.4]
  wire [31:0] _T_1352; // @[SIntTypeClass.scala 18:40:@466.4]
  wire [31:0] _T_1353; // @[SIntTypeClass.scala 18:40:@467.4]
  wire [31:0] _GEN_21; // @[SIntTypeClass.scala 18:40:@468.4]
  wire [32:0] _T_1354; // @[SIntTypeClass.scala 18:40:@468.4]
  wire [31:0] _T_1355; // @[SIntTypeClass.scala 18:40:@469.4]
  wire [31:0] _T_1356; // @[SIntTypeClass.scala 18:40:@470.4]
  wire [31:0] _GEN_22; // @[SIntTypeClass.scala 18:40:@476.4]
  wire [32:0] _T_1365; // @[SIntTypeClass.scala 18:40:@476.4]
  wire [31:0] _T_1366; // @[SIntTypeClass.scala 18:40:@477.4]
  wire [31:0] _T_1367; // @[SIntTypeClass.scala 18:40:@478.4]
  wire [31:0] _GEN_23; // @[SIntTypeClass.scala 18:40:@479.4]
  wire [32:0] _T_1368; // @[SIntTypeClass.scala 18:40:@479.4]
  wire [31:0] _T_1369; // @[SIntTypeClass.scala 18:40:@480.4]
  wire [31:0] _T_1370; // @[SIntTypeClass.scala 18:40:@481.4]
  wire [31:0] _GEN_24; // @[SIntTypeClass.scala 18:40:@487.4]
  wire [32:0] _T_1379; // @[SIntTypeClass.scala 18:40:@487.4]
  wire [31:0] _T_1380; // @[SIntTypeClass.scala 18:40:@488.4]
  wire [31:0] _T_1381; // @[SIntTypeClass.scala 18:40:@489.4]
  wire [31:0] _GEN_25; // @[SIntTypeClass.scala 18:40:@490.4]
  wire [32:0] _T_1382; // @[SIntTypeClass.scala 18:40:@490.4]
  wire [31:0] _T_1383; // @[SIntTypeClass.scala 18:40:@491.4]
  wire [31:0] _T_1384; // @[SIntTypeClass.scala 18:40:@492.4]
  wire [31:0] _GEN_26; // @[SIntTypeClass.scala 18:40:@498.4]
  wire [32:0] _T_1393; // @[SIntTypeClass.scala 18:40:@498.4]
  wire [31:0] _T_1394; // @[SIntTypeClass.scala 18:40:@499.4]
  wire [31:0] _T_1395; // @[SIntTypeClass.scala 18:40:@500.4]
  wire [31:0] _GEN_27; // @[SIntTypeClass.scala 18:40:@501.4]
  wire [32:0] _T_1396; // @[SIntTypeClass.scala 18:40:@501.4]
  wire [31:0] _T_1397; // @[SIntTypeClass.scala 18:40:@502.4]
  wire [31:0] _T_1398; // @[SIntTypeClass.scala 18:40:@503.4]
  wire [31:0] _GEN_28; // @[SIntTypeClass.scala 18:40:@509.4]
  wire [32:0] _T_1407; // @[SIntTypeClass.scala 18:40:@509.4]
  wire [31:0] _T_1408; // @[SIntTypeClass.scala 18:40:@510.4]
  wire [31:0] _T_1409; // @[SIntTypeClass.scala 18:40:@511.4]
  wire [31:0] _GEN_29; // @[SIntTypeClass.scala 18:40:@512.4]
  wire [32:0] _T_1410; // @[SIntTypeClass.scala 18:40:@512.4]
  wire [31:0] _T_1411; // @[SIntTypeClass.scala 18:40:@513.4]
  wire [31:0] _T_1412; // @[SIntTypeClass.scala 18:40:@514.4]
  wire [31:0] _GEN_30; // @[SIntTypeClass.scala 18:40:@520.4]
  wire [32:0] _T_1421; // @[SIntTypeClass.scala 18:40:@520.4]
  wire [31:0] _T_1422; // @[SIntTypeClass.scala 18:40:@521.4]
  wire [31:0] _T_1423; // @[SIntTypeClass.scala 18:40:@522.4]
  wire [31:0] _GEN_31; // @[SIntTypeClass.scala 18:40:@523.4]
  wire [32:0] _T_1424; // @[SIntTypeClass.scala 18:40:@523.4]
  wire [31:0] _T_1425; // @[SIntTypeClass.scala 18:40:@524.4]
  wire [31:0] _T_1426; // @[SIntTypeClass.scala 18:40:@525.4]
  wire [32:0] _T_1435; // @[SIntTypeClass.scala 18:40:@531.4]
  wire [31:0] _T_1436; // @[SIntTypeClass.scala 18:40:@532.4]
  wire [31:0] _T_1437; // @[SIntTypeClass.scala 18:40:@533.4]
  wire [32:0] _T_1438; // @[SIntTypeClass.scala 18:40:@534.4]
  wire [31:0] _T_1439; // @[SIntTypeClass.scala 18:40:@535.4]
  wire [31:0] _T_1440; // @[SIntTypeClass.scala 18:40:@536.4]
  wire [32:0] _T_1449; // @[SIntTypeClass.scala 18:40:@542.4]
  wire [31:0] _T_1450; // @[SIntTypeClass.scala 18:40:@543.4]
  wire [31:0] _T_1451; // @[SIntTypeClass.scala 18:40:@544.4]
  wire [32:0] _T_1452; // @[SIntTypeClass.scala 18:40:@545.4]
  wire [31:0] _T_1453; // @[SIntTypeClass.scala 18:40:@546.4]
  wire [31:0] _T_1454; // @[SIntTypeClass.scala 18:40:@547.4]
  wire [32:0] _T_1463; // @[SIntTypeClass.scala 18:40:@553.4]
  wire [31:0] _T_1464; // @[SIntTypeClass.scala 18:40:@554.4]
  wire [31:0] _T_1465; // @[SIntTypeClass.scala 18:40:@555.4]
  wire [32:0] _T_1466; // @[SIntTypeClass.scala 18:40:@556.4]
  wire [31:0] _T_1467; // @[SIntTypeClass.scala 18:40:@557.4]
  wire [31:0] _T_1468; // @[SIntTypeClass.scala 18:40:@558.4]
  wire [32:0] _T_1477; // @[SIntTypeClass.scala 18:40:@564.4]
  wire [31:0] _T_1478; // @[SIntTypeClass.scala 18:40:@565.4]
  wire [31:0] _T_1479; // @[SIntTypeClass.scala 18:40:@566.4]
  wire [32:0] _T_1480; // @[SIntTypeClass.scala 18:40:@567.4]
  wire [31:0] _T_1481; // @[SIntTypeClass.scala 18:40:@568.4]
  wire [31:0] _T_1482; // @[SIntTypeClass.scala 18:40:@569.4]
  wire [32:0] _T_1491; // @[SIntTypeClass.scala 18:40:@575.4]
  wire [31:0] _T_1492; // @[SIntTypeClass.scala 18:40:@576.4]
  wire [31:0] _T_1493; // @[SIntTypeClass.scala 18:40:@577.4]
  wire [32:0] _T_1494; // @[SIntTypeClass.scala 18:40:@578.4]
  wire [31:0] _T_1495; // @[SIntTypeClass.scala 18:40:@579.4]
  wire [31:0] _T_1496; // @[SIntTypeClass.scala 18:40:@580.4]
  wire [32:0] _T_1505; // @[SIntTypeClass.scala 18:40:@586.4]
  wire [31:0] _T_1506; // @[SIntTypeClass.scala 18:40:@587.4]
  wire [31:0] _T_1507; // @[SIntTypeClass.scala 18:40:@588.4]
  wire [32:0] _T_1508; // @[SIntTypeClass.scala 18:40:@589.4]
  wire [31:0] _T_1509; // @[SIntTypeClass.scala 18:40:@590.4]
  wire [31:0] _T_1510; // @[SIntTypeClass.scala 18:40:@591.4]
  wire [32:0] _T_1519; // @[SIntTypeClass.scala 18:40:@597.4]
  wire [31:0] _T_1520; // @[SIntTypeClass.scala 18:40:@598.4]
  wire [31:0] _T_1521; // @[SIntTypeClass.scala 18:40:@599.4]
  wire [32:0] _T_1522; // @[SIntTypeClass.scala 18:40:@600.4]
  wire [31:0] _T_1523; // @[SIntTypeClass.scala 18:40:@601.4]
  wire [31:0] _T_1524; // @[SIntTypeClass.scala 18:40:@602.4]
  wire [32:0] _T_1533; // @[SIntTypeClass.scala 18:40:@608.4]
  wire [31:0] _T_1534; // @[SIntTypeClass.scala 18:40:@609.4]
  wire [31:0] _T_1535; // @[SIntTypeClass.scala 18:40:@610.4]
  wire [32:0] _T_1536; // @[SIntTypeClass.scala 18:40:@611.4]
  wire [31:0] _T_1537; // @[SIntTypeClass.scala 18:40:@612.4]
  wire [31:0] _T_1538; // @[SIntTypeClass.scala 18:40:@613.4]
  wire [31:0] _GEN_44; // @[SIntTypeClass.scala 18:40:@619.4]
  wire [32:0] _T_1547; // @[SIntTypeClass.scala 18:40:@619.4]
  wire [31:0] _T_1548; // @[SIntTypeClass.scala 18:40:@620.4]
  wire [31:0] _T_1549; // @[SIntTypeClass.scala 18:40:@621.4]
  wire [31:0] _GEN_45; // @[SIntTypeClass.scala 18:40:@622.4]
  wire [32:0] _T_1550; // @[SIntTypeClass.scala 18:40:@622.4]
  wire [31:0] _T_1551; // @[SIntTypeClass.scala 18:40:@623.4]
  wire [31:0] _T_1552; // @[SIntTypeClass.scala 18:40:@624.4]
  wire [16:0] _T_1567; // @[SIntTypeClass.scala 18:40:@633.4]
  wire [15:0] _T_1568; // @[SIntTypeClass.scala 18:40:@634.4]
  wire [15:0] _T_1569; // @[SIntTypeClass.scala 18:40:@635.4]
  wire [16:0] _T_1570; // @[SIntTypeClass.scala 28:50:@636.4]
  wire [15:0] _T_1571; // @[SIntTypeClass.scala 28:50:@637.4]
  wire [15:0] _T_1572; // @[SIntTypeClass.scala 28:50:@638.4]
  wire [16:0] _T_1573; // @[SIntTypeClass.scala 44:41:@639.4]
  wire [16:0] _T_1574; // @[SIntTypeClass.scala 44:41:@640.4]
  wire [16:0] _T_1575; // @[SIntTypeClass.scala 44:41:@641.4]
  wire [17:0] _T_1576; // @[SIntTypeClass.scala 28:50:@642.4]
  wire [16:0] _T_1577; // @[SIntTypeClass.scala 28:50:@643.4]
  wire [16:0] tapped2_0_real; // @[SIntTypeClass.scala 28:50:@644.4]
  wire [17:0] _T_1579; // @[SIntTypeClass.scala 18:40:@645.4]
  wire [16:0] _T_1580; // @[SIntTypeClass.scala 18:40:@646.4]
  wire [16:0] tapped2_0_imag; // @[SIntTypeClass.scala 18:40:@647.4]
  wire [31:0] _T_1769; // @[SIntTypeClass.scala 44:41:@786.4]
  wire [31:0] _T_1771; // @[SIntTypeClass.scala 44:41:@788.4]
  wire [31:0] _GEN_46; // @[SIntTypeClass.scala 28:50:@789.4]
  wire [32:0] _T_1772; // @[SIntTypeClass.scala 28:50:@789.4]
  wire [31:0] _T_1773; // @[SIntTypeClass.scala 28:50:@790.4]
  wire [31:0] tapped2_7_real; // @[SIntTypeClass.scala 28:50:@791.4]
  wire [32:0] _T_1775; // @[SIntTypeClass.scala 18:40:@792.4]
  wire [31:0] _T_1776; // @[SIntTypeClass.scala 18:40:@793.4]
  wire [31:0] tapped2_7_imag; // @[SIntTypeClass.scala 18:40:@794.4]
  reg [31:0] registerchain2_1_real; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_40;
  reg [31:0] registerchain2_1_imag; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_41;
  reg [31:0] registerchain2_2_real; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_42;
  reg [31:0] registerchain2_2_imag; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_43;
  reg [31:0] registerchain2_3_real; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_44;
  reg [31:0] registerchain2_3_imag; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_45;
  reg [31:0] registerchain2_4_real; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_46;
  reg [31:0] registerchain2_4_imag; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_47;
  reg [31:0] registerchain2_5_real; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_48;
  reg [31:0] registerchain2_5_imag; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_49;
  reg [31:0] registerchain2_6_real; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_50;
  reg [31:0] registerchain2_6_imag; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_51;
  reg [31:0] registerchain2_7_real; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_52;
  reg [31:0] registerchain2_7_imag; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_53;
  reg [31:0] registerchain2_8_real; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_54;
  reg [31:0] registerchain2_8_imag; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_55;
  reg [31:0] registerchain2_9_real; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_56;
  reg [31:0] registerchain2_9_imag; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_57;
  reg [31:0] registerchain2_10_real; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_58;
  reg [31:0] registerchain2_10_imag; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_59;
  reg [31:0] registerchain2_11_real; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_60;
  reg [31:0] registerchain2_11_imag; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_61;
  reg [31:0] registerchain2_12_real; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_62;
  reg [31:0] registerchain2_12_imag; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_63;
  reg [31:0] registerchain2_13_real; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_64;
  reg [31:0] registerchain2_13_imag; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_65;
  reg [31:0] registerchain2_14_real; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_66;
  reg [31:0] registerchain2_14_imag; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_67;
  reg [31:0] registerchain2_15_real; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_68;
  reg [31:0] registerchain2_15_imag; // @[halfband_interpolator.scala 47:35:@1026.4]
  reg [31:0] _RAND_69;
  wire [31:0] _GEN_47; // @[SIntTypeClass.scala 18:40:@1029.4]
  wire [32:0] _T_2593; // @[SIntTypeClass.scala 18:40:@1029.4]
  wire [31:0] _T_2594; // @[SIntTypeClass.scala 18:40:@1030.4]
  wire [31:0] _T_2595; // @[SIntTypeClass.scala 18:40:@1031.4]
  wire [31:0] _GEN_48; // @[SIntTypeClass.scala 18:40:@1032.4]
  wire [32:0] _T_2596; // @[SIntTypeClass.scala 18:40:@1032.4]
  wire [31:0] _T_2597; // @[SIntTypeClass.scala 18:40:@1033.4]
  wire [31:0] _T_2598; // @[SIntTypeClass.scala 18:40:@1034.4]
  wire [32:0] _T_2607; // @[SIntTypeClass.scala 18:40:@1040.4]
  wire [31:0] _T_2608; // @[SIntTypeClass.scala 18:40:@1041.4]
  wire [31:0] _T_2609; // @[SIntTypeClass.scala 18:40:@1042.4]
  wire [32:0] _T_2610; // @[SIntTypeClass.scala 18:40:@1043.4]
  wire [31:0] _T_2611; // @[SIntTypeClass.scala 18:40:@1044.4]
  wire [31:0] _T_2612; // @[SIntTypeClass.scala 18:40:@1045.4]
  wire [32:0] _T_2621; // @[SIntTypeClass.scala 18:40:@1051.4]
  wire [31:0] _T_2622; // @[SIntTypeClass.scala 18:40:@1052.4]
  wire [31:0] _T_2623; // @[SIntTypeClass.scala 18:40:@1053.4]
  wire [32:0] _T_2624; // @[SIntTypeClass.scala 18:40:@1054.4]
  wire [31:0] _T_2625; // @[SIntTypeClass.scala 18:40:@1055.4]
  wire [31:0] _T_2626; // @[SIntTypeClass.scala 18:40:@1056.4]
  wire [32:0] _T_2635; // @[SIntTypeClass.scala 18:40:@1062.4]
  wire [31:0] _T_2636; // @[SIntTypeClass.scala 18:40:@1063.4]
  wire [31:0] _T_2637; // @[SIntTypeClass.scala 18:40:@1064.4]
  wire [32:0] _T_2638; // @[SIntTypeClass.scala 18:40:@1065.4]
  wire [31:0] _T_2639; // @[SIntTypeClass.scala 18:40:@1066.4]
  wire [31:0] _T_2640; // @[SIntTypeClass.scala 18:40:@1067.4]
  wire [32:0] _T_2649; // @[SIntTypeClass.scala 18:40:@1073.4]
  wire [31:0] _T_2650; // @[SIntTypeClass.scala 18:40:@1074.4]
  wire [31:0] _T_2651; // @[SIntTypeClass.scala 18:40:@1075.4]
  wire [32:0] _T_2652; // @[SIntTypeClass.scala 18:40:@1076.4]
  wire [31:0] _T_2653; // @[SIntTypeClass.scala 18:40:@1077.4]
  wire [31:0] _T_2654; // @[SIntTypeClass.scala 18:40:@1078.4]
  wire [32:0] _T_2663; // @[SIntTypeClass.scala 18:40:@1084.4]
  wire [31:0] _T_2664; // @[SIntTypeClass.scala 18:40:@1085.4]
  wire [31:0] _T_2665; // @[SIntTypeClass.scala 18:40:@1086.4]
  wire [32:0] _T_2666; // @[SIntTypeClass.scala 18:40:@1087.4]
  wire [31:0] _T_2667; // @[SIntTypeClass.scala 18:40:@1088.4]
  wire [31:0] _T_2668; // @[SIntTypeClass.scala 18:40:@1089.4]
  wire [32:0] _T_2677; // @[SIntTypeClass.scala 18:40:@1095.4]
  wire [31:0] _T_2678; // @[SIntTypeClass.scala 18:40:@1096.4]
  wire [31:0] _T_2679; // @[SIntTypeClass.scala 18:40:@1097.4]
  wire [32:0] _T_2680; // @[SIntTypeClass.scala 18:40:@1098.4]
  wire [31:0] _T_2681; // @[SIntTypeClass.scala 18:40:@1099.4]
  wire [31:0] _T_2682; // @[SIntTypeClass.scala 18:40:@1100.4]
  wire [32:0] _T_2691; // @[SIntTypeClass.scala 18:40:@1106.4]
  wire [31:0] _T_2692; // @[SIntTypeClass.scala 18:40:@1107.4]
  wire [31:0] _T_2693; // @[SIntTypeClass.scala 18:40:@1108.4]
  wire [32:0] _T_2694; // @[SIntTypeClass.scala 18:40:@1109.4]
  wire [31:0] _T_2695; // @[SIntTypeClass.scala 18:40:@1110.4]
  wire [31:0] _T_2696; // @[SIntTypeClass.scala 18:40:@1111.4]
  wire [32:0] _T_2705; // @[SIntTypeClass.scala 18:40:@1117.4]
  wire [31:0] _T_2706; // @[SIntTypeClass.scala 18:40:@1118.4]
  wire [31:0] _T_2707; // @[SIntTypeClass.scala 18:40:@1119.4]
  wire [32:0] _T_2708; // @[SIntTypeClass.scala 18:40:@1120.4]
  wire [31:0] _T_2709; // @[SIntTypeClass.scala 18:40:@1121.4]
  wire [31:0] _T_2710; // @[SIntTypeClass.scala 18:40:@1122.4]
  wire [32:0] _T_2719; // @[SIntTypeClass.scala 18:40:@1128.4]
  wire [31:0] _T_2720; // @[SIntTypeClass.scala 18:40:@1129.4]
  wire [31:0] _T_2721; // @[SIntTypeClass.scala 18:40:@1130.4]
  wire [32:0] _T_2722; // @[SIntTypeClass.scala 18:40:@1131.4]
  wire [31:0] _T_2723; // @[SIntTypeClass.scala 18:40:@1132.4]
  wire [31:0] _T_2724; // @[SIntTypeClass.scala 18:40:@1133.4]
  wire [32:0] _T_2733; // @[SIntTypeClass.scala 18:40:@1139.4]
  wire [31:0] _T_2734; // @[SIntTypeClass.scala 18:40:@1140.4]
  wire [31:0] _T_2735; // @[SIntTypeClass.scala 18:40:@1141.4]
  wire [32:0] _T_2736; // @[SIntTypeClass.scala 18:40:@1142.4]
  wire [31:0] _T_2737; // @[SIntTypeClass.scala 18:40:@1143.4]
  wire [31:0] _T_2738; // @[SIntTypeClass.scala 18:40:@1144.4]
  wire [32:0] _T_2747; // @[SIntTypeClass.scala 18:40:@1150.4]
  wire [31:0] _T_2748; // @[SIntTypeClass.scala 18:40:@1151.4]
  wire [31:0] _T_2749; // @[SIntTypeClass.scala 18:40:@1152.4]
  wire [32:0] _T_2750; // @[SIntTypeClass.scala 18:40:@1153.4]
  wire [31:0] _T_2751; // @[SIntTypeClass.scala 18:40:@1154.4]
  wire [31:0] _T_2752; // @[SIntTypeClass.scala 18:40:@1155.4]
  wire [32:0] _T_2761; // @[SIntTypeClass.scala 18:40:@1161.4]
  wire [31:0] _T_2762; // @[SIntTypeClass.scala 18:40:@1162.4]
  wire [31:0] _T_2763; // @[SIntTypeClass.scala 18:40:@1163.4]
  wire [32:0] _T_2764; // @[SIntTypeClass.scala 18:40:@1164.4]
  wire [31:0] _T_2765; // @[SIntTypeClass.scala 18:40:@1165.4]
  wire [31:0] _T_2766; // @[SIntTypeClass.scala 18:40:@1166.4]
  wire [32:0] _T_2775; // @[SIntTypeClass.scala 18:40:@1172.4]
  wire [31:0] _T_2776; // @[SIntTypeClass.scala 18:40:@1173.4]
  wire [31:0] _T_2777; // @[SIntTypeClass.scala 18:40:@1174.4]
  wire [32:0] _T_2778; // @[SIntTypeClass.scala 18:40:@1175.4]
  wire [31:0] _T_2779; // @[SIntTypeClass.scala 18:40:@1176.4]
  wire [31:0] _T_2780; // @[SIntTypeClass.scala 18:40:@1177.4]
  reg [15:0] _T_2804_real; // @[halfband_interpolator.scala 59:27:@1186.4]
  reg [31:0] _RAND_70;
  reg [15:0] _T_2804_imag; // @[halfband_interpolator.scala 59:27:@1186.4]
  reg [31:0] _RAND_71;
  reg  _T_2809; // @[halfband_interpolator.scala 62:24:@1189.4]
  reg [31:0] _RAND_72;
  wire [10:0] _T_2812; // @[halfband_interpolator.scala 64:41:@1194.6]
  wire [31:0] _GEN_73; // @[halfband_interpolator.scala 64:41:@1195.6]
  wire [42:0] _T_2813; // @[halfband_interpolator.scala 64:41:@1195.6]
  wire [41:0] _T_2814; // @[halfband_interpolator.scala 64:41:@1196.6]
  wire [41:0] _T_2815; // @[halfband_interpolator.scala 64:41:@1197.6]
  wire [15:0] _T_2816; // @[halfband_interpolator.scala 64:51:@1198.6]
  wire [15:0] _T_2817; // @[halfband_interpolator.scala 64:79:@1199.6]
  wire [42:0] _T_2819; // @[halfband_interpolator.scala 65:41:@1202.6]
  wire [41:0] _T_2820; // @[halfband_interpolator.scala 65:41:@1203.6]
  wire [41:0] _T_2821; // @[halfband_interpolator.scala 65:41:@1204.6]
  wire [15:0] _T_2822; // @[halfband_interpolator.scala 65:51:@1205.6]
  wire [15:0] _T_2823; // @[halfband_interpolator.scala 65:79:@1206.6]
  wire  _T_2825; // @[halfband_interpolator.scala 66:27:@1210.6]
  wire [42:0] _T_2827; // @[halfband_interpolator.scala 67:41:@1213.8]
  wire [41:0] _T_2828; // @[halfband_interpolator.scala 67:41:@1214.8]
  wire [41:0] _T_2829; // @[halfband_interpolator.scala 67:41:@1215.8]
  wire [15:0] _T_2830; // @[halfband_interpolator.scala 67:51:@1216.8]
  wire [15:0] _T_2831; // @[halfband_interpolator.scala 67:79:@1217.8]
  wire [42:0] _T_2833; // @[halfband_interpolator.scala 68:41:@1220.8]
  wire [41:0] _T_2834; // @[halfband_interpolator.scala 68:41:@1221.8]
  wire [41:0] _T_2835; // @[halfband_interpolator.scala 68:41:@1222.8]
  wire [15:0] _T_2836; // @[halfband_interpolator.scala 68:51:@1223.8]
  wire [15:0] _T_2837; // @[halfband_interpolator.scala 68:79:@1224.8]
  wire [15:0] _GEN_0; // @[halfband_interpolator.scala 66:39:@1211.6]
  wire [15:0] _GEN_1; // @[halfband_interpolator.scala 66:39:@1211.6]
  wire [15:0] _GEN_2; // @[halfband_interpolator.scala 63:32:@1193.4]
  wire [15:0] _GEN_3; // @[halfband_interpolator.scala 63:32:@1193.4]
  assign _T_261 = $signed(slowregs_0_real) + $signed(slowregs_0_imag); // @[SIntTypeClass.scala 18:40:@43.4]
  assign _T_262 = $signed(slowregs_0_real) + $signed(slowregs_0_imag); // @[SIntTypeClass.scala 18:40:@44.4]
  assign _T_263 = $signed(_T_262); // @[SIntTypeClass.scala 18:40:@45.4]
  assign _T_264 = $signed(slowregs_0_imag) - $signed(slowregs_0_real); // @[SIntTypeClass.scala 28:50:@46.4]
  assign _T_265 = $signed(slowregs_0_imag) - $signed(slowregs_0_real); // @[SIntTypeClass.scala 28:50:@47.4]
  assign _T_266 = $signed(_T_265); // @[SIntTypeClass.scala 28:50:@48.4]
  assign _T_267 = $signed(slowregs_0_real) * $signed(-16'sh89); // @[SIntTypeClass.scala 44:41:@49.4]
  assign _T_268 = $signed(_T_263) * $signed(16'sh0); // @[SIntTypeClass.scala 44:41:@50.4]
  assign _T_269 = $signed(_T_266) * $signed(-16'sh89); // @[SIntTypeClass.scala 44:41:@51.4]
  assign _GEN_4 = {{8{_T_268[16]}},_T_268}; // @[SIntTypeClass.scala 28:50:@52.4]
  assign _T_270 = $signed(_T_267) - $signed(_GEN_4); // @[SIntTypeClass.scala 28:50:@52.4]
  assign _T_271 = $signed(_T_267) - $signed(_GEN_4); // @[SIntTypeClass.scala 28:50:@53.4]
  assign tapped1_0_real = $signed(_T_271); // @[SIntTypeClass.scala 28:50:@54.4]
  assign _T_273 = $signed(_T_267) + $signed(_T_269); // @[SIntTypeClass.scala 18:40:@55.4]
  assign _T_274 = $signed(_T_267) + $signed(_T_269); // @[SIntTypeClass.scala 18:40:@56.4]
  assign tapped1_0_imag = $signed(_T_274); // @[SIntTypeClass.scala 18:40:@57.4]
  assign _T_295 = $signed(slowregs_0_real) * $signed(16'sh130); // @[SIntTypeClass.scala 44:41:@70.4]
  assign _T_297 = $signed(_T_266) * $signed(16'sh130); // @[SIntTypeClass.scala 44:41:@72.4]
  assign _GEN_5 = {{9{_T_268[16]}},_T_268}; // @[SIntTypeClass.scala 28:50:@73.4]
  assign _T_298 = $signed(_T_295) - $signed(_GEN_5); // @[SIntTypeClass.scala 28:50:@73.4]
  assign _T_299 = $signed(_T_295) - $signed(_GEN_5); // @[SIntTypeClass.scala 28:50:@74.4]
  assign tapped1_1_real = $signed(_T_299); // @[SIntTypeClass.scala 28:50:@75.4]
  assign _T_301 = $signed(_T_295) + $signed(_T_297); // @[SIntTypeClass.scala 18:40:@76.4]
  assign _T_302 = $signed(_T_295) + $signed(_T_297); // @[SIntTypeClass.scala 18:40:@77.4]
  assign tapped1_1_imag = $signed(_T_302); // @[SIntTypeClass.scala 18:40:@78.4]
  assign _T_323 = $signed(slowregs_0_real) * $signed(-16'sh269); // @[SIntTypeClass.scala 44:41:@91.4]
  assign _T_325 = $signed(_T_266) * $signed(-16'sh269); // @[SIntTypeClass.scala 44:41:@93.4]
  assign _GEN_6 = {{10{_T_268[16]}},_T_268}; // @[SIntTypeClass.scala 28:50:@94.4]
  assign _T_326 = $signed(_T_323) - $signed(_GEN_6); // @[SIntTypeClass.scala 28:50:@94.4]
  assign _T_327 = $signed(_T_323) - $signed(_GEN_6); // @[SIntTypeClass.scala 28:50:@95.4]
  assign tapped1_2_real = $signed(_T_327); // @[SIntTypeClass.scala 28:50:@96.4]
  assign _T_329 = $signed(_T_323) + $signed(_T_325); // @[SIntTypeClass.scala 18:40:@97.4]
  assign _T_330 = $signed(_T_323) + $signed(_T_325); // @[SIntTypeClass.scala 18:40:@98.4]
  assign tapped1_2_imag = $signed(_T_330); // @[SIntTypeClass.scala 18:40:@99.4]
  assign _T_351 = $signed(slowregs_0_real) * $signed(16'sh467); // @[SIntTypeClass.scala 44:41:@112.4]
  assign _T_353 = $signed(_T_266) * $signed(16'sh467); // @[SIntTypeClass.scala 44:41:@114.4]
  assign _GEN_7 = {{11{_T_268[16]}},_T_268}; // @[SIntTypeClass.scala 28:50:@115.4]
  assign _T_354 = $signed(_T_351) - $signed(_GEN_7); // @[SIntTypeClass.scala 28:50:@115.4]
  assign _T_355 = $signed(_T_351) - $signed(_GEN_7); // @[SIntTypeClass.scala 28:50:@116.4]
  assign tapped1_3_real = $signed(_T_355); // @[SIntTypeClass.scala 28:50:@117.4]
  assign _T_357 = $signed(_T_351) + $signed(_T_353); // @[SIntTypeClass.scala 18:40:@118.4]
  assign _T_358 = $signed(_T_351) + $signed(_T_353); // @[SIntTypeClass.scala 18:40:@119.4]
  assign tapped1_3_imag = $signed(_T_358); // @[SIntTypeClass.scala 18:40:@120.4]
  assign _T_379 = $signed(slowregs_0_real) * $signed(-16'sh79f); // @[SIntTypeClass.scala 44:41:@133.4]
  assign _T_381 = $signed(_T_266) * $signed(-16'sh79f); // @[SIntTypeClass.scala 44:41:@135.4]
  assign _T_382 = $signed(_T_379) - $signed(_GEN_7); // @[SIntTypeClass.scala 28:50:@136.4]
  assign _T_383 = $signed(_T_379) - $signed(_GEN_7); // @[SIntTypeClass.scala 28:50:@137.4]
  assign tapped1_4_real = $signed(_T_383); // @[SIntTypeClass.scala 28:50:@138.4]
  assign _T_385 = $signed(_T_379) + $signed(_T_381); // @[SIntTypeClass.scala 18:40:@139.4]
  assign _T_386 = $signed(_T_379) + $signed(_T_381); // @[SIntTypeClass.scala 18:40:@140.4]
  assign tapped1_4_imag = $signed(_T_386); // @[SIntTypeClass.scala 18:40:@141.4]
  assign _T_407 = $signed(slowregs_0_real) * $signed(16'shd30); // @[SIntTypeClass.scala 44:41:@154.4]
  assign _T_409 = $signed(_T_266) * $signed(16'shd30); // @[SIntTypeClass.scala 44:41:@156.4]
  assign _GEN_9 = {{12{_T_268[16]}},_T_268}; // @[SIntTypeClass.scala 28:50:@157.4]
  assign _T_410 = $signed(_T_407) - $signed(_GEN_9); // @[SIntTypeClass.scala 28:50:@157.4]
  assign _T_411 = $signed(_T_407) - $signed(_GEN_9); // @[SIntTypeClass.scala 28:50:@158.4]
  assign tapped1_5_real = $signed(_T_411); // @[SIntTypeClass.scala 28:50:@159.4]
  assign _T_413 = $signed(_T_407) + $signed(_T_409); // @[SIntTypeClass.scala 18:40:@160.4]
  assign _T_414 = $signed(_T_407) + $signed(_T_409); // @[SIntTypeClass.scala 18:40:@161.4]
  assign tapped1_5_imag = $signed(_T_414); // @[SIntTypeClass.scala 18:40:@162.4]
  assign _T_435 = $signed(slowregs_0_real) * $signed(-16'sh1931); // @[SIntTypeClass.scala 44:41:@175.4]
  assign _T_437 = $signed(_T_266) * $signed(-16'sh1931); // @[SIntTypeClass.scala 44:41:@177.4]
  assign _GEN_10 = {{13{_T_268[16]}},_T_268}; // @[SIntTypeClass.scala 28:50:@178.4]
  assign _T_438 = $signed(_T_435) - $signed(_GEN_10); // @[SIntTypeClass.scala 28:50:@178.4]
  assign _T_439 = $signed(_T_435) - $signed(_GEN_10); // @[SIntTypeClass.scala 28:50:@179.4]
  assign tapped1_6_real = $signed(_T_439); // @[SIntTypeClass.scala 28:50:@180.4]
  assign _T_441 = $signed(_T_435) + $signed(_T_437); // @[SIntTypeClass.scala 18:40:@181.4]
  assign _T_442 = $signed(_T_435) + $signed(_T_437); // @[SIntTypeClass.scala 18:40:@182.4]
  assign tapped1_6_imag = $signed(_T_442); // @[SIntTypeClass.scala 18:40:@183.4]
  assign _T_463 = $signed(slowregs_0_real) * $signed(16'sh50cf); // @[SIntTypeClass.scala 44:41:@196.4]
  assign _T_465 = $signed(_T_266) * $signed(16'sh50cf); // @[SIntTypeClass.scala 44:41:@198.4]
  assign _GEN_11 = {{15{_T_268[16]}},_T_268}; // @[SIntTypeClass.scala 28:50:@199.4]
  assign _T_466 = $signed(_T_463) - $signed(_GEN_11); // @[SIntTypeClass.scala 28:50:@199.4]
  assign _T_467 = $signed(_T_463) - $signed(_GEN_11); // @[SIntTypeClass.scala 28:50:@200.4]
  assign tapped1_7_real = $signed(_T_467); // @[SIntTypeClass.scala 28:50:@201.4]
  assign _T_469 = $signed(_T_463) + $signed(_T_465); // @[SIntTypeClass.scala 18:40:@202.4]
  assign _T_470 = $signed(_T_463) + $signed(_T_465); // @[SIntTypeClass.scala 18:40:@203.4]
  assign tapped1_7_imag = $signed(_T_470); // @[SIntTypeClass.scala 18:40:@204.4]
  assign _GEN_20 = {{6{tapped1_1_real[25]}},tapped1_1_real}; // @[SIntTypeClass.scala 18:40:@465.4]
  assign _T_1351 = $signed(registerchain1_1_real) + $signed(_GEN_20); // @[SIntTypeClass.scala 18:40:@465.4]
  assign _T_1352 = $signed(registerchain1_1_real) + $signed(_GEN_20); // @[SIntTypeClass.scala 18:40:@466.4]
  assign _T_1353 = $signed(_T_1352); // @[SIntTypeClass.scala 18:40:@467.4]
  assign _GEN_21 = {{6{tapped1_1_imag[25]}},tapped1_1_imag}; // @[SIntTypeClass.scala 18:40:@468.4]
  assign _T_1354 = $signed(registerchain1_1_imag) + $signed(_GEN_21); // @[SIntTypeClass.scala 18:40:@468.4]
  assign _T_1355 = $signed(registerchain1_1_imag) + $signed(_GEN_21); // @[SIntTypeClass.scala 18:40:@469.4]
  assign _T_1356 = $signed(_T_1355); // @[SIntTypeClass.scala 18:40:@470.4]
  assign _GEN_22 = {{5{tapped1_2_real[26]}},tapped1_2_real}; // @[SIntTypeClass.scala 18:40:@476.4]
  assign _T_1365 = $signed(registerchain1_2_real) + $signed(_GEN_22); // @[SIntTypeClass.scala 18:40:@476.4]
  assign _T_1366 = $signed(registerchain1_2_real) + $signed(_GEN_22); // @[SIntTypeClass.scala 18:40:@477.4]
  assign _T_1367 = $signed(_T_1366); // @[SIntTypeClass.scala 18:40:@478.4]
  assign _GEN_23 = {{5{tapped1_2_imag[26]}},tapped1_2_imag}; // @[SIntTypeClass.scala 18:40:@479.4]
  assign _T_1368 = $signed(registerchain1_2_imag) + $signed(_GEN_23); // @[SIntTypeClass.scala 18:40:@479.4]
  assign _T_1369 = $signed(registerchain1_2_imag) + $signed(_GEN_23); // @[SIntTypeClass.scala 18:40:@480.4]
  assign _T_1370 = $signed(_T_1369); // @[SIntTypeClass.scala 18:40:@481.4]
  assign _GEN_24 = {{4{tapped1_3_real[27]}},tapped1_3_real}; // @[SIntTypeClass.scala 18:40:@487.4]
  assign _T_1379 = $signed(registerchain1_3_real) + $signed(_GEN_24); // @[SIntTypeClass.scala 18:40:@487.4]
  assign _T_1380 = $signed(registerchain1_3_real) + $signed(_GEN_24); // @[SIntTypeClass.scala 18:40:@488.4]
  assign _T_1381 = $signed(_T_1380); // @[SIntTypeClass.scala 18:40:@489.4]
  assign _GEN_25 = {{4{tapped1_3_imag[27]}},tapped1_3_imag}; // @[SIntTypeClass.scala 18:40:@490.4]
  assign _T_1382 = $signed(registerchain1_3_imag) + $signed(_GEN_25); // @[SIntTypeClass.scala 18:40:@490.4]
  assign _T_1383 = $signed(registerchain1_3_imag) + $signed(_GEN_25); // @[SIntTypeClass.scala 18:40:@491.4]
  assign _T_1384 = $signed(_T_1383); // @[SIntTypeClass.scala 18:40:@492.4]
  assign _GEN_26 = {{4{tapped1_4_real[27]}},tapped1_4_real}; // @[SIntTypeClass.scala 18:40:@498.4]
  assign _T_1393 = $signed(registerchain1_4_real) + $signed(_GEN_26); // @[SIntTypeClass.scala 18:40:@498.4]
  assign _T_1394 = $signed(registerchain1_4_real) + $signed(_GEN_26); // @[SIntTypeClass.scala 18:40:@499.4]
  assign _T_1395 = $signed(_T_1394); // @[SIntTypeClass.scala 18:40:@500.4]
  assign _GEN_27 = {{4{tapped1_4_imag[27]}},tapped1_4_imag}; // @[SIntTypeClass.scala 18:40:@501.4]
  assign _T_1396 = $signed(registerchain1_4_imag) + $signed(_GEN_27); // @[SIntTypeClass.scala 18:40:@501.4]
  assign _T_1397 = $signed(registerchain1_4_imag) + $signed(_GEN_27); // @[SIntTypeClass.scala 18:40:@502.4]
  assign _T_1398 = $signed(_T_1397); // @[SIntTypeClass.scala 18:40:@503.4]
  assign _GEN_28 = {{3{tapped1_5_real[28]}},tapped1_5_real}; // @[SIntTypeClass.scala 18:40:@509.4]
  assign _T_1407 = $signed(registerchain1_5_real) + $signed(_GEN_28); // @[SIntTypeClass.scala 18:40:@509.4]
  assign _T_1408 = $signed(registerchain1_5_real) + $signed(_GEN_28); // @[SIntTypeClass.scala 18:40:@510.4]
  assign _T_1409 = $signed(_T_1408); // @[SIntTypeClass.scala 18:40:@511.4]
  assign _GEN_29 = {{3{tapped1_5_imag[28]}},tapped1_5_imag}; // @[SIntTypeClass.scala 18:40:@512.4]
  assign _T_1410 = $signed(registerchain1_5_imag) + $signed(_GEN_29); // @[SIntTypeClass.scala 18:40:@512.4]
  assign _T_1411 = $signed(registerchain1_5_imag) + $signed(_GEN_29); // @[SIntTypeClass.scala 18:40:@513.4]
  assign _T_1412 = $signed(_T_1411); // @[SIntTypeClass.scala 18:40:@514.4]
  assign _GEN_30 = {{2{tapped1_6_real[29]}},tapped1_6_real}; // @[SIntTypeClass.scala 18:40:@520.4]
  assign _T_1421 = $signed(registerchain1_6_real) + $signed(_GEN_30); // @[SIntTypeClass.scala 18:40:@520.4]
  assign _T_1422 = $signed(registerchain1_6_real) + $signed(_GEN_30); // @[SIntTypeClass.scala 18:40:@521.4]
  assign _T_1423 = $signed(_T_1422); // @[SIntTypeClass.scala 18:40:@522.4]
  assign _GEN_31 = {{2{tapped1_6_imag[29]}},tapped1_6_imag}; // @[SIntTypeClass.scala 18:40:@523.4]
  assign _T_1424 = $signed(registerchain1_6_imag) + $signed(_GEN_31); // @[SIntTypeClass.scala 18:40:@523.4]
  assign _T_1425 = $signed(registerchain1_6_imag) + $signed(_GEN_31); // @[SIntTypeClass.scala 18:40:@524.4]
  assign _T_1426 = $signed(_T_1425); // @[SIntTypeClass.scala 18:40:@525.4]
  assign _T_1435 = $signed(registerchain1_7_real) + $signed(tapped1_7_real); // @[SIntTypeClass.scala 18:40:@531.4]
  assign _T_1436 = $signed(registerchain1_7_real) + $signed(tapped1_7_real); // @[SIntTypeClass.scala 18:40:@532.4]
  assign _T_1437 = $signed(_T_1436); // @[SIntTypeClass.scala 18:40:@533.4]
  assign _T_1438 = $signed(registerchain1_7_imag) + $signed(tapped1_7_imag); // @[SIntTypeClass.scala 18:40:@534.4]
  assign _T_1439 = $signed(registerchain1_7_imag) + $signed(tapped1_7_imag); // @[SIntTypeClass.scala 18:40:@535.4]
  assign _T_1440 = $signed(_T_1439); // @[SIntTypeClass.scala 18:40:@536.4]
  assign _T_1449 = $signed(registerchain1_8_real) + $signed(tapped1_7_real); // @[SIntTypeClass.scala 18:40:@542.4]
  assign _T_1450 = $signed(registerchain1_8_real) + $signed(tapped1_7_real); // @[SIntTypeClass.scala 18:40:@543.4]
  assign _T_1451 = $signed(_T_1450); // @[SIntTypeClass.scala 18:40:@544.4]
  assign _T_1452 = $signed(registerchain1_8_imag) + $signed(tapped1_7_imag); // @[SIntTypeClass.scala 18:40:@545.4]
  assign _T_1453 = $signed(registerchain1_8_imag) + $signed(tapped1_7_imag); // @[SIntTypeClass.scala 18:40:@546.4]
  assign _T_1454 = $signed(_T_1453); // @[SIntTypeClass.scala 18:40:@547.4]
  assign _T_1463 = $signed(registerchain1_9_real) + $signed(_GEN_30); // @[SIntTypeClass.scala 18:40:@553.4]
  assign _T_1464 = $signed(registerchain1_9_real) + $signed(_GEN_30); // @[SIntTypeClass.scala 18:40:@554.4]
  assign _T_1465 = $signed(_T_1464); // @[SIntTypeClass.scala 18:40:@555.4]
  assign _T_1466 = $signed(registerchain1_9_imag) + $signed(_GEN_31); // @[SIntTypeClass.scala 18:40:@556.4]
  assign _T_1467 = $signed(registerchain1_9_imag) + $signed(_GEN_31); // @[SIntTypeClass.scala 18:40:@557.4]
  assign _T_1468 = $signed(_T_1467); // @[SIntTypeClass.scala 18:40:@558.4]
  assign _T_1477 = $signed(registerchain1_10_real) + $signed(_GEN_28); // @[SIntTypeClass.scala 18:40:@564.4]
  assign _T_1478 = $signed(registerchain1_10_real) + $signed(_GEN_28); // @[SIntTypeClass.scala 18:40:@565.4]
  assign _T_1479 = $signed(_T_1478); // @[SIntTypeClass.scala 18:40:@566.4]
  assign _T_1480 = $signed(registerchain1_10_imag) + $signed(_GEN_29); // @[SIntTypeClass.scala 18:40:@567.4]
  assign _T_1481 = $signed(registerchain1_10_imag) + $signed(_GEN_29); // @[SIntTypeClass.scala 18:40:@568.4]
  assign _T_1482 = $signed(_T_1481); // @[SIntTypeClass.scala 18:40:@569.4]
  assign _T_1491 = $signed(registerchain1_11_real) + $signed(_GEN_26); // @[SIntTypeClass.scala 18:40:@575.4]
  assign _T_1492 = $signed(registerchain1_11_real) + $signed(_GEN_26); // @[SIntTypeClass.scala 18:40:@576.4]
  assign _T_1493 = $signed(_T_1492); // @[SIntTypeClass.scala 18:40:@577.4]
  assign _T_1494 = $signed(registerchain1_11_imag) + $signed(_GEN_27); // @[SIntTypeClass.scala 18:40:@578.4]
  assign _T_1495 = $signed(registerchain1_11_imag) + $signed(_GEN_27); // @[SIntTypeClass.scala 18:40:@579.4]
  assign _T_1496 = $signed(_T_1495); // @[SIntTypeClass.scala 18:40:@580.4]
  assign _T_1505 = $signed(registerchain1_12_real) + $signed(_GEN_24); // @[SIntTypeClass.scala 18:40:@586.4]
  assign _T_1506 = $signed(registerchain1_12_real) + $signed(_GEN_24); // @[SIntTypeClass.scala 18:40:@587.4]
  assign _T_1507 = $signed(_T_1506); // @[SIntTypeClass.scala 18:40:@588.4]
  assign _T_1508 = $signed(registerchain1_12_imag) + $signed(_GEN_25); // @[SIntTypeClass.scala 18:40:@589.4]
  assign _T_1509 = $signed(registerchain1_12_imag) + $signed(_GEN_25); // @[SIntTypeClass.scala 18:40:@590.4]
  assign _T_1510 = $signed(_T_1509); // @[SIntTypeClass.scala 18:40:@591.4]
  assign _T_1519 = $signed(registerchain1_13_real) + $signed(_GEN_22); // @[SIntTypeClass.scala 18:40:@597.4]
  assign _T_1520 = $signed(registerchain1_13_real) + $signed(_GEN_22); // @[SIntTypeClass.scala 18:40:@598.4]
  assign _T_1521 = $signed(_T_1520); // @[SIntTypeClass.scala 18:40:@599.4]
  assign _T_1522 = $signed(registerchain1_13_imag) + $signed(_GEN_23); // @[SIntTypeClass.scala 18:40:@600.4]
  assign _T_1523 = $signed(registerchain1_13_imag) + $signed(_GEN_23); // @[SIntTypeClass.scala 18:40:@601.4]
  assign _T_1524 = $signed(_T_1523); // @[SIntTypeClass.scala 18:40:@602.4]
  assign _T_1533 = $signed(registerchain1_14_real) + $signed(_GEN_20); // @[SIntTypeClass.scala 18:40:@608.4]
  assign _T_1534 = $signed(registerchain1_14_real) + $signed(_GEN_20); // @[SIntTypeClass.scala 18:40:@609.4]
  assign _T_1535 = $signed(_T_1534); // @[SIntTypeClass.scala 18:40:@610.4]
  assign _T_1536 = $signed(registerchain1_14_imag) + $signed(_GEN_21); // @[SIntTypeClass.scala 18:40:@611.4]
  assign _T_1537 = $signed(registerchain1_14_imag) + $signed(_GEN_21); // @[SIntTypeClass.scala 18:40:@612.4]
  assign _T_1538 = $signed(_T_1537); // @[SIntTypeClass.scala 18:40:@613.4]
  assign _GEN_44 = {{7{tapped1_0_real[24]}},tapped1_0_real}; // @[SIntTypeClass.scala 18:40:@619.4]
  assign _T_1547 = $signed(registerchain1_15_real) + $signed(_GEN_44); // @[SIntTypeClass.scala 18:40:@619.4]
  assign _T_1548 = $signed(registerchain1_15_real) + $signed(_GEN_44); // @[SIntTypeClass.scala 18:40:@620.4]
  assign _T_1549 = $signed(_T_1548); // @[SIntTypeClass.scala 18:40:@621.4]
  assign _GEN_45 = {{7{tapped1_0_imag[24]}},tapped1_0_imag}; // @[SIntTypeClass.scala 18:40:@622.4]
  assign _T_1550 = $signed(registerchain1_15_imag) + $signed(_GEN_45); // @[SIntTypeClass.scala 18:40:@622.4]
  assign _T_1551 = $signed(registerchain1_15_imag) + $signed(_GEN_45); // @[SIntTypeClass.scala 18:40:@623.4]
  assign _T_1552 = $signed(_T_1551); // @[SIntTypeClass.scala 18:40:@624.4]
  assign _T_1567 = $signed(slowregs_1_real) + $signed(slowregs_1_imag); // @[SIntTypeClass.scala 18:40:@633.4]
  assign _T_1568 = $signed(slowregs_1_real) + $signed(slowregs_1_imag); // @[SIntTypeClass.scala 18:40:@634.4]
  assign _T_1569 = $signed(_T_1568); // @[SIntTypeClass.scala 18:40:@635.4]
  assign _T_1570 = $signed(slowregs_1_imag) - $signed(slowregs_1_real); // @[SIntTypeClass.scala 28:50:@636.4]
  assign _T_1571 = $signed(slowregs_1_imag) - $signed(slowregs_1_real); // @[SIntTypeClass.scala 28:50:@637.4]
  assign _T_1572 = $signed(_T_1571); // @[SIntTypeClass.scala 28:50:@638.4]
  assign _T_1573 = $signed(slowregs_1_real) * $signed(16'sh0); // @[SIntTypeClass.scala 44:41:@639.4]
  assign _T_1574 = $signed(_T_1569) * $signed(16'sh0); // @[SIntTypeClass.scala 44:41:@640.4]
  assign _T_1575 = $signed(_T_1572) * $signed(16'sh0); // @[SIntTypeClass.scala 44:41:@641.4]
  assign _T_1576 = $signed(_T_1573) - $signed(_T_1574); // @[SIntTypeClass.scala 28:50:@642.4]
  assign _T_1577 = $signed(_T_1573) - $signed(_T_1574); // @[SIntTypeClass.scala 28:50:@643.4]
  assign tapped2_0_real = $signed(_T_1577); // @[SIntTypeClass.scala 28:50:@644.4]
  assign _T_1579 = $signed(_T_1573) + $signed(_T_1575); // @[SIntTypeClass.scala 18:40:@645.4]
  assign _T_1580 = $signed(_T_1573) + $signed(_T_1575); // @[SIntTypeClass.scala 18:40:@646.4]
  assign tapped2_0_imag = $signed(_T_1580); // @[SIntTypeClass.scala 18:40:@647.4]
  assign _T_1769 = $signed(slowregs_1_real) * $signed(16'sh7fff); // @[SIntTypeClass.scala 44:41:@786.4]
  assign _T_1771 = $signed(_T_1572) * $signed(16'sh7fff); // @[SIntTypeClass.scala 44:41:@788.4]
  assign _GEN_46 = {{15{_T_1574[16]}},_T_1574}; // @[SIntTypeClass.scala 28:50:@789.4]
  assign _T_1772 = $signed(_T_1769) - $signed(_GEN_46); // @[SIntTypeClass.scala 28:50:@789.4]
  assign _T_1773 = $signed(_T_1769) - $signed(_GEN_46); // @[SIntTypeClass.scala 28:50:@790.4]
  assign tapped2_7_real = $signed(_T_1773); // @[SIntTypeClass.scala 28:50:@791.4]
  assign _T_1775 = $signed(_T_1769) + $signed(_T_1771); // @[SIntTypeClass.scala 18:40:@792.4]
  assign _T_1776 = $signed(_T_1769) + $signed(_T_1771); // @[SIntTypeClass.scala 18:40:@793.4]
  assign tapped2_7_imag = $signed(_T_1776); // @[SIntTypeClass.scala 18:40:@794.4]
  assign _GEN_47 = {{15{tapped2_0_real[16]}},tapped2_0_real}; // @[SIntTypeClass.scala 18:40:@1029.4]
  assign _T_2593 = $signed(registerchain2_1_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1029.4]
  assign _T_2594 = $signed(registerchain2_1_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1030.4]
  assign _T_2595 = $signed(_T_2594); // @[SIntTypeClass.scala 18:40:@1031.4]
  assign _GEN_48 = {{15{tapped2_0_imag[16]}},tapped2_0_imag}; // @[SIntTypeClass.scala 18:40:@1032.4]
  assign _T_2596 = $signed(registerchain2_1_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1032.4]
  assign _T_2597 = $signed(registerchain2_1_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1033.4]
  assign _T_2598 = $signed(_T_2597); // @[SIntTypeClass.scala 18:40:@1034.4]
  assign _T_2607 = $signed(registerchain2_2_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1040.4]
  assign _T_2608 = $signed(registerchain2_2_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1041.4]
  assign _T_2609 = $signed(_T_2608); // @[SIntTypeClass.scala 18:40:@1042.4]
  assign _T_2610 = $signed(registerchain2_2_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1043.4]
  assign _T_2611 = $signed(registerchain2_2_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1044.4]
  assign _T_2612 = $signed(_T_2611); // @[SIntTypeClass.scala 18:40:@1045.4]
  assign _T_2621 = $signed(registerchain2_3_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1051.4]
  assign _T_2622 = $signed(registerchain2_3_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1052.4]
  assign _T_2623 = $signed(_T_2622); // @[SIntTypeClass.scala 18:40:@1053.4]
  assign _T_2624 = $signed(registerchain2_3_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1054.4]
  assign _T_2625 = $signed(registerchain2_3_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1055.4]
  assign _T_2626 = $signed(_T_2625); // @[SIntTypeClass.scala 18:40:@1056.4]
  assign _T_2635 = $signed(registerchain2_4_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1062.4]
  assign _T_2636 = $signed(registerchain2_4_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1063.4]
  assign _T_2637 = $signed(_T_2636); // @[SIntTypeClass.scala 18:40:@1064.4]
  assign _T_2638 = $signed(registerchain2_4_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1065.4]
  assign _T_2639 = $signed(registerchain2_4_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1066.4]
  assign _T_2640 = $signed(_T_2639); // @[SIntTypeClass.scala 18:40:@1067.4]
  assign _T_2649 = $signed(registerchain2_5_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1073.4]
  assign _T_2650 = $signed(registerchain2_5_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1074.4]
  assign _T_2651 = $signed(_T_2650); // @[SIntTypeClass.scala 18:40:@1075.4]
  assign _T_2652 = $signed(registerchain2_5_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1076.4]
  assign _T_2653 = $signed(registerchain2_5_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1077.4]
  assign _T_2654 = $signed(_T_2653); // @[SIntTypeClass.scala 18:40:@1078.4]
  assign _T_2663 = $signed(registerchain2_6_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1084.4]
  assign _T_2664 = $signed(registerchain2_6_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1085.4]
  assign _T_2665 = $signed(_T_2664); // @[SIntTypeClass.scala 18:40:@1086.4]
  assign _T_2666 = $signed(registerchain2_6_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1087.4]
  assign _T_2667 = $signed(registerchain2_6_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1088.4]
  assign _T_2668 = $signed(_T_2667); // @[SIntTypeClass.scala 18:40:@1089.4]
  assign _T_2677 = $signed(registerchain2_7_real) + $signed(tapped2_7_real); // @[SIntTypeClass.scala 18:40:@1095.4]
  assign _T_2678 = $signed(registerchain2_7_real) + $signed(tapped2_7_real); // @[SIntTypeClass.scala 18:40:@1096.4]
  assign _T_2679 = $signed(_T_2678); // @[SIntTypeClass.scala 18:40:@1097.4]
  assign _T_2680 = $signed(registerchain2_7_imag) + $signed(tapped2_7_imag); // @[SIntTypeClass.scala 18:40:@1098.4]
  assign _T_2681 = $signed(registerchain2_7_imag) + $signed(tapped2_7_imag); // @[SIntTypeClass.scala 18:40:@1099.4]
  assign _T_2682 = $signed(_T_2681); // @[SIntTypeClass.scala 18:40:@1100.4]
  assign _T_2691 = $signed(registerchain2_8_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1106.4]
  assign _T_2692 = $signed(registerchain2_8_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1107.4]
  assign _T_2693 = $signed(_T_2692); // @[SIntTypeClass.scala 18:40:@1108.4]
  assign _T_2694 = $signed(registerchain2_8_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1109.4]
  assign _T_2695 = $signed(registerchain2_8_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1110.4]
  assign _T_2696 = $signed(_T_2695); // @[SIntTypeClass.scala 18:40:@1111.4]
  assign _T_2705 = $signed(registerchain2_9_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1117.4]
  assign _T_2706 = $signed(registerchain2_9_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1118.4]
  assign _T_2707 = $signed(_T_2706); // @[SIntTypeClass.scala 18:40:@1119.4]
  assign _T_2708 = $signed(registerchain2_9_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1120.4]
  assign _T_2709 = $signed(registerchain2_9_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1121.4]
  assign _T_2710 = $signed(_T_2709); // @[SIntTypeClass.scala 18:40:@1122.4]
  assign _T_2719 = $signed(registerchain2_10_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1128.4]
  assign _T_2720 = $signed(registerchain2_10_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1129.4]
  assign _T_2721 = $signed(_T_2720); // @[SIntTypeClass.scala 18:40:@1130.4]
  assign _T_2722 = $signed(registerchain2_10_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1131.4]
  assign _T_2723 = $signed(registerchain2_10_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1132.4]
  assign _T_2724 = $signed(_T_2723); // @[SIntTypeClass.scala 18:40:@1133.4]
  assign _T_2733 = $signed(registerchain2_11_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1139.4]
  assign _T_2734 = $signed(registerchain2_11_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1140.4]
  assign _T_2735 = $signed(_T_2734); // @[SIntTypeClass.scala 18:40:@1141.4]
  assign _T_2736 = $signed(registerchain2_11_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1142.4]
  assign _T_2737 = $signed(registerchain2_11_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1143.4]
  assign _T_2738 = $signed(_T_2737); // @[SIntTypeClass.scala 18:40:@1144.4]
  assign _T_2747 = $signed(registerchain2_12_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1150.4]
  assign _T_2748 = $signed(registerchain2_12_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1151.4]
  assign _T_2749 = $signed(_T_2748); // @[SIntTypeClass.scala 18:40:@1152.4]
  assign _T_2750 = $signed(registerchain2_12_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1153.4]
  assign _T_2751 = $signed(registerchain2_12_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1154.4]
  assign _T_2752 = $signed(_T_2751); // @[SIntTypeClass.scala 18:40:@1155.4]
  assign _T_2761 = $signed(registerchain2_13_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1161.4]
  assign _T_2762 = $signed(registerchain2_13_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1162.4]
  assign _T_2763 = $signed(_T_2762); // @[SIntTypeClass.scala 18:40:@1163.4]
  assign _T_2764 = $signed(registerchain2_13_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1164.4]
  assign _T_2765 = $signed(registerchain2_13_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1165.4]
  assign _T_2766 = $signed(_T_2765); // @[SIntTypeClass.scala 18:40:@1166.4]
  assign _T_2775 = $signed(registerchain2_14_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1172.4]
  assign _T_2776 = $signed(registerchain2_14_real) + $signed(_GEN_47); // @[SIntTypeClass.scala 18:40:@1173.4]
  assign _T_2777 = $signed(_T_2776); // @[SIntTypeClass.scala 18:40:@1174.4]
  assign _T_2778 = $signed(registerchain2_14_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1175.4]
  assign _T_2779 = $signed(registerchain2_14_imag) + $signed(_GEN_48); // @[SIntTypeClass.scala 18:40:@1176.4]
  assign _T_2780 = $signed(_T_2779); // @[SIntTypeClass.scala 18:40:@1177.4]
  assign _T_2812 = {1'b0,$signed(io_scale)}; // @[halfband_interpolator.scala 64:41:@1194.6]
  assign _GEN_73 = {{21{_T_2812[10]}},_T_2812}; // @[halfband_interpolator.scala 64:41:@1195.6]
  assign _T_2813 = $signed(registerchain1_16_real) * $signed(_GEN_73); // @[halfband_interpolator.scala 64:41:@1195.6]
  assign _T_2814 = _T_2813[41:0]; // @[halfband_interpolator.scala 64:41:@1196.6]
  assign _T_2815 = $signed(_T_2814); // @[halfband_interpolator.scala 64:41:@1197.6]
  assign _T_2816 = _T_2815[31:16]; // @[halfband_interpolator.scala 64:51:@1198.6]
  assign _T_2817 = $signed(_T_2816); // @[halfband_interpolator.scala 64:79:@1199.6]
  assign _T_2819 = $signed(registerchain1_16_imag) * $signed(_GEN_73); // @[halfband_interpolator.scala 65:41:@1202.6]
  assign _T_2820 = _T_2819[41:0]; // @[halfband_interpolator.scala 65:41:@1203.6]
  assign _T_2821 = $signed(_T_2820); // @[halfband_interpolator.scala 65:41:@1204.6]
  assign _T_2822 = _T_2821[31:16]; // @[halfband_interpolator.scala 65:51:@1205.6]
  assign _T_2823 = $signed(_T_2822); // @[halfband_interpolator.scala 65:79:@1206.6]
  assign _T_2825 = _T_2809 == 1'h0; // @[halfband_interpolator.scala 66:27:@1210.6]
  assign _T_2827 = $signed(registerchain2_15_real) * $signed(_GEN_73); // @[halfband_interpolator.scala 67:41:@1213.8]
  assign _T_2828 = _T_2827[41:0]; // @[halfband_interpolator.scala 67:41:@1214.8]
  assign _T_2829 = $signed(_T_2828); // @[halfband_interpolator.scala 67:41:@1215.8]
  assign _T_2830 = _T_2829[31:16]; // @[halfband_interpolator.scala 67:51:@1216.8]
  assign _T_2831 = $signed(_T_2830); // @[halfband_interpolator.scala 67:79:@1217.8]
  assign _T_2833 = $signed(registerchain2_15_imag) * $signed(_GEN_73); // @[halfband_interpolator.scala 68:41:@1220.8]
  assign _T_2834 = _T_2833[41:0]; // @[halfband_interpolator.scala 68:41:@1221.8]
  assign _T_2835 = $signed(_T_2834); // @[halfband_interpolator.scala 68:41:@1222.8]
  assign _T_2836 = _T_2835[31:16]; // @[halfband_interpolator.scala 68:51:@1223.8]
  assign _T_2837 = $signed(_T_2836); // @[halfband_interpolator.scala 68:79:@1224.8]
  assign _GEN_0 = _T_2825 ? $signed(_T_2831) : $signed(_T_2804_real); // @[halfband_interpolator.scala 66:39:@1211.6]
  assign _GEN_1 = _T_2825 ? $signed(_T_2837) : $signed(_T_2804_imag); // @[halfband_interpolator.scala 66:39:@1211.6]
  assign _GEN_2 = _T_2809 ? $signed(_T_2817) : $signed(_GEN_0); // @[halfband_interpolator.scala 63:32:@1193.4]
  assign _GEN_3 = _T_2809 ? $signed(_T_2823) : $signed(_GEN_1); // @[halfband_interpolator.scala 63:32:@1193.4]
  assign io_Z_real = _T_2804_real; // @[halfband_interpolator.scala 70:13:@1228.4]
  assign io_Z_imag = _T_2804_imag; // @[halfband_interpolator.scala 70:13:@1227.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  inregs_0_real = _RAND_0[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  inregs_0_imag = _RAND_1[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  inregs_1_real = _RAND_2[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  inregs_1_imag = _RAND_3[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  slowregs_0_real = _RAND_4[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  slowregs_0_imag = _RAND_5[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  slowregs_1_real = _RAND_6[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  slowregs_1_imag = _RAND_7[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  registerchain1_1_real = _RAND_8[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  registerchain1_1_imag = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  registerchain1_2_real = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  registerchain1_2_imag = _RAND_11[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  registerchain1_3_real = _RAND_12[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  registerchain1_3_imag = _RAND_13[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  registerchain1_4_real = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  registerchain1_4_imag = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  registerchain1_5_real = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  registerchain1_5_imag = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  registerchain1_6_real = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  registerchain1_6_imag = _RAND_19[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  registerchain1_7_real = _RAND_20[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  registerchain1_7_imag = _RAND_21[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  registerchain1_8_real = _RAND_22[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  registerchain1_8_imag = _RAND_23[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  registerchain1_9_real = _RAND_24[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  registerchain1_9_imag = _RAND_25[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  registerchain1_10_real = _RAND_26[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  registerchain1_10_imag = _RAND_27[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  registerchain1_11_real = _RAND_28[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  registerchain1_11_imag = _RAND_29[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  registerchain1_12_real = _RAND_30[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  registerchain1_12_imag = _RAND_31[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  registerchain1_13_real = _RAND_32[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  registerchain1_13_imag = _RAND_33[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  registerchain1_14_real = _RAND_34[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  registerchain1_14_imag = _RAND_35[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  registerchain1_15_real = _RAND_36[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  registerchain1_15_imag = _RAND_37[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  registerchain1_16_real = _RAND_38[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  registerchain1_16_imag = _RAND_39[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  registerchain2_1_real = _RAND_40[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  registerchain2_1_imag = _RAND_41[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  registerchain2_2_real = _RAND_42[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  registerchain2_2_imag = _RAND_43[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  registerchain2_3_real = _RAND_44[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  registerchain2_3_imag = _RAND_45[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  registerchain2_4_real = _RAND_46[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  registerchain2_4_imag = _RAND_47[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  registerchain2_5_real = _RAND_48[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  registerchain2_5_imag = _RAND_49[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  registerchain2_6_real = _RAND_50[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  registerchain2_6_imag = _RAND_51[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  registerchain2_7_real = _RAND_52[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  registerchain2_7_imag = _RAND_53[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  registerchain2_8_real = _RAND_54[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  registerchain2_8_imag = _RAND_55[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  registerchain2_9_real = _RAND_56[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  registerchain2_9_imag = _RAND_57[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  registerchain2_10_real = _RAND_58[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  registerchain2_10_imag = _RAND_59[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  registerchain2_11_real = _RAND_60[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  registerchain2_11_imag = _RAND_61[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  registerchain2_12_real = _RAND_62[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  registerchain2_12_imag = _RAND_63[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  registerchain2_13_real = _RAND_64[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  registerchain2_13_imag = _RAND_65[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  registerchain2_14_real = _RAND_66[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  registerchain2_14_imag = _RAND_67[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  registerchain2_15_real = _RAND_68[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  registerchain2_15_imag = _RAND_69[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{`RANDOM}};
  _T_2804_real = _RAND_70[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{`RANDOM}};
  _T_2804_imag = _RAND_71[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{`RANDOM}};
  _T_2809 = _RAND_72[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      inregs_0_real <= 16'sh0;
    end else begin
      inregs_0_real <= io_iptr_A_real;
    end
    if (reset) begin
      inregs_0_imag <= 16'sh0;
    end else begin
      inregs_0_imag <= io_iptr_A_imag;
    end
    if (reset) begin
      inregs_1_real <= 16'sh0;
    end else begin
      inregs_1_real <= io_iptr_A_real;
    end
    if (reset) begin
      inregs_1_imag <= 16'sh0;
    end else begin
      inregs_1_imag <= io_iptr_A_imag;
    end
    if (reset) begin
      slowregs_0_real <= 16'sh0;
    end else begin
      slowregs_0_real <= inregs_0_real;
    end
    if (reset) begin
      slowregs_0_imag <= 16'sh0;
    end else begin
      slowregs_0_imag <= inregs_0_imag;
    end
    if (reset) begin
      slowregs_1_real <= 16'sh0;
    end else begin
      slowregs_1_real <= inregs_1_real;
    end
    if (reset) begin
      slowregs_1_imag <= 16'sh0;
    end else begin
      slowregs_1_imag <= inregs_1_imag;
    end
    if (reset) begin
      registerchain1_1_real <= 32'sh0;
    end else begin
      registerchain1_1_real <= {{7{tapped1_0_real[24]}},tapped1_0_real};
    end
    if (reset) begin
      registerchain1_1_imag <= 32'sh0;
    end else begin
      registerchain1_1_imag <= {{7{tapped1_0_imag[24]}},tapped1_0_imag};
    end
    if (reset) begin
      registerchain1_2_real <= 32'sh0;
    end else begin
      registerchain1_2_real <= _T_1353;
    end
    if (reset) begin
      registerchain1_2_imag <= 32'sh0;
    end else begin
      registerchain1_2_imag <= _T_1356;
    end
    if (reset) begin
      registerchain1_3_real <= 32'sh0;
    end else begin
      registerchain1_3_real <= _T_1367;
    end
    if (reset) begin
      registerchain1_3_imag <= 32'sh0;
    end else begin
      registerchain1_3_imag <= _T_1370;
    end
    if (reset) begin
      registerchain1_4_real <= 32'sh0;
    end else begin
      registerchain1_4_real <= _T_1381;
    end
    if (reset) begin
      registerchain1_4_imag <= 32'sh0;
    end else begin
      registerchain1_4_imag <= _T_1384;
    end
    if (reset) begin
      registerchain1_5_real <= 32'sh0;
    end else begin
      registerchain1_5_real <= _T_1395;
    end
    if (reset) begin
      registerchain1_5_imag <= 32'sh0;
    end else begin
      registerchain1_5_imag <= _T_1398;
    end
    if (reset) begin
      registerchain1_6_real <= 32'sh0;
    end else begin
      registerchain1_6_real <= _T_1409;
    end
    if (reset) begin
      registerchain1_6_imag <= 32'sh0;
    end else begin
      registerchain1_6_imag <= _T_1412;
    end
    if (reset) begin
      registerchain1_7_real <= 32'sh0;
    end else begin
      registerchain1_7_real <= _T_1423;
    end
    if (reset) begin
      registerchain1_7_imag <= 32'sh0;
    end else begin
      registerchain1_7_imag <= _T_1426;
    end
    if (reset) begin
      registerchain1_8_real <= 32'sh0;
    end else begin
      registerchain1_8_real <= _T_1437;
    end
    if (reset) begin
      registerchain1_8_imag <= 32'sh0;
    end else begin
      registerchain1_8_imag <= _T_1440;
    end
    if (reset) begin
      registerchain1_9_real <= 32'sh0;
    end else begin
      registerchain1_9_real <= _T_1451;
    end
    if (reset) begin
      registerchain1_9_imag <= 32'sh0;
    end else begin
      registerchain1_9_imag <= _T_1454;
    end
    if (reset) begin
      registerchain1_10_real <= 32'sh0;
    end else begin
      registerchain1_10_real <= _T_1465;
    end
    if (reset) begin
      registerchain1_10_imag <= 32'sh0;
    end else begin
      registerchain1_10_imag <= _T_1468;
    end
    if (reset) begin
      registerchain1_11_real <= 32'sh0;
    end else begin
      registerchain1_11_real <= _T_1479;
    end
    if (reset) begin
      registerchain1_11_imag <= 32'sh0;
    end else begin
      registerchain1_11_imag <= _T_1482;
    end
    if (reset) begin
      registerchain1_12_real <= 32'sh0;
    end else begin
      registerchain1_12_real <= _T_1493;
    end
    if (reset) begin
      registerchain1_12_imag <= 32'sh0;
    end else begin
      registerchain1_12_imag <= _T_1496;
    end
    if (reset) begin
      registerchain1_13_real <= 32'sh0;
    end else begin
      registerchain1_13_real <= _T_1507;
    end
    if (reset) begin
      registerchain1_13_imag <= 32'sh0;
    end else begin
      registerchain1_13_imag <= _T_1510;
    end
    if (reset) begin
      registerchain1_14_real <= 32'sh0;
    end else begin
      registerchain1_14_real <= _T_1521;
    end
    if (reset) begin
      registerchain1_14_imag <= 32'sh0;
    end else begin
      registerchain1_14_imag <= _T_1524;
    end
    if (reset) begin
      registerchain1_15_real <= 32'sh0;
    end else begin
      registerchain1_15_real <= _T_1535;
    end
    if (reset) begin
      registerchain1_15_imag <= 32'sh0;
    end else begin
      registerchain1_15_imag <= _T_1538;
    end
    if (reset) begin
      registerchain1_16_real <= 32'sh0;
    end else begin
      registerchain1_16_real <= _T_1549;
    end
    if (reset) begin
      registerchain1_16_imag <= 32'sh0;
    end else begin
      registerchain1_16_imag <= _T_1552;
    end
    if (reset) begin
      registerchain2_1_real <= 32'sh0;
    end else begin
      registerchain2_1_real <= {{15{tapped2_0_real[16]}},tapped2_0_real};
    end
    if (reset) begin
      registerchain2_1_imag <= 32'sh0;
    end else begin
      registerchain2_1_imag <= {{15{tapped2_0_imag[16]}},tapped2_0_imag};
    end
    if (reset) begin
      registerchain2_2_real <= 32'sh0;
    end else begin
      registerchain2_2_real <= _T_2595;
    end
    if (reset) begin
      registerchain2_2_imag <= 32'sh0;
    end else begin
      registerchain2_2_imag <= _T_2598;
    end
    if (reset) begin
      registerchain2_3_real <= 32'sh0;
    end else begin
      registerchain2_3_real <= _T_2609;
    end
    if (reset) begin
      registerchain2_3_imag <= 32'sh0;
    end else begin
      registerchain2_3_imag <= _T_2612;
    end
    if (reset) begin
      registerchain2_4_real <= 32'sh0;
    end else begin
      registerchain2_4_real <= _T_2623;
    end
    if (reset) begin
      registerchain2_4_imag <= 32'sh0;
    end else begin
      registerchain2_4_imag <= _T_2626;
    end
    if (reset) begin
      registerchain2_5_real <= 32'sh0;
    end else begin
      registerchain2_5_real <= _T_2637;
    end
    if (reset) begin
      registerchain2_5_imag <= 32'sh0;
    end else begin
      registerchain2_5_imag <= _T_2640;
    end
    if (reset) begin
      registerchain2_6_real <= 32'sh0;
    end else begin
      registerchain2_6_real <= _T_2651;
    end
    if (reset) begin
      registerchain2_6_imag <= 32'sh0;
    end else begin
      registerchain2_6_imag <= _T_2654;
    end
    if (reset) begin
      registerchain2_7_real <= 32'sh0;
    end else begin
      registerchain2_7_real <= _T_2665;
    end
    if (reset) begin
      registerchain2_7_imag <= 32'sh0;
    end else begin
      registerchain2_7_imag <= _T_2668;
    end
    if (reset) begin
      registerchain2_8_real <= 32'sh0;
    end else begin
      registerchain2_8_real <= _T_2679;
    end
    if (reset) begin
      registerchain2_8_imag <= 32'sh0;
    end else begin
      registerchain2_8_imag <= _T_2682;
    end
    if (reset) begin
      registerchain2_9_real <= 32'sh0;
    end else begin
      registerchain2_9_real <= _T_2693;
    end
    if (reset) begin
      registerchain2_9_imag <= 32'sh0;
    end else begin
      registerchain2_9_imag <= _T_2696;
    end
    if (reset) begin
      registerchain2_10_real <= 32'sh0;
    end else begin
      registerchain2_10_real <= _T_2707;
    end
    if (reset) begin
      registerchain2_10_imag <= 32'sh0;
    end else begin
      registerchain2_10_imag <= _T_2710;
    end
    if (reset) begin
      registerchain2_11_real <= 32'sh0;
    end else begin
      registerchain2_11_real <= _T_2721;
    end
    if (reset) begin
      registerchain2_11_imag <= 32'sh0;
    end else begin
      registerchain2_11_imag <= _T_2724;
    end
    if (reset) begin
      registerchain2_12_real <= 32'sh0;
    end else begin
      registerchain2_12_real <= _T_2735;
    end
    if (reset) begin
      registerchain2_12_imag <= 32'sh0;
    end else begin
      registerchain2_12_imag <= _T_2738;
    end
    if (reset) begin
      registerchain2_13_real <= 32'sh0;
    end else begin
      registerchain2_13_real <= _T_2749;
    end
    if (reset) begin
      registerchain2_13_imag <= 32'sh0;
    end else begin
      registerchain2_13_imag <= _T_2752;
    end
    if (reset) begin
      registerchain2_14_real <= 32'sh0;
    end else begin
      registerchain2_14_real <= _T_2763;
    end
    if (reset) begin
      registerchain2_14_imag <= 32'sh0;
    end else begin
      registerchain2_14_imag <= _T_2766;
    end
    if (reset) begin
      registerchain2_15_real <= 32'sh0;
    end else begin
      registerchain2_15_real <= _T_2777;
    end
    if (reset) begin
      registerchain2_15_imag <= 32'sh0;
    end else begin
      registerchain2_15_imag <= _T_2780;
    end
  end
  always @(posedge io_clock_high) begin
    if (reset) begin
      _T_2804_real <= 16'sh0;
    end else begin
      if (_T_2809) begin
        _T_2804_real <= _T_2817;
      end else begin
        if (_T_2825) begin
          _T_2804_real <= _T_2831;
        end
      end
    end
    if (reset) begin
      _T_2804_imag <= 16'sh0;
    end else begin
      if (_T_2809) begin
        _T_2804_imag <= _T_2823;
      end else begin
        if (_T_2825) begin
          _T_2804_imag <= _T_2837;
        end
      end
    end
    _T_2809 <= $unsigned(clock);
  end
endmodule
