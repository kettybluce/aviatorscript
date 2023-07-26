DELETE FROM `goods_rule` WHERE spu='1001244' AND rule_type='20';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905597865984,1001244,'20','let errmsg = nil;
if((KA!= nil && HA!= nil)||(KA== nil && HA== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(KA HA)";
   return errmsg;
}

','0',now() ,'脚本：KA,HA');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905602060288,1001244,'20','let errmsg = nil;
if((KC!= nil && HC!= nil)||(KC== nil && HC== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(KC HC)";
   return errmsg;
}

','0',now() ,'脚本：KC,HC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905602060289,1001244,'20','let errmsg = nil;
if((KD!= nil && HD!= nil)||(KD== nil && HD== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(KD HD)";
   return errmsg;
}

','0',now() ,'脚本：KD,HD');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905602060290,1001244,'20','let errmsg = nil;
if((KB!= nil && HB!= nil)||(KB== nil && HB== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(KB HB)";
   return errmsg;
}

','0',now() ,'脚本：KB,HB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905602060291,1001244,'20','let errmsg = nil;
if((ZA!= nil && HA_2!= nil && AA!= nil)||(ZA== nil && HA_2== nil && AA== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(ZA HA_2 AA)";
   return errmsg;
}

','0',now() ,'脚本：ZA,HA_2,AA');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905602060292,1001244,'20','let errmsg = nil;
if((ZC!= nil && HC_2!= nil && AC!= nil)||(ZC== nil && HC_2== nil && AC== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(ZC HC_2 AC)";
   return errmsg;
}

','0',now() ,'脚本：ZC,HC_2,AC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905602060293,1001244,'20','let errmsg = nil;
if((ZD!= nil && HD_2!= nil && AD!= nil)||(ZD== nil && HD_2== nil && AD== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(ZD HD_2 AD)";
   return errmsg;
}

','0',now() ,'脚本：ZD,HD_2,AD');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905602060294,1001244,'20','let errmsg = nil;
if((ZB!= nil && HB_2!= nil && AB!= nil)||(ZB== nil && HB_2== nil && AB== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(ZB HB_2 AB)";
   return errmsg;
}

','0',now() ,'脚本：ZB,HB_2,AB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905602060295,1001244,'20','let errmsg = nil;
if((WA!= nil && GA!= nil && AA_2!= nil)||(WA== nil && GA== nil && AA_2== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(WA GA AA_2)";
   return errmsg;
}

','0',now() ,'脚本：WA,GA,AA_2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905602060296,1001244,'20','let errmsg = nil;
if((WB!= nil && GB!= nil && AB_2!= nil)||(WB== nil && GB== nil && AB_2== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(WB GB AB_2)";
   return errmsg;
}

','0',now() ,'脚本：WB,GB,AB_2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905602060297,1001244,'20','let errmsg = nil;
if((WC!= nil && GC!= nil && AC_2!= nil)||(WC== nil && GC== nil && AC_2== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(WC GC AC_2)";
   return errmsg;
}


','0',now() ,'脚本：WC,GC,AC_2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905602060298,1001244,'20','let errmsg = nil;
if(type==KZCE && (D==35 || D==40 || 50)){
    errmsg = "KZCE类型没有35、40、50";
    return errmsg;
}
return true;


','0',now() ,'脚本：KZCE类型没有35、40、50');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905602060299,1001244,'20','let errmsg = nil;
if(MA!= nil && LA!= nil){
   MA=decimal(MA);
   LA=decimal(LA);
   let LA=LA-2;
   if(MA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 MA≤LA-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MA≤LA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905606254592,1001244,'20','let errmsg = nil;
if(MA!= nil && D!= nil){
   MA=decimal(MA);
   D=decimal(D);
   let D=D*5;
   if(5<=MA && MA<=D){
       return true;
   }else{
       errmsg = "需满足公式 5≤MA≤D*5";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MA≤D*5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905606254593,1001244,'20','let errmsg = nil;
if(MSA!= nil && LA!= nil){
   MSA=decimal(MSA);
   LA=decimal(LA);
   let LA=LA-2;
   if(MSA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 MSA≤LA-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MSA≤LA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905606254594,1001244,'20','let errmsg = nil;
if(MSA!= nil && D!= nil){
   MSA=decimal(MSA);
   D=decimal(D);
   let D=D*5;
   if(5<=MSA && MSA<=D){
       return true;
   }else{
       errmsg = "需满足公式 5≤MSA≤D*5";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MSA≤D*5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905606254595,1001244,'20','let errmsg = nil;
if(MMA!= nil && LA!= nil){
   MMA=decimal(MMA);
   LA=decimal(LA);
   let LA=LA-2;
   if(MMA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 MMA≤LA-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MMA≤LA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905606254596,1001244,'20','let errmsg = nil;
if(MMA!= nil && D!= nil){
   MMA=decimal(MMA);
   D=decimal(D);
   let D=D*5;
   if(5<=MMA && MMA<=D){
       return true;
   }else{
       errmsg = "需满足公式 5≤MMA≤D*5";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MMA≤D*5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905606254597,1001244,'20','let errmsg = nil;
if(MC!= nil && L!= nil && LB!= nil && LA!= nil && MD!= nil){
   MC=decimal(MC);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   MD=decimal(MD);
   let L=L-LB-LA-MD;
   if(MC<=L){
       return true;
   }else{
       errmsg = "需满足公式 MC≤L-LB-LA-MD";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MC≤L-LB-LA-MD');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905606254598,1001244,'20','let errmsg = nil;
if(MC!= nil && L!= nil && LB!= nil && LA!= nil && MSD!= nil){
   MC=decimal(MC);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   MSD=decimal(MSD);
   let L=L-LB-LA-MSD;
   if(MC<=L){
       return true;
   }else{
       errmsg = "需满足公式 MC≤L-LB-LA-MSD";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MC≤L-LB-LA-MSD');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905606254599,1001244,'20','let errmsg = nil;
if(MC!= nil && L!= nil && LB!= nil && LA!= nil && MMD!= nil){
   MC=decimal(MC);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   MMD=decimal(MMD);
   let L=L-LB-LA-MMD;
   if(MC<=L){
       return true;
   }else{
       errmsg = "需满足公式 MC≤L-LB-LA-MMD";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MC≤L-LB-LA-MMD');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905606254600,1001244,'20','let errmsg = nil;
if(MC!= nil && D!= nil){
   MC=decimal(MC);
   D=decimal(D);
   let D=D*5;
   if(5<=MC && MC<=D){
       return true;
   }else{
       errmsg = "需满足公式 5≤MC≤D*5";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MC≤D*5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905606254601,1001244,'20','let errmsg = nil;
if(MSC!= nil && L!= nil && LB!= nil && LA!= nil && MD!= nil){
   MSC=decimal(MSC);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   MD=decimal(MD);
   let L=L-LB-LA-MD;
   if(MSC<=L){
       return true;
   }else{
       errmsg = "需满足公式 MSC≤L-LB-LA-MD";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MSC≤L-LB-LA-MD');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448896,1001244,'20','let errmsg = nil;
if(MSC!= nil && L!= nil && LB!= nil && LA!= nil && MSD!= nil){
   MSC=decimal(MSC);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   MSD=decimal(MSD);
   let L=L-LB-LA-MSD;
   if(MSC<=L){
       return true;
   }else{
       errmsg = "需满足公式 MSC≤L-LB-LA-MSD";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MSC≤L-LB-LA-MSD');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448897,1001244,'20','let errmsg = nil;
if(MSC!= nil && L!= nil && LB!= nil && LA!= nil && MMD!= nil){
   MSC=decimal(MSC);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   MMD=decimal(MMD);
   let L=L-LB-LA-MMD;
   if(MSC<=L){
       return true;
   }else{
       errmsg = "需满足公式 MSC≤L-LB-LA-MMD";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MSC≤L-LB-LA-MMD');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448898,1001244,'20','let errmsg = nil;
if(MSC!= nil && D!= nil){
   MSC=decimal(MSC);
   D=decimal(D);
   let D=D*5-2;
   if(5<=MSC && MSC<=D){
       return true;
   }else{
       errmsg = "需满足公式 5≤MSC≤D*5-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MSC≤D*5-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448899,1001244,'20','
let errmsg = nil;
if(MMC!= nil && type !="KZCE"){
    errmsg = "MMC KZCE细牙螺纹（精密型）不能用";
    return errmsg;
}
return true;



','0',now() ,'脚本：KZCE细牙螺纹（精密型）不能用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448900,1001244,'20','let errmsg = nil;
if(MMC!= nil && L!= nil && LB!= nil && LA!= nil && MD!= nil){
   MMC=decimal(MMC);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   MD=decimal(MD);
   let L=L-LB-LA-MD;
   if(MMC<=L){
       return true;
   }else{
       errmsg = "需满足公式 MMC≤L-LB-LA-MD";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MMC≤L-LB-LA-MD');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448901,1001244,'20','let errmsg = nil;
if(MMC!= nil && L!= nil && LB!= nil && LA!= nil && MSD!= nil){
   MMC=decimal(MMC);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   MSD=decimal(MSD);
   let L=L-LB-LA-MSD;
   if(MMC<=L){
       return true;
   }else{
       errmsg = "需满足公式 MMC≤L-LB-LA-MSD";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MMC≤L-LB-LA-MSD');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448902,1001244,'20','
let errmsg = nil;
if(MMD!= nil && type !="KZCE"){
    errmsg = "MMD KZCE细牙螺纹（精密型）不能用";
    return errmsg;
}
return true;

','0',now() ,'脚本：KZCE细牙螺纹（精密型）不能用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448903,1001244,'20','let errmsg = nil;
if(MMC!= nil && L!= nil && LB!= nil && LA!= nil && MMD!= nil){
   MMC=decimal(MMC);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   MMD=decimal(MMD);
   let L=L-LB-LA-MMD;
   if(MMC<=L){
       return true;
   }else{
       errmsg = "需满足公式 MMC≤L-LB-LA-MMD";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本：MMC≤L-LB-LA-MMD');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448904,1001244,'20','let errmsg = nil;
if(MD!= nil && L!= nil && LB!= nil && LA!= nil && MC!= nil){
   MD=decimal(MD);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   MC=decimal(MC);
   let L=L-LB-LA-MC;
   if(MD<=L){
       return true;
   }else{
       errmsg = "需满足公式 MD≤L-LB-LA-MC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MD≤L-LB-LA-MC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448905,1001244,'20','let errmsg = nil;
if(MD!= nil && L!= nil && LB!= nil && LA!= nil && MSC!= nil){
   MD=decimal(MD);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   MSC=decimal(MSC);
   let L=L-LB-LA-MSC;
   if(MD<=L){
       return true;
   }else{
       errmsg = "需满足公式 MD≤L-LB-LA-MSC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MD≤L-LB-LA-MSC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448906,1001244,'20','let errmsg = nil;
if(MD!= nil && L!= nil && LB!= nil && LA!= nil && MMC!= nil){
   MD=decimal(MD);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   MMC=decimal(MMC);
   let L=L-LB-LA-MMC;
   if(MD<=L){
       return true;
   }else{
       errmsg = "需满足公式 MD≤L-LB-LA-MMC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MD≤L-LB-LA-MMC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448907,1001244,'20','let errmsg = nil;
if(MD!= nil && D!= nil){
   MD=decimal(MD);
   D=decimal(D);
   let D=D*5;
   if(5<=MD && MD<=D){
       return true;
   }else{
       errmsg = "需满足公式 5≤MD≤D*5";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MD≤D*5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448908,1001244,'20','let errmsg = nil;
if(MSD!= nil && L!= nil && LB!= nil && LA!= nil && MC!= nil){
   MSD=decimal(MSD);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   MC=decimal(MC);
   let L=L-LB-LA-MC;
   if(MSD<=L){
       return true;
   }else{
       errmsg = "需满足公式 MSD≤L-LB-LA-MC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MSD≤L-LB-LA-MC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448909,1001244,'20','let errmsg = nil;
if(MSD!= nil && L!= nil && LB!= nil && LA!= nil && MSC!= nil){
   MSD=decimal(MSD);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   MSC=decimal(MSC);
   let L=L-LB-LA-MSC;
   if(MSD<=L){
       return true;
   }else{
       errmsg = "需满足公式 MSD≤L-LB-LA-MSC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MSD≤L-LB-LA-MSC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448910,1001244,'20','let errmsg = nil;
if(MSD!= nil && L!= nil && LB!= nil && LA!= nil && MMC!= nil){
   MSD=decimal(MSD);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   MMC=decimal(MMC);
   let L=L-LB-LA-MMC;
   if(MSD<=L){
       return true;
   }else{
       errmsg = "需满足公式 MSD≤L-LB-LA-MMC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MSD≤L-LB-LA-MMC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448911,1001244,'20','let errmsg = nil;
if(MSD!= nil && D!= nil){
   MSD=decimal(MSD);
   D=decimal(D);
   let D=D*5-2;
   if(5<=MSD && MSD<=D){
       return true;
   }else{
       errmsg = "需满足公式 5≤MSD≤D*5-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MSD≤D*5-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448912,1001244,'20','let errmsg = nil;
if(MMD!= nil && L!= nil && LB!= nil && LA!= nil && MC!= nil){
   MMD=decimal(MMD);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   MC=decimal(MC);
   let L=L-LB-LA-MC;
   if(MMD<=L){
       return true;
   }else{
       errmsg = "需满足公式 MMD≤L-LB-LA-MC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MMD≤L-LB-LA-MC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448913,1001244,'20','let errmsg = nil;
if(MMD!= nil && L!= nil && LB!= nil && LA!= nil && MSC!= nil){
   MMD=decimal(MMD);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   MSC=decimal(MSC);
   let L=L-LB-LA-MSC;
   if(MMD<=L){
       return true;
   }else{
       errmsg = "需满足公式 MMD≤L-LB-LA-MSC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MMD≤L-LB-LA-MSC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448914,1001244,'20','let errmsg = nil;
if(MMD!= nil && L!= nil && LB!= nil && LA!= nil && MMC!= nil){
   MMD=decimal(MMD);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   MMC=decimal(MMC);
   let L=L-LB-LA-MMC;
   if(MMD<=L){
       return true;
   }else{
       errmsg = "需满足公式 MMD≤L-LB-LA-MMC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MMD≤L-LB-LA-MMC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448915,1001244,'20','let errmsg = nil;
if(MMD!= nil && D!= nil){
   MMD=decimal(MMD);
   D=decimal(D);
   let D=D*5-2;
   if(5<=MMD && MMD<=D){
       return true;
   }else{
       errmsg = "需满足公式 5≤MMD≤D*5-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MMD≤D*5-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448916,1001244,'20','let errmsg = nil;
if(MB!= nil && LB!= nil){
   MB=decimal(MB);
   LB=decimal(LB);
   let LB=LB-2;
   if(MB<=LB){
       return true;
   }else{
       errmsg = "需满足公式 MB≤LB-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MB≤LB-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448917,1001244,'20','let errmsg = nil;
if(MB!= nil && D!= nil){
   MB=decimal(MB);
   D=decimal(D);
   let D=D*5;
   if(5<=MB && MB<=D){
       return true;
   }else{
       errmsg = "需满足公式 5≤MB≤D*5";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MB≤D*5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448918,1001244,'20','let errmsg = nil;
if(MSB!= nil && LB!= nil){
   MSB=decimal(MSB);
   LB=decimal(LB);
   let LB=LB-2;
   if(MSB<=LB){
       return true;
   }else{
       errmsg = "需满足公式 MSB≤LB-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MSB≤LB-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905610448919,1001244,'20','let errmsg = nil;
if(MSB!= nil && D!= nil){
   MSB=decimal(MSB);
   D=decimal(D);
   let D=D*5;
   if(5<=MSB && MSB<=D){
       return true;
   }else{
       errmsg = "需满足公式 5≤MSB≤D*5";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MSB≤D*5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905614643200,1001244,'20','
let errmsg = nil;
if(MMB!= nil && type !="KZCE"){
    errmsg = "MMB KZCE细牙螺纹（精密型）不能用";
    return errmsg;
}
return true;


','0',now() ,'脚本：KZCE细牙螺纹（精密型）不能用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905614643201,1001244,'20','let errmsg = nil;
if(MMB!= nil && LB!= nil){
   MMB=decimal(MMB);
   LB=decimal(LB);
   let LB=LB-2;
   if(MMB<=LB){
       return true;
   }else{
       errmsg = "需满足公式 MMB≤LB-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：MMB≤LB-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905614643202,1001244,'20','let errmsg = nil;
if(MMB!= nil && D!= nil){
   MMB=decimal(MMB);
   D=decimal(D);
   let D=D*5;
   if(5<=MMB && MMB<=D){
       return true;
   }else{
       errmsg = "需满足公式 5≤MMB≤D*5";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MMB≤D*5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905614643203,1001244,'20','let errmsg = nil;
if(NA!= nil && P!= nil){
   NA=decimal(NA);
   P=decimal(P);
   let P=P-4;
   if(NA<=P){
       return true;
   }else{
       errmsg = "需满足公式 NA≤P-4";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：NA≤P-4');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905614643204,1001244,'20','let errmsg = nil;
if(NB!= nil && P!= nil){
   NB=decimal(NB);
   P=decimal(P);
   let P=P-4;
   if(NB<=P){
       return true;
   }else{
       errmsg = "需满足公式 NB≤P-4";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：NB≤P-4');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905614643205,1001244,'20','let errmsg = nil;
if(KA!= nil && LA!= nil && HA!= nil){
   KA=decimal(KA);
   LA=decimal(LA);
   HA=decimal(HA);
   let LA=LA-HA-2;
   if(KA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 KA≤LA-HA-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：KA≤LA-HA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905614643206,1001244,'20','let errmsg = nil;
if(HA!= nil && LA!= nil && KA!= nil){
   HA=decimal(HA);
   LA=decimal(LA);
   KA=decimal(KA);
   let LA=LA-KA-2;
   if(HA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 HA≤LA-KA-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：HA≤LA-KA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905614643207,1001244,'20','let errmsg = nil;
if(KB!= nil && LB!= nil && HB!= nil){
   KB=decimal(KB);
   LB=decimal(LB);
   HB=decimal(HB);
   let LB=LB-HB-2;
   if(KB<=LB){
       return true;
   }else{
       errmsg = "需满足公式 KB≤LB-HB-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：KB≤LB-HB-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905614643208,1001244,'20','let errmsg = nil;
if(HB!= nil && LB!= nil && KB!= nil){
   HB=decimal(HB);
   LB=decimal(LB);
   KB=decimal(KB);
   let LB=LB-KB-2;
   if(HB<=LB){
       return true;
   }else{
       errmsg = "需满足公式 HB≤LB-KB-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：HB≤LB-KB-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905614643209,1001244,'20','let errmsg = nil;
if(KC!= nil && L!= nil && LA!= nil && LB!= nil && HC!= nil){
   KC=decimal(KC);
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   HC=decimal(HC);
   let L=L-LA-LB-HC;
   if(KC<=L){
       return true;
   }else{
       errmsg = "需满足公式 KC≤L-LA-LB-HC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：KC≤L-LA-LB-HC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905614643210,1001244,'20','let errmsg = nil;
if(KC!= nil && KD!= nil && HC!= nil){
   KC=decimal(KC);
   KD=decimal(KD);
   HC=decimal(HC);
   let KD=KD-HC-1;
   if(KC<=KD){
       return true;
   }else{
       errmsg = "需满足公式 KC≤KD-HC-1";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：KC≤KD-HC-1');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905614643211,1001244,'20','let errmsg = nil;
if(HC!= nil && L!= nil && LA!= nil && LB!= nil && KC!= nil){
   HC=decimal(HC);
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   KC=decimal(KC);
   let L=L-LA-LB-KC;
   if(HC<=L){
       return true;
   }else{
       errmsg = "需满足公式 HC≤L-LA-LB-KC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：HC≤L-LA-LB-KC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905614643212,1001244,'20','let errmsg = nil;
if(HC!= nil && KD!= nil && KC!= nil){
   HC=decimal(HC);
   KD=decimal(KD);
   KC=decimal(KC);
   let KD=KD-KC-1;
   if(HC<=KD){
       return true;
   }else{
       errmsg = "需满足公式 HC≤KD-KC-1";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：HC≤KD-KC-1');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905614643213,1001244,'20','let errmsg = nil;
if(KD!= nil && KC!= nil && HC!= nil){
   KD=decimal(KD);
   KC=decimal(KC);
   HC=decimal(HC);
   let KC=KC+HC+1;
   if(KD>=KC){
       return true;
   }else{
       errmsg = "需满足KD＞KC＋HC (输入KD,HD前需先输入KC,HC)";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：KC+HC+1≤KD');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905614643214,1001244,'20','let errmsg = nil;
if(KD!= nil && L!= nil && LA!= nil && LB!= nil && HD!= nil){
   KD=decimal(KD);
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   HD=decimal(HD);
   let L=L-LA-LB-HD;
   if(KD<=L){
       return true;
   }else{
       errmsg = "需满足公式 KD≤L-LA-LB-HD";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：KD≤L-LA-LB-HD');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905614643215,1001244,'20','let errmsg = nil;
if(HD!= nil && L!= nil && LA!= nil && LB!= nil && KD!= nil){
   HD=decimal(HD);
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   KD=decimal(KD);
   let L=L-LA-LB-KD;
   if(HD<=L){
       return true;
   }else{
       errmsg = "需满足公式 HD≤L-LA-LB-KD";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：HD≤L-LA-LB-KD');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905614643216,1001244,'20','let errmsg = nil;
if(HA_2!= nil && LA!= nil){
   HA_2=decimal(HA_2);
   LA=decimal(LA);
   let LA=LA-1;
   if(HA_2<=LA){
       return true;
   }else{
       errmsg = "需满足公式 HA_2≤LA-1";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：HA_2≤LA-1');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905614643217,1001244,'20','let errmsg = nil;
if(ZC!= nil && ZD!= nil){
   ZC=decimal(ZC);
   ZD=decimal(ZD);
   let ZD=ZD-1-HC_2;
   if(ZC<=ZD){
       return true;
   }else{
       errmsg = "需满足公式 ZC≤ZD-1-HC_2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：ZC≤ZD-1-HC_2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905614643218,1001244,'20','let errmsg = nil;
if(HC_2!= nil && ZD!= nil && ZC!= nil){
   HC_2=decimal(HC_2);
   ZD=decimal(ZD);
   ZC=decimal(ZC);
   let ZD=ZD-ZC-1;
   if(HC_2<=ZD){
       return true;
   }else{
       errmsg = "需满足公式 HC_2≤ZD-ZC-1";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：HC_2≤ZD-ZC-1');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905618837504,1001244,'20','let errmsg = nil;
if(ZD!= nil && ZC!= nil){
   ZD=decimal(ZD);
   ZC=decimal(ZC);
   let ZC=ZC+HC_2+1;
   if(ZD>=ZC){
       return true;
   }else{
       errmsg = "需满足ZD＞ZC＋HC_2 (输入ZD,HD_2前需先输入ZC,HC_2)";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：ZD≥ZC+HC_2+1');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905618837505,1001244,'20','let errmsg = nil;
if(TA!= nil && LA!= nil){
   TA=decimal(TA);
   LA=decimal(LA);
   let LA=LA-3;
   if(TA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 TA≤LA-3";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：TA≤LA-3');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905618837506,1001244,'20','let errmsg = nil;
if(TB!= nil && LB!= nil){
   TB=decimal(TB);
   LB=decimal(LB);
   let LB=LB-3;
   if(TB<=LB){
       return true;
   }else{
       errmsg = "需满足公式 TB≤LB-3";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：TB≤LB-3');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905618837507,1001244,'20','fn getConstant(D) {
  let l=0;
  D=decimal(D);
  if(D==10){
    l=8;
    return l;
  }elsif(12<=D && D<= 25){
    l=10;
    return l;
  }elsif( 30<=D && D<= 35){
    l=15;
    return l;
  }elsif( 40<=D && D<= 50){
     l=20;
     return l;
  }
  return l;
}
let errmsg = nil;
if(SA!= nil && LA!= nil && l!= nil){
   SA=decimal(SA);
   LA=decimal(LA);
   let l=getConstant(D);
   let LA=LA-l;
   if(SA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 SA≤LA-l";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：SA≤LA-l');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905618837508,1001244,'20','fn getConstant(D) {
  let l=0;
  D=decimal(D);
  if(D==10){
    l=8;
    return l;
  }elsif(12<=D && D<= 25){
    l=10;
    return l;
  }elsif( 30<=D && D<= 35){
    l=15;
    return l;
  }elsif( 40<=D && D<= 50){
     l=20;
     return l;
  }
  return l;
}
let errmsg = nil;
if(SD!= nil && L!= nil && LA!= nil && LB!= nil && l!= nil){
   SD=decimal(SD);
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   let l=getConstant(D);
   let L=L-LA-LB-l;
   if(SD<=L){
       return true;
   }else{
       errmsg = "需满足公式 SD≤L-LA-LB-l";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：SD≤L-LA-LB-l');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905618837509,1001244,'20','fn getConstant(D) {
  let l=0;
  D=decimal(D);
  if(D==10){
    l=8;
    return l;
  }elsif(12<=D && D<= 25){
    l=10;
    return l;
  }elsif( 30<=D && D<= 35){
    l=15;
    return l;
  }elsif( 40<=D && D<= 50){
     l=20;
     return l;
  }
  return l;
}
let errmsg = nil;
if(SB!= nil && LB!= nil && l!= nil){
   SB=decimal(SB);
   LB=decimal(LB);
   let l=getConstant(D);
   let LB=LB-l;
   if(SB<=LB){
       return true;
   }else{
       errmsg = "需满足公式 SB≤LB-l";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：SB≤LB-l');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905623031808,1001244,'20','let errmsg = nil;
if(WA!= nil && LA!= nil && GA!= nil){
   WA=decimal(WA);
   LA=decimal(LA);
   GA=decimal(GA);
   let LA=LA-GA;
   if(WA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 WA≤LA-GA";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：WA≤LA-GA');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905623031809,1001244,'20','let errmsg = nil;
if(GA!= nil && LA!= nil && WA!= nil){
   GA=decimal(GA);
   LA=decimal(LA);
   WA=decimal(WA);
   let LA=LA-WA;
   if(GA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 GA≤LA-WA";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：GA≤LA-WA');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905623031810,1001244,'20','let errmsg = nil;
if(WC!= nil && L!= nil && LA!= nil && LB!= nil && GC!= nil){
   WC=decimal(WC);
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   GC=decimal(GC);
   let L=L-LA-LB-GC;
   if(WC<=L){
       return true;
   }else{
       errmsg = "需满足公式 WC≤L-LA-LB-GC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：WC≤L-LA-LB-GC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905623031811,1001244,'20','let errmsg = nil;
if(GC!= nil && L!= nil && LA!= nil && LB!= nil && WC!= nil){
   GC=decimal(GC);
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   WC=decimal(WC);
   let L=L-LA-LB-WC;
   if(GC<=L){
       return true;
   }else{
       errmsg = "需满足公式 GC≤L-LA-LB-WC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：GC≤L-LA-LB-WC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905623031812,1001244,'20','let errmsg = nil;
if(WB!= nil && LB!= nil && GB!= nil){
   WB=decimal(WB);
   LB=decimal(LB);
   GB=decimal(GB);
   let LB=LB-GB;
   if(WB<=LB){
       return true;
   }else{
       errmsg = "需满足公式 WB≤LB-GB";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：WB≤LB-GB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684031905623031813,1001244,'20','let errmsg = nil;
if(GB!= nil && LB!= nil && WB!= nil){
   GB=decimal(GB);
   LB=decimal(LB);
   WB=decimal(WB);
   let LB=LB-WB;
   if(GB<=LB){
       return true;
   }else{
       errmsg = "需满足公式 GB≤LB-WB";
       return errmsg;
   }
}
return true;
','0',now() ,'脚本：GB≤LB-WB');
