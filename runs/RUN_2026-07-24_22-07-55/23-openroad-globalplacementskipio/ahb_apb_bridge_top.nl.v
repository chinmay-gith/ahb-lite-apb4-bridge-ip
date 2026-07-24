module ahb_apb_bridge_top (HCLK,
    HREADY,
    HREADYOUT,
    HRESETn,
    HRESP,
    HWRITE,
    PENABLE,
    PREADY,
    PSLVERR,
    PWRITE,
    HADDR,
    HRDATA,
    HTRANS,
    HWDATA,
    PADDR,
    PRDATA,
    PSEL,
    PWDATA);
 input HCLK;
 input HREADY;
 output HREADYOUT;
 input HRESETn;
 output HRESP;
 input HWRITE;
 output PENABLE;
 input PREADY;
 input PSLVERR;
 output PWRITE;
 input [31:0] HADDR;
 output [31:0] HRDATA;
 input [1:0] HTRANS;
 input [31:0] HWDATA;
 output [31:0] PADDR;
 input [31:0] PRDATA;
 output [3:0] PSEL;
 output [31:0] PWDATA;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire \u_bridge_fsm.state[0] ;
 wire \u_bridge_fsm.state[1] ;

 sky130_fd_sc_hd__inv_2 _072_ (.A(PREADY),
    .Y(_067_));
 sky130_fd_sc_hd__inv_2 _073_ (.A(\u_bridge_fsm.state[1] ),
    .Y(_068_));
 sky130_fd_sc_hd__and2_2 _074_ (.A(\u_bridge_fsm.state[0] ),
    .B(\u_bridge_fsm.state[1] ),
    .X(HRESP));
 sky130_fd_sc_hd__nor2_2 _075_ (.A(\u_bridge_fsm.state[0] ),
    .B(\u_bridge_fsm.state[1] ),
    .Y(_069_));
 sky130_fd_sc_hd__xor2_2 _076_ (.A(\u_bridge_fsm.state[0] ),
    .B(\u_bridge_fsm.state[1] ),
    .X(_070_));
 sky130_fd_sc_hd__nor3b_2 _077_ (.A(PADDR[12]),
    .B(PADDR[13]),
    .C_N(_070_),
    .Y(PSEL[0]));
 sky130_fd_sc_hd__and3b_2 _078_ (.A_N(PADDR[13]),
    .B(_070_),
    .C(PADDR[12]),
    .X(PSEL[1]));
 sky130_fd_sc_hd__and3b_2 _079_ (.A_N(PADDR[12]),
    .B(PADDR[13]),
    .C(_070_),
    .X(PSEL[2]));
 sky130_fd_sc_hd__and3_2 _080_ (.A(PADDR[12]),
    .B(PADDR[13]),
    .C(_070_),
    .X(PSEL[3]));
 sky130_fd_sc_hd__o21ai_2 _081_ (.A1(_067_),
    .A2(\u_bridge_fsm.state[0] ),
    .B1(_070_),
    .Y(HREADYOUT));
 sky130_fd_sc_hd__and2b_2 _082_ (.A_N(\u_bridge_fsm.state[0] ),
    .B(\u_bridge_fsm.state[1] ),
    .X(PENABLE));
 sky130_fd_sc_hd__nand2_2 _083_ (.A(HTRANS[1]),
    .B(HREADY),
    .Y(_071_));
 sky130_fd_sc_hd__mux2_1 _084_ (.A0(HADDR[0]),
    .A1(PADDR[0]),
    .S(_071_),
    .X(_000_));
 sky130_fd_sc_hd__mux2_1 _085_ (.A0(HADDR[1]),
    .A1(PADDR[1]),
    .S(_071_),
    .X(_001_));
 sky130_fd_sc_hd__mux2_1 _086_ (.A0(HADDR[2]),
    .A1(PADDR[2]),
    .S(_071_),
    .X(_002_));
 sky130_fd_sc_hd__mux2_1 _087_ (.A0(HADDR[3]),
    .A1(PADDR[3]),
    .S(_071_),
    .X(_003_));
 sky130_fd_sc_hd__mux2_1 _088_ (.A0(HADDR[4]),
    .A1(PADDR[4]),
    .S(_071_),
    .X(_004_));
 sky130_fd_sc_hd__mux2_1 _089_ (.A0(HADDR[5]),
    .A1(PADDR[5]),
    .S(_071_),
    .X(_005_));
 sky130_fd_sc_hd__mux2_1 _090_ (.A0(HADDR[6]),
    .A1(PADDR[6]),
    .S(_071_),
    .X(_006_));
 sky130_fd_sc_hd__mux2_1 _091_ (.A0(HADDR[7]),
    .A1(PADDR[7]),
    .S(_071_),
    .X(_007_));
 sky130_fd_sc_hd__mux2_1 _092_ (.A0(HADDR[8]),
    .A1(PADDR[8]),
    .S(_071_),
    .X(_008_));
 sky130_fd_sc_hd__mux2_1 _093_ (.A0(HADDR[9]),
    .A1(PADDR[9]),
    .S(_071_),
    .X(_009_));
 sky130_fd_sc_hd__mux2_1 _094_ (.A0(HADDR[10]),
    .A1(PADDR[10]),
    .S(_071_),
    .X(_010_));
 sky130_fd_sc_hd__mux2_1 _095_ (.A0(HADDR[11]),
    .A1(PADDR[11]),
    .S(_071_),
    .X(_011_));
 sky130_fd_sc_hd__mux2_1 _096_ (.A0(HADDR[12]),
    .A1(PADDR[12]),
    .S(_071_),
    .X(_012_));
 sky130_fd_sc_hd__mux2_1 _097_ (.A0(HADDR[13]),
    .A1(PADDR[13]),
    .S(_071_),
    .X(_013_));
 sky130_fd_sc_hd__mux2_1 _098_ (.A0(HADDR[14]),
    .A1(PADDR[14]),
    .S(_071_),
    .X(_014_));
 sky130_fd_sc_hd__mux2_1 _099_ (.A0(HADDR[15]),
    .A1(PADDR[15]),
    .S(_071_),
    .X(_015_));
 sky130_fd_sc_hd__mux2_1 _100_ (.A0(HADDR[16]),
    .A1(PADDR[16]),
    .S(_071_),
    .X(_016_));
 sky130_fd_sc_hd__mux2_1 _101_ (.A0(HADDR[17]),
    .A1(PADDR[17]),
    .S(_071_),
    .X(_017_));
 sky130_fd_sc_hd__mux2_1 _102_ (.A0(HADDR[18]),
    .A1(PADDR[18]),
    .S(_071_),
    .X(_018_));
 sky130_fd_sc_hd__mux2_1 _103_ (.A0(HADDR[19]),
    .A1(PADDR[19]),
    .S(_071_),
    .X(_019_));
 sky130_fd_sc_hd__mux2_1 _104_ (.A0(HADDR[20]),
    .A1(PADDR[20]),
    .S(_071_),
    .X(_020_));
 sky130_fd_sc_hd__mux2_1 _105_ (.A0(HADDR[21]),
    .A1(PADDR[21]),
    .S(_071_),
    .X(_021_));
 sky130_fd_sc_hd__mux2_1 _106_ (.A0(HADDR[22]),
    .A1(PADDR[22]),
    .S(_071_),
    .X(_022_));
 sky130_fd_sc_hd__mux2_1 _107_ (.A0(HADDR[23]),
    .A1(PADDR[23]),
    .S(_071_),
    .X(_023_));
 sky130_fd_sc_hd__mux2_1 _108_ (.A0(HADDR[24]),
    .A1(PADDR[24]),
    .S(_071_),
    .X(_024_));
 sky130_fd_sc_hd__mux2_1 _109_ (.A0(HADDR[25]),
    .A1(PADDR[25]),
    .S(_071_),
    .X(_025_));
 sky130_fd_sc_hd__mux2_1 _110_ (.A0(HADDR[26]),
    .A1(PADDR[26]),
    .S(_071_),
    .X(_026_));
 sky130_fd_sc_hd__mux2_1 _111_ (.A0(HADDR[27]),
    .A1(PADDR[27]),
    .S(_071_),
    .X(_027_));
 sky130_fd_sc_hd__mux2_1 _112_ (.A0(HADDR[28]),
    .A1(PADDR[28]),
    .S(_071_),
    .X(_028_));
 sky130_fd_sc_hd__mux2_1 _113_ (.A0(HADDR[29]),
    .A1(PADDR[29]),
    .S(_071_),
    .X(_029_));
 sky130_fd_sc_hd__mux2_1 _114_ (.A0(HADDR[30]),
    .A1(PADDR[30]),
    .S(_071_),
    .X(_030_));
 sky130_fd_sc_hd__mux2_1 _115_ (.A0(HADDR[31]),
    .A1(PADDR[31]),
    .S(_071_),
    .X(_031_));
 sky130_fd_sc_hd__mux2_1 _116_ (.A0(HWDATA[0]),
    .A1(PWDATA[0]),
    .S(_071_),
    .X(_032_));
 sky130_fd_sc_hd__mux2_1 _117_ (.A0(HWDATA[1]),
    .A1(PWDATA[1]),
    .S(_071_),
    .X(_033_));
 sky130_fd_sc_hd__mux2_1 _118_ (.A0(HWDATA[2]),
    .A1(PWDATA[2]),
    .S(_071_),
    .X(_034_));
 sky130_fd_sc_hd__mux2_1 _119_ (.A0(HWDATA[3]),
    .A1(PWDATA[3]),
    .S(_071_),
    .X(_035_));
 sky130_fd_sc_hd__mux2_1 _120_ (.A0(HWDATA[4]),
    .A1(PWDATA[4]),
    .S(_071_),
    .X(_036_));
 sky130_fd_sc_hd__mux2_1 _121_ (.A0(HWDATA[5]),
    .A1(PWDATA[5]),
    .S(_071_),
    .X(_037_));
 sky130_fd_sc_hd__mux2_1 _122_ (.A0(HWDATA[6]),
    .A1(PWDATA[6]),
    .S(_071_),
    .X(_038_));
 sky130_fd_sc_hd__mux2_1 _123_ (.A0(HWDATA[7]),
    .A1(PWDATA[7]),
    .S(_071_),
    .X(_039_));
 sky130_fd_sc_hd__mux2_1 _124_ (.A0(HWDATA[8]),
    .A1(PWDATA[8]),
    .S(_071_),
    .X(_040_));
 sky130_fd_sc_hd__mux2_1 _125_ (.A0(HWDATA[9]),
    .A1(PWDATA[9]),
    .S(_071_),
    .X(_041_));
 sky130_fd_sc_hd__mux2_1 _126_ (.A0(HWDATA[10]),
    .A1(PWDATA[10]),
    .S(_071_),
    .X(_042_));
 sky130_fd_sc_hd__mux2_1 _127_ (.A0(HWDATA[11]),
    .A1(PWDATA[11]),
    .S(_071_),
    .X(_043_));
 sky130_fd_sc_hd__mux2_1 _128_ (.A0(HWDATA[12]),
    .A1(PWDATA[12]),
    .S(_071_),
    .X(_044_));
 sky130_fd_sc_hd__mux2_1 _129_ (.A0(HWDATA[13]),
    .A1(PWDATA[13]),
    .S(_071_),
    .X(_045_));
 sky130_fd_sc_hd__mux2_1 _130_ (.A0(HWDATA[14]),
    .A1(PWDATA[14]),
    .S(_071_),
    .X(_046_));
 sky130_fd_sc_hd__mux2_1 _131_ (.A0(HWDATA[15]),
    .A1(PWDATA[15]),
    .S(_071_),
    .X(_047_));
 sky130_fd_sc_hd__mux2_1 _132_ (.A0(HWDATA[16]),
    .A1(PWDATA[16]),
    .S(_071_),
    .X(_048_));
 sky130_fd_sc_hd__mux2_1 _133_ (.A0(HWDATA[17]),
    .A1(PWDATA[17]),
    .S(_071_),
    .X(_049_));
 sky130_fd_sc_hd__mux2_1 _134_ (.A0(HWDATA[18]),
    .A1(PWDATA[18]),
    .S(_071_),
    .X(_050_));
 sky130_fd_sc_hd__mux2_1 _135_ (.A0(HWDATA[19]),
    .A1(PWDATA[19]),
    .S(_071_),
    .X(_051_));
 sky130_fd_sc_hd__mux2_1 _136_ (.A0(HWDATA[20]),
    .A1(PWDATA[20]),
    .S(_071_),
    .X(_052_));
 sky130_fd_sc_hd__mux2_1 _137_ (.A0(HWDATA[21]),
    .A1(PWDATA[21]),
    .S(_071_),
    .X(_053_));
 sky130_fd_sc_hd__mux2_1 _138_ (.A0(HWDATA[22]),
    .A1(PWDATA[22]),
    .S(_071_),
    .X(_054_));
 sky130_fd_sc_hd__mux2_1 _139_ (.A0(HWDATA[23]),
    .A1(PWDATA[23]),
    .S(_071_),
    .X(_055_));
 sky130_fd_sc_hd__mux2_1 _140_ (.A0(HWDATA[24]),
    .A1(PWDATA[24]),
    .S(_071_),
    .X(_056_));
 sky130_fd_sc_hd__mux2_1 _141_ (.A0(HWDATA[25]),
    .A1(PWDATA[25]),
    .S(_071_),
    .X(_057_));
 sky130_fd_sc_hd__mux2_1 _142_ (.A0(HWDATA[26]),
    .A1(PWDATA[26]),
    .S(_071_),
    .X(_058_));
 sky130_fd_sc_hd__mux2_1 _143_ (.A0(HWDATA[27]),
    .A1(PWDATA[27]),
    .S(_071_),
    .X(_059_));
 sky130_fd_sc_hd__mux2_1 _144_ (.A0(HWDATA[28]),
    .A1(PWDATA[28]),
    .S(_071_),
    .X(_060_));
 sky130_fd_sc_hd__mux2_1 _145_ (.A0(HWDATA[29]),
    .A1(PWDATA[29]),
    .S(_071_),
    .X(_061_));
 sky130_fd_sc_hd__mux2_1 _146_ (.A0(HWDATA[30]),
    .A1(PWDATA[30]),
    .S(_071_),
    .X(_062_));
 sky130_fd_sc_hd__mux2_1 _147_ (.A0(HWDATA[31]),
    .A1(PWDATA[31]),
    .S(_071_),
    .X(_063_));
 sky130_fd_sc_hd__mux2_1 _148_ (.A0(HWRITE),
    .A1(PWRITE),
    .S(_071_),
    .X(_064_));
 sky130_fd_sc_hd__a32o_2 _149_ (.A1(HTRANS[1]),
    .A2(HREADY),
    .A3(_069_),
    .B1(PENABLE),
    .B2(PSLVERR),
    .X(_065_));
 sky130_fd_sc_hd__o31a_2 _150_ (.A1(PSLVERR),
    .A2(_067_),
    .A3(_068_),
    .B1(_070_),
    .X(_066_));
 sky130_fd_sc_hd__dfrtp_2 _151_ (.CLK(HCLK),
    .D(_000_),
    .RESET_B(HRESETn),
    .Q(PADDR[0]));
 sky130_fd_sc_hd__dfrtp_2 _152_ (.CLK(HCLK),
    .D(_001_),
    .RESET_B(HRESETn),
    .Q(PADDR[1]));
 sky130_fd_sc_hd__dfrtp_2 _153_ (.CLK(HCLK),
    .D(_002_),
    .RESET_B(HRESETn),
    .Q(PADDR[2]));
 sky130_fd_sc_hd__dfrtp_2 _154_ (.CLK(HCLK),
    .D(_003_),
    .RESET_B(HRESETn),
    .Q(PADDR[3]));
 sky130_fd_sc_hd__dfrtp_2 _155_ (.CLK(HCLK),
    .D(_004_),
    .RESET_B(HRESETn),
    .Q(PADDR[4]));
 sky130_fd_sc_hd__dfrtp_2 _156_ (.CLK(HCLK),
    .D(_005_),
    .RESET_B(HRESETn),
    .Q(PADDR[5]));
 sky130_fd_sc_hd__dfrtp_2 _157_ (.CLK(HCLK),
    .D(_006_),
    .RESET_B(HRESETn),
    .Q(PADDR[6]));
 sky130_fd_sc_hd__dfrtp_2 _158_ (.CLK(HCLK),
    .D(_007_),
    .RESET_B(HRESETn),
    .Q(PADDR[7]));
 sky130_fd_sc_hd__dfrtp_2 _159_ (.CLK(HCLK),
    .D(_008_),
    .RESET_B(HRESETn),
    .Q(PADDR[8]));
 sky130_fd_sc_hd__dfrtp_2 _160_ (.CLK(HCLK),
    .D(_009_),
    .RESET_B(HRESETn),
    .Q(PADDR[9]));
 sky130_fd_sc_hd__dfrtp_2 _161_ (.CLK(HCLK),
    .D(_010_),
    .RESET_B(HRESETn),
    .Q(PADDR[10]));
 sky130_fd_sc_hd__dfrtp_2 _162_ (.CLK(HCLK),
    .D(_011_),
    .RESET_B(HRESETn),
    .Q(PADDR[11]));
 sky130_fd_sc_hd__dfrtp_2 _163_ (.CLK(HCLK),
    .D(_012_),
    .RESET_B(HRESETn),
    .Q(PADDR[12]));
 sky130_fd_sc_hd__dfrtp_2 _164_ (.CLK(HCLK),
    .D(_013_),
    .RESET_B(HRESETn),
    .Q(PADDR[13]));
 sky130_fd_sc_hd__dfrtp_2 _165_ (.CLK(HCLK),
    .D(_014_),
    .RESET_B(HRESETn),
    .Q(PADDR[14]));
 sky130_fd_sc_hd__dfrtp_2 _166_ (.CLK(HCLK),
    .D(_015_),
    .RESET_B(HRESETn),
    .Q(PADDR[15]));
 sky130_fd_sc_hd__dfrtp_2 _167_ (.CLK(HCLK),
    .D(_016_),
    .RESET_B(HRESETn),
    .Q(PADDR[16]));
 sky130_fd_sc_hd__dfrtp_2 _168_ (.CLK(HCLK),
    .D(_017_),
    .RESET_B(HRESETn),
    .Q(PADDR[17]));
 sky130_fd_sc_hd__dfrtp_2 _169_ (.CLK(HCLK),
    .D(_018_),
    .RESET_B(HRESETn),
    .Q(PADDR[18]));
 sky130_fd_sc_hd__dfrtp_2 _170_ (.CLK(HCLK),
    .D(_019_),
    .RESET_B(HRESETn),
    .Q(PADDR[19]));
 sky130_fd_sc_hd__dfrtp_2 _171_ (.CLK(HCLK),
    .D(_020_),
    .RESET_B(HRESETn),
    .Q(PADDR[20]));
 sky130_fd_sc_hd__dfrtp_2 _172_ (.CLK(HCLK),
    .D(_021_),
    .RESET_B(HRESETn),
    .Q(PADDR[21]));
 sky130_fd_sc_hd__dfrtp_2 _173_ (.CLK(HCLK),
    .D(_022_),
    .RESET_B(HRESETn),
    .Q(PADDR[22]));
 sky130_fd_sc_hd__dfrtp_2 _174_ (.CLK(HCLK),
    .D(_023_),
    .RESET_B(HRESETn),
    .Q(PADDR[23]));
 sky130_fd_sc_hd__dfrtp_2 _175_ (.CLK(HCLK),
    .D(_024_),
    .RESET_B(HRESETn),
    .Q(PADDR[24]));
 sky130_fd_sc_hd__dfrtp_2 _176_ (.CLK(HCLK),
    .D(_025_),
    .RESET_B(HRESETn),
    .Q(PADDR[25]));
 sky130_fd_sc_hd__dfrtp_2 _177_ (.CLK(HCLK),
    .D(_026_),
    .RESET_B(HRESETn),
    .Q(PADDR[26]));
 sky130_fd_sc_hd__dfrtp_2 _178_ (.CLK(HCLK),
    .D(_027_),
    .RESET_B(HRESETn),
    .Q(PADDR[27]));
 sky130_fd_sc_hd__dfrtp_2 _179_ (.CLK(HCLK),
    .D(_028_),
    .RESET_B(HRESETn),
    .Q(PADDR[28]));
 sky130_fd_sc_hd__dfrtp_2 _180_ (.CLK(HCLK),
    .D(_029_),
    .RESET_B(HRESETn),
    .Q(PADDR[29]));
 sky130_fd_sc_hd__dfrtp_2 _181_ (.CLK(HCLK),
    .D(_030_),
    .RESET_B(HRESETn),
    .Q(PADDR[30]));
 sky130_fd_sc_hd__dfrtp_2 _182_ (.CLK(HCLK),
    .D(_031_),
    .RESET_B(HRESETn),
    .Q(PADDR[31]));
 sky130_fd_sc_hd__dfrtp_2 _183_ (.CLK(HCLK),
    .D(_032_),
    .RESET_B(HRESETn),
    .Q(PWDATA[0]));
 sky130_fd_sc_hd__dfrtp_2 _184_ (.CLK(HCLK),
    .D(_033_),
    .RESET_B(HRESETn),
    .Q(PWDATA[1]));
 sky130_fd_sc_hd__dfrtp_2 _185_ (.CLK(HCLK),
    .D(_034_),
    .RESET_B(HRESETn),
    .Q(PWDATA[2]));
 sky130_fd_sc_hd__dfrtp_2 _186_ (.CLK(HCLK),
    .D(_035_),
    .RESET_B(HRESETn),
    .Q(PWDATA[3]));
 sky130_fd_sc_hd__dfrtp_2 _187_ (.CLK(HCLK),
    .D(_036_),
    .RESET_B(HRESETn),
    .Q(PWDATA[4]));
 sky130_fd_sc_hd__dfrtp_2 _188_ (.CLK(HCLK),
    .D(_037_),
    .RESET_B(HRESETn),
    .Q(PWDATA[5]));
 sky130_fd_sc_hd__dfrtp_2 _189_ (.CLK(HCLK),
    .D(_038_),
    .RESET_B(HRESETn),
    .Q(PWDATA[6]));
 sky130_fd_sc_hd__dfrtp_2 _190_ (.CLK(HCLK),
    .D(_039_),
    .RESET_B(HRESETn),
    .Q(PWDATA[7]));
 sky130_fd_sc_hd__dfrtp_2 _191_ (.CLK(HCLK),
    .D(_040_),
    .RESET_B(HRESETn),
    .Q(PWDATA[8]));
 sky130_fd_sc_hd__dfrtp_2 _192_ (.CLK(HCLK),
    .D(_041_),
    .RESET_B(HRESETn),
    .Q(PWDATA[9]));
 sky130_fd_sc_hd__dfrtp_2 _193_ (.CLK(HCLK),
    .D(_042_),
    .RESET_B(HRESETn),
    .Q(PWDATA[10]));
 sky130_fd_sc_hd__dfrtp_2 _194_ (.CLK(HCLK),
    .D(_043_),
    .RESET_B(HRESETn),
    .Q(PWDATA[11]));
 sky130_fd_sc_hd__dfrtp_2 _195_ (.CLK(HCLK),
    .D(_044_),
    .RESET_B(HRESETn),
    .Q(PWDATA[12]));
 sky130_fd_sc_hd__dfrtp_2 _196_ (.CLK(HCLK),
    .D(_045_),
    .RESET_B(HRESETn),
    .Q(PWDATA[13]));
 sky130_fd_sc_hd__dfrtp_2 _197_ (.CLK(HCLK),
    .D(_046_),
    .RESET_B(HRESETn),
    .Q(PWDATA[14]));
 sky130_fd_sc_hd__dfrtp_2 _198_ (.CLK(HCLK),
    .D(_047_),
    .RESET_B(HRESETn),
    .Q(PWDATA[15]));
 sky130_fd_sc_hd__dfrtp_2 _199_ (.CLK(HCLK),
    .D(_048_),
    .RESET_B(HRESETn),
    .Q(PWDATA[16]));
 sky130_fd_sc_hd__dfrtp_2 _200_ (.CLK(HCLK),
    .D(_049_),
    .RESET_B(HRESETn),
    .Q(PWDATA[17]));
 sky130_fd_sc_hd__dfrtp_2 _201_ (.CLK(HCLK),
    .D(_050_),
    .RESET_B(HRESETn),
    .Q(PWDATA[18]));
 sky130_fd_sc_hd__dfrtp_2 _202_ (.CLK(HCLK),
    .D(_051_),
    .RESET_B(HRESETn),
    .Q(PWDATA[19]));
 sky130_fd_sc_hd__dfrtp_2 _203_ (.CLK(HCLK),
    .D(_052_),
    .RESET_B(HRESETn),
    .Q(PWDATA[20]));
 sky130_fd_sc_hd__dfrtp_2 _204_ (.CLK(HCLK),
    .D(_053_),
    .RESET_B(HRESETn),
    .Q(PWDATA[21]));
 sky130_fd_sc_hd__dfrtp_2 _205_ (.CLK(HCLK),
    .D(_054_),
    .RESET_B(HRESETn),
    .Q(PWDATA[22]));
 sky130_fd_sc_hd__dfrtp_2 _206_ (.CLK(HCLK),
    .D(_055_),
    .RESET_B(HRESETn),
    .Q(PWDATA[23]));
 sky130_fd_sc_hd__dfrtp_2 _207_ (.CLK(HCLK),
    .D(_056_),
    .RESET_B(HRESETn),
    .Q(PWDATA[24]));
 sky130_fd_sc_hd__dfrtp_2 _208_ (.CLK(HCLK),
    .D(_057_),
    .RESET_B(HRESETn),
    .Q(PWDATA[25]));
 sky130_fd_sc_hd__dfrtp_2 _209_ (.CLK(HCLK),
    .D(_058_),
    .RESET_B(HRESETn),
    .Q(PWDATA[26]));
 sky130_fd_sc_hd__dfrtp_2 _210_ (.CLK(HCLK),
    .D(_059_),
    .RESET_B(HRESETn),
    .Q(PWDATA[27]));
 sky130_fd_sc_hd__dfrtp_2 _211_ (.CLK(HCLK),
    .D(_060_),
    .RESET_B(HRESETn),
    .Q(PWDATA[28]));
 sky130_fd_sc_hd__dfrtp_2 _212_ (.CLK(HCLK),
    .D(_061_),
    .RESET_B(HRESETn),
    .Q(PWDATA[29]));
 sky130_fd_sc_hd__dfrtp_2 _213_ (.CLK(HCLK),
    .D(_062_),
    .RESET_B(HRESETn),
    .Q(PWDATA[30]));
 sky130_fd_sc_hd__dfrtp_2 _214_ (.CLK(HCLK),
    .D(_063_),
    .RESET_B(HRESETn),
    .Q(PWDATA[31]));
 sky130_fd_sc_hd__dfrtp_2 _215_ (.CLK(HCLK),
    .D(_064_),
    .RESET_B(HRESETn),
    .Q(PWRITE));
 sky130_fd_sc_hd__dfrtp_2 _216_ (.CLK(HCLK),
    .D(_065_),
    .RESET_B(HRESETn),
    .Q(\u_bridge_fsm.state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _217_ (.CLK(HCLK),
    .D(_066_),
    .RESET_B(HRESETn),
    .Q(\u_bridge_fsm.state[1] ));
 sky130_fd_sc_hd__buf_2 _218_ (.A(PRDATA[0]),
    .X(HRDATA[0]));
 sky130_fd_sc_hd__buf_2 _219_ (.A(PRDATA[1]),
    .X(HRDATA[1]));
 sky130_fd_sc_hd__buf_2 _220_ (.A(PRDATA[2]),
    .X(HRDATA[2]));
 sky130_fd_sc_hd__buf_2 _221_ (.A(PRDATA[3]),
    .X(HRDATA[3]));
 sky130_fd_sc_hd__buf_2 _222_ (.A(PRDATA[4]),
    .X(HRDATA[4]));
 sky130_fd_sc_hd__buf_2 _223_ (.A(PRDATA[5]),
    .X(HRDATA[5]));
 sky130_fd_sc_hd__buf_2 _224_ (.A(PRDATA[6]),
    .X(HRDATA[6]));
 sky130_fd_sc_hd__buf_2 _225_ (.A(PRDATA[7]),
    .X(HRDATA[7]));
 sky130_fd_sc_hd__buf_2 _226_ (.A(PRDATA[8]),
    .X(HRDATA[8]));
 sky130_fd_sc_hd__buf_2 _227_ (.A(PRDATA[9]),
    .X(HRDATA[9]));
 sky130_fd_sc_hd__buf_2 _228_ (.A(PRDATA[10]),
    .X(HRDATA[10]));
 sky130_fd_sc_hd__buf_2 _229_ (.A(PRDATA[11]),
    .X(HRDATA[11]));
 sky130_fd_sc_hd__buf_2 _230_ (.A(PRDATA[12]),
    .X(HRDATA[12]));
 sky130_fd_sc_hd__buf_2 _231_ (.A(PRDATA[13]),
    .X(HRDATA[13]));
 sky130_fd_sc_hd__buf_2 _232_ (.A(PRDATA[14]),
    .X(HRDATA[14]));
 sky130_fd_sc_hd__buf_2 _233_ (.A(PRDATA[15]),
    .X(HRDATA[15]));
 sky130_fd_sc_hd__buf_2 _234_ (.A(PRDATA[16]),
    .X(HRDATA[16]));
 sky130_fd_sc_hd__buf_2 _235_ (.A(PRDATA[17]),
    .X(HRDATA[17]));
 sky130_fd_sc_hd__buf_2 _236_ (.A(PRDATA[18]),
    .X(HRDATA[18]));
 sky130_fd_sc_hd__buf_2 _237_ (.A(PRDATA[19]),
    .X(HRDATA[19]));
 sky130_fd_sc_hd__buf_2 _238_ (.A(PRDATA[20]),
    .X(HRDATA[20]));
 sky130_fd_sc_hd__buf_2 _239_ (.A(PRDATA[21]),
    .X(HRDATA[21]));
 sky130_fd_sc_hd__buf_2 _240_ (.A(PRDATA[22]),
    .X(HRDATA[22]));
 sky130_fd_sc_hd__buf_2 _241_ (.A(PRDATA[23]),
    .X(HRDATA[23]));
 sky130_fd_sc_hd__buf_2 _242_ (.A(PRDATA[24]),
    .X(HRDATA[24]));
 sky130_fd_sc_hd__buf_2 _243_ (.A(PRDATA[25]),
    .X(HRDATA[25]));
 sky130_fd_sc_hd__buf_2 _244_ (.A(PRDATA[26]),
    .X(HRDATA[26]));
 sky130_fd_sc_hd__buf_2 _245_ (.A(PRDATA[27]),
    .X(HRDATA[27]));
 sky130_fd_sc_hd__buf_2 _246_ (.A(PRDATA[28]),
    .X(HRDATA[28]));
 sky130_fd_sc_hd__buf_2 _247_ (.A(PRDATA[29]),
    .X(HRDATA[29]));
 sky130_fd_sc_hd__buf_2 _248_ (.A(PRDATA[30]),
    .X(HRDATA[30]));
 sky130_fd_sc_hd__buf_2 _249_ (.A(PRDATA[31]),
    .X(HRDATA[31]));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_55 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_56 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_57 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_58 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_155 ();
endmodule
