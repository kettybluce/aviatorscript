DELETE FROM `goods_rule` WHERE spu='1001243' AND rule_type='20';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUES (1689814972252901376,1001243,'20','let errmsg = nil;
if((KA!= nil && HA!= nil)||(KA== nil && HA== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(KA HA)";
   return errmsg;
}

','0',now() ,'脚本：KA,HA'),(1689814972252901377,1001243,'20','let errmsg = nil;
if((KB!= nil && HB!= nil)||(KB== nil && HB== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(KB HB)";
   return errmsg;
}

','0',now() ,'脚本：KB,HB'),(1689814972252901378,1001243,'20','let errmsg = nil;
if((KC!= nil && HC!= nil)||(KC== nil && HC== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(KC HC)";
   return errmsg;
}

','0',now() ,'脚本：KC,HC'),(1689814972252901379,1001243,'20','let errmsg = nil;
if((KD!= nil && HD!= nil)||(KD== nil && HD== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(KD HD)";
   return errmsg;
}

','0',now() ,'脚本：KD,HD'),(1689814972257095680,1001243,'20','let errmsg = nil;
if((ZA!= nil && HA_2!= nil && AA!= nil)||(ZA== nil && HA_2== nil && AA== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(ZA HA AA)";
   return errmsg;
}

','0',now() ,'脚本：ZA,HA_2,AA'),(1689814972257095681,1001243,'20','let errmsg = nil;
if((ZB!= nil && HB_2!= nil && AB!= nil)||(ZB== nil && HB_2== nil && AB== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(ZB HB AB)";
   return errmsg;
}

','0',now() ,'脚本：ZB,HB_2,AB'),(1689814972257095682,1001243,'20','let errmsg = nil;
if((ZC!= nil && HC_2!= nil && AC!= nil)||(ZC== nil && HC_2== nil && AC== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(ZC HC AC)";
   return errmsg;
}

','0',now() ,'脚本：ZC,HC_2,AC'),(1689814972257095683,1001243,'20','let errmsg = nil;
if((ZD!= nil && HD_2!= nil && AD!= nil)||(ZD== nil && HD_2== nil && AD== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(ZD HD AD)";
   return errmsg;
}

','0',now() ,'脚本：ZD,HD_2,AD'),(1689814972257095684,1001243,'20','let errmsg = nil;
if((WA!= nil && GA!= nil && AA_2!= nil)||(WA== nil && GA== nil && AA_2== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(WA GA AA)";
   return errmsg;
}

','0',now() ,'脚本：WA,GA,AA_2'),(1689814972257095685,1001243,'20','let errmsg = nil;
if((WC!= nil && GC!= nil && AB_2!= nil)||(WC== nil && GC== nil && AB_2== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(WC GC AB)";
   return errmsg;
}

','0',now() ,'脚本：WC,GC,AB_2'),(1689814972257095686,1001243,'20','let errmsg = nil;
if((WD!= nil && GD!= nil && AC_2!= nil)||(WD== nil && GD== nil && AC_2== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(WD GD AC)";
   return errmsg;
}

','0',now() ,'脚本：WD,GD,AC_2'),(1689814972257095687,1001243,'20','let errmsg = nil;
if((WE!= nil && GE!= nil && AD_2!= nil)||(WE== nil && GE== nil && AD_2== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(WE GE AD)";
   return errmsg;
}


','0',now() ,'脚本：WE,GE,AD_2'),(1689814972257095688,1001243,'20','let errmsg = nil;
if(type==KZDE && (D==35 || D==40 || 50)){
    errmsg = "KZDE类型没有35、40、50";
    return errmsg;
}
return true;

','0',now() ,'脚本：（KZDE类型没有35、40、50）'),(1689814972257095689,1001243,'20','let errmsg = nil;
if((D==35 || D==35) && L !=nil){
    if(L<10 && L>125){
        errmsg = "D为30、35时，L的取值范围是10到125才能生成型号";
        return errmsg;
    }
}
return true;


','0',now() ,'脚本：D为30、35时，L的取值范围是10到125才能生成型号'),(1689814972257095690,1001243,'20','let errmsg = nil;
if(P!=nil && Q!=nil){
    if(P>Q){
        return true;
    }else{
        errmsg = "P>Q才能生成型号";
        return errmsg;
    }
}
return true;


','0',now() ,'脚本：P>Q才能生成型号'),(1689814972257095691,1001243,'20','let errmsg = nil;
if(L!= nil && LA!= nil && LB!= nil && LC!= nil){
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   LC=decimal(LC);
   let LA=LA+LB+LC;
   if(L>LA){
       return true;
   }else{
       errmsg = "需满足公式 L>LA+LB+LC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：L>LA+LB+LC'),(1689814972257095692,1001243,'20','let errmsg = nil;
if(MA!= nil && LA!= nil){
   MA=decimal(MA);
   LA=decimal(LA);
   let LA=LA-2;
   if(5<=MA && MA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 5≤MA≤LA-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MA≤LA-2'),(1689814972257095693,1001243,'20','let errmsg = nil;
if(MSA!= nil && LA!= nil){
   MSA=decimal(MSA);
   LA=decimal(LA);
   let LA=LA-2;
   if(5<=MSA && MSA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 5≤MSA≤LA-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MSA≤LA-2'),(1689814972257095694,1001243,'20','let errmsg = nil;
if(MMA!= nil && LA!= nil){
   MMA=decimal(MMA);
   LA=decimal(LA);
   let LA=LA-2;
   if(5<=MMA && MMA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 5≤MMA≤LA-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MMA≤LA-2'),(1689814972257095695,1001243,'20','let errmsg = nil;
if(MC!= nil && LC!= nil){
   MC=decimal(MC);
   LC=decimal(LC);
   let LC=LC-2;
   if(5<=MC && MC<=LC){
       return true;
   }else{
       errmsg = "需满足公式 5≤MC≤LC-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MC≤LC-2'),(1689814972257095696,1001243,'20','let errmsg = nil;
if(MSC!= nil && LC!= nil){
   MSC=decimal(MSC);
   LC=decimal(LC);
   let LC=LC-2;
   if(5<=MSC && MSC<=LC){
       return true;
   }else{
       errmsg = "需满足公式 5≤MSC≤LC-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MSC≤LC-2'),(1689814972257095697,1001243,'20','let errmsg = nil;
if(MMC!= nil && LC!= nil){
   MMC=decimal(MMC);
   LC=decimal(LC);
   let LC=LC-2;
   if(5<=MMC && MMC<=LC){
       return true;
   }else{
       errmsg = "需满足公式 5≤MMC≤LC-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MMC≤LC-2'),(1689814972261289984,1001243,'20','let errmsg = nil;
if(MB!= nil && LB!= nil){
   MB=decimal(MB);
   LB=decimal(LB);
   let LB=LB-2;
   if(5<=MB && MB<=LB){
       return true;
   }else{
       errmsg = "需满足公式 5≤MB≤LB-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MB≤LB-2'),(1689814972261289985,1001243,'20','let errmsg = nil;
if(MSB!= nil && LB!= nil){
   MSB=decimal(MSB);
   LB=decimal(LB);
   let LB=LB-2;
   if(5<=MSB && MSB<=LB){
       return true;
   }else{
       errmsg = "需满足公式 5≤MSB≤LB-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MSB≤LB-2'),(1689814972261289986,1001243,'20','let errmsg = nil;
if(MMB!= nil && LB!= nil){
   MMB=decimal(MMB);
   LB=decimal(LB);
   let LB=LB-2;
   if(5<=MMB && MMB<=LB){
       return true;
   }else{
       errmsg = "需满足公式 5≤MMB≤LB-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MMB≤LB-2'),(1689814972261289987,1001243,'20','let errmsg = nil;
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

','0',now() ,'脚本：KA≤LA-HA-2'),(1689814972261289988,1001243,'20','let errmsg = nil;
if(HA!= nil && LA!= nil && KA!= nil){
   HA=decimal(HA);
   LA=decimal(LA);
   KA=decimal(KA);
   let LA=LA-KA-2;
   if(HA<=LA){
       return true;
   }else{
       errmsg = "KA、LA有值，HA为空,校验 HA≤LA-KA-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：HA≤LA-KA-2'),(1689814972261289989,1001243,'20','let errmsg = nil;
if(HA!= nil && LA!= nil){
   HA=decimal(HA);
   LA=decimal(LA);
   let LA=LA-1;
   if(HA<=LA){
       return true;
   }else{
       errmsg = "当KA、HA为空，LA有值,校验 HA≤LA-1";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：HA≤LA-1'),(1689814972261289990,1001243,'20','let errmsg = nil;
if(KB!= nil && L!= nil && LB!= nil && LA!= nil && LC!= nil && HB!= nil){
   KB=decimal(KB);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   LC=decimal(LC);
   HB=decimal(HB);
   let L=L-LB-LA-LC-HB;
   if(KB<=L){
       return true;
   }else{
       errmsg = "需满足公式 KB≤L-LB-LA-LC-HB";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：KB≤L-LB-LA-LC-HB'),(1689814972261289991,1001243,'20','let errmsg = nil;
if(KB!= nil && KD!= nil && HB!= nil){
   KB=decimal(KB);
   KD=decimal(KD);
   HB=decimal(HB);
   let KD=KD-HB-1;
   if(KB<=KD){
       return true;
   }else{
       errmsg = "需满足公式 KB≤KD-HB-1";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：KB≤KD-HB-1'),(1689814972261289992,1001243,'20','let errmsg = nil;
if(HB!= nil && L!= nil && LB!= nil && LA!= nil && LC!= nil && KB!= nil){
   HB=decimal(HB);
   L=decimal(L);
   LB=decimal(LB);
   LA=decimal(LA);
   LC=decimal(LC);
   KB=decimal(KB);
   let L=L-LB-LA-LC-KB;
   if(HB<=L){
       return true;
   }else{
       errmsg = "HB的值必须处于 3 - 100范围内，才能生成型号";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：HB≤L-LB-LA-LC-KB'),(1689814972261289993,1001243,'20','let errmsg = nil;
if(KC!= nil && LC!= nil && HC!= nil){
   KC=decimal(KC);
   LC=decimal(LC);
   HC=decimal(HC);
   let LC=LC-HC-2;
   if(KC<=LC){
       return true;
   }else{
       errmsg = "需满足公式 KC≤LC-HC-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：KC≤LC-HC-2'),(1689814972261289994,1001243,'20','let errmsg = nil;
if(HC!= nil && LC!= nil && KC!= nil){
   HC=decimal(HC);
   LC=decimal(LC);
   KC=decimal(KC);
   let LC=LC-KC-2;
   if(HC<=LC){
       return true;
   }else{
       errmsg = "HC的值必须处于 3 - 100范围内，才能生成型号";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：HC≤LC-KC-2'),(1689814972261289995,1001243,'20','let errmsg = nil;
if(KD!= nil && L!= nil && LA!= nil && LC!= nil && LB!= nil && HD!= nil){
   KD=decimal(KD);
   L=decimal(L);
   LA=decimal(LA);
   LC=decimal(LC);
   LB=decimal(LB);
   HD=decimal(HD);
   let L=L-LA-LC-LB-HD-2;
   if(KD<=L){
       return true;
   }else{
       errmsg = "需满足公式 KD≤L-LA-LC-LB-HD-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：KD≤L-LA-LC-LB-HD-2'),(1689814972261289996,1001243,'20','let errmsg = nil;
if(KD!= nil && KB!= nil && HB!= nil){
   KD=decimal(KD);
   KB=decimal(KB);
   HB=decimal(HB);
   let KB=KB+HB+1;
   if(KD>=KB){
       return true;
   }else{
       errmsg = "需满足公式 KD≥KB+HB+1";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：KD≥KB+HB+1'),(1689814972265484288,1001243,'20','let errmsg = nil;
if(HD!= nil && L!= nil && LA!= nil && LB!= nil && LC!= nil && KD!= nil){
   HD=decimal(HD);
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   LC=decimal(LC);
   KD=decimal(KD);
   let L=L-LA-LB-LC-KD-2;
   if(HD<=L){
       return true;
   }else{
       errmsg = "HD的值必须处于 3 - 100范围内，才能生成型号";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：HD≤L-LA-LB-LC-KD-2'),(1689814972265484289,1001243,'20','let errmsg = nil;
if(ZA!= nil && LA!= nil && HA_2!=nil){
   ZA=decimal(ZA);
   LA=decimal(LA);
   HA_2=decimal(HA_2);
   let LA=LA-HA_2-2;
   if(ZA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 ZA≤LA-HA-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：ZA≤LA-HA_2-2'),(1689814972265484290,1001243,'20','let errmsg = nil;
if(HA_2!= nil && LA!= nil && ZA!= nil){
   HA_2=decimal(HA_2);
   LA=decimal(LA);
   ZA=decimal(ZA);
   let LA=LA-ZA-2;
   if(HA_2<=LA){
       return true;
   }else{
       errmsg = "需满足公式 HA≤LA-ZA-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：HA_2≤LA-ZA-2'),(1689814972265484291,1001243,'20','let errmsg = nil;
if(HA_2!= nil && LA!= nil){
   HA_2=decimal(HA_2);
   LA=decimal(LA);
   let LA=LA-1;
   if(HA_2<=LA){
       return true;
   }else{
       errmsg = "HA的值必须处于 3 - 100范围内，才能生成型号";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：HA_2≤LA-1'),(1689814972265484292,1001243,'20','let errmsg = nil;
if(ZB!= nil && L!= nil && LA!= nil && LB!= nil && LC!= nil && HB_2!= nil){
   ZB=decimal(ZB);
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   LC=decimal(LC);
   HB_2=decimal(HB_2);
   let L=L-LA-LB-LC-HB_2;
   if(ZB<=L){
       return true;
   }else{
       errmsg = "需满足公式 ZB≤L-LA-LB-LC-HB";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：ZB≤L-LA-LB-LC-HB_2'),(1689814972265484293,1001243,'20','let errmsg = nil;
if(ZB!= nil && ZD!= nil && HB_2!= nil){
   ZB=decimal(ZB);
   ZD=decimal(ZD);
   HB_2=decimal(HB_2);
   let ZD=ZD-HB_2-1;
   if(ZB<=ZD){
       return true;
   }else{
       errmsg = "ZD有值时，ZB为空 ZB≤ZD-HB-1";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：ZB≤ZD-HB_2-1'),(1689814972265484294,1001243,'20','let errmsg = nil;
if(HB_2!= nil && L!= nil && LA!= nil && LB!= nil && LC!= nil && KB!= nil){
   HB_2=decimal(HB_2);
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   LC=decimal(LC);
   KB=decimal(KB);
   let L=L-LA-LB-LC-KB;
   if(HB_2<=L){
       return true;
   }else{
       errmsg = "HB只能在3-100范围内，才能生成型号";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：HB_2≤L-LA-LB-LC-KB'),(1689814972265484295,1001243,'20','let errmsg = nil;
if(HB_2!= nil && ZD!= nil && KB!= nil){
   HB_2=decimal(HB_2);
   ZD=decimal(ZD);
   KB=decimal(KB);
   let ZD=ZD-KB-1;
   if(HB_2<=ZD){
       return true;
   }else{
       errmsg = "ZD有值时，HB为空 HB_2≤ZD-KB-1";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：HB_2≤ZD-KB-1'),(1689814972265484296,1001243,'20','let errmsg = nil;
if(ZC!= nil && ZD!= nil && HC_2!=nil){
   ZC=decimal(ZC);
   ZD=decimal(ZD);
   HC_2=decimal(HC_2);
   let ZD=ZD-1-HC_2;
   if(ZC<=ZD){
       return true;
   }else{
       errmsg = "ZC、HC有值,ZC为空 校验 ZC≤ZD-1-HC_2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：ZC≤ZD-1-HC_2'),(1689814972265484297,1001243,'20','let errmsg = nil;
if(ZD!= nil && ZC!= nil && HC_2!=nil){
   ZC=decimal(ZC);
   ZD=decimal(ZD);
   HC_2=decimal(HC_2);


   let ZD= ZD-ZC-1;
   if(HC_2 > ZD){
       errmsg = "满足公式 HC_2 ≤ ZD-ZC-1";
       return errmsg;
   }
}
return true;





','0',now() ,'脚本：HC_2 ≤ ZD-ZC-1'),(1689814972265484298,1001243,'20','let errmsg = nil;
if(ZD!= nil && L!= nil && LA!= nil && LB!= nil && LC!= nil && HD_2!= nil){
   ZD=decimal(ZD);
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   LC=decimal(LC);
   HD_2=decimal(HD_2);
   let L=L-LA-LB-LC-HD_2;
   if(ZD<=L){
       return true;
   }else{
       errmsg = "需满足公式 ZD≤L-LA-LB-LC-HD";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：ZD≤L-LA-LB-LC-HD_2'),(1689814972265484299,1001243,'20','let errmsg = nil;
if(ZD!= nil && ZC!= nil && HC_2!=nil){
   ZD=decimal(ZD);
   ZC=decimal(ZC);
   HC_2=decimal(HC_2);
   let ZC=ZC+HC_2+1;
   if(ZD>=ZC){
       return true;
   }else{
       errmsg = "ZB、HB_2有值，ZD为空 校验 ZD≥ZC+HC+1";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：ZD≥ZC+HC_2+1'),(1689814972265484300,1001243,'20','let errmsg = nil;
if(HD!= nil && L!= nil && LA!= nil && LB!= nil && LC!= nil && ZD!= nil){
   HD=decimal(HD);
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   LC=decimal(LC);
   ZD=decimal(ZD);
   let L=L-LA-LB-LC-ZD;
   if(HD<=L){
       return true;
   }else{
       errmsg = "HD的值必须处于 3 - 100范围内，才能生成型号";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：HD≤L-LA-LB-LC-ZD'),(1689814972265484301,1001243,'20','let errmsg = nil;
if(TA!= nil && LA!= nil){
   TA=decimal(TA);
   LA=decimal(LA);
   let LA=LA-3;
   if(TA<=LA){
       return true;
   }else{
       errmsg = "TA符合逻辑能现实加工出来的取值范围  4≤TA≤LA-3";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：TA≤LA-3'),(1689814972265484302,1001243,'20','let errmsg = nil;
if(TB!= nil && LB!= nil){
   TB=decimal(TB);
   LB=decimal(LB);
   let LB=LB-3;
   if(TB<=LB){
       return true;
   }else{
       errmsg = "TB符合逻辑能现实加工出来的取值范围  4≤TB≤LB-3";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：TB≤LB-3'),(1689814972265484303,1001243,'20','let errmsg = nil;
if(TC!= nil && LC!= nil){
   TC=decimal(TC);
   LC=decimal(LC);
   let LC=LC-3;
   if(TC<=LC){
       return true;
   }else{
       errmsg = "TC符合逻辑能现实加工出来的取值范围  4≤TC≤LC-3";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：TC≤LC-3'),(1689814972269678592,1001243,'20','fn getConstant(D) {
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
if(SA!= nil && LA!= nil && D != nil){
   SA=decimal(SA);
   LA=decimal(LA);
   let l=getConstant(D);
   let LA=LA-l;
   if(SA<=LA){
       return true;
   }else{
       errmsg = "SA符合逻辑能现实加工出来的取值范围 SA≤LA-ℓ";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：SA≤LA-l1'),(1689814972269678593,1001243,'20','fn getConstant(D) {
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
if(SD!= nil && L!= nil && LA!= nil && LB!= nil && LC!= nil && D != nil){
   SD=decimal(SD);
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   LC=decimal(LC);
   let l=getConstant(D);
   let L=L-LA-LB-LC-l;
   if(SD<=L){
       return true;
   }else{
       errmsg = "SD符合逻辑能现实加工出来的取值范围 SD≤L-LA-LB-LC-ℓ";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：SD≤L-LA-LB-LC-l1'),(1689814972269678594,1001243,'20','fn getConstant(D) {
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
if(SC!= nil && LC!= nil && D != nil){
   SC=decimal(SC);
   LC=decimal(LC);
   let l=getConstant(D);
   let LC=LC-l;
   if(SC<=LC){
       return true;
   }else{
       errmsg = "SC符合逻辑能现实加工出来的取值范围 SC≤LC-ℓ";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：SC≤LC-l1'),(1689814972269678595,1001243,'20','let errmsg = nil;
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

','0',now() ,'脚本：WA≤LA-GA'),(1689814972269678596,1001243,'20','let errmsg = nil;
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

','0',now() ,'脚本：GA≤LA-WA'),(1689814972269678597,1001243,'20','let errmsg = nil;
if(WC!= nil && LC!= nil && GC!= nil){
   WC=decimal(WC);
   LC=decimal(LC);
   GC=decimal(GC);
   let LC=LC-GC;
   if(WC<=LC){
       return true;
   }else{
       errmsg = "需满足公式 WC≤LC-GC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：WC≤LC-GC'),(1689814972269678598,1001243,'20','
let errmsg = nil;
if(GC!= nil && LC!= nil && WC!= nil){
   GC=decimal(GC);
   LC=decimal(LC);
   WC=decimal(WC);
   let LC=LC-WC;
   if(GC<=LC){
       return true;
   }else{
       errmsg = "需满足公式 GC≤LC-WC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：GC≤LC-WC'),(1689814972269678599,1001243,'20','
let errmsg = nil;
if(WD!= nil && L!= nil && LA!= nil && LB!= nil && LC!= nil && GD!= nil){
   WD=decimal(WD);
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   LC=decimal(LC);
   GD=decimal(GD);
   let L=L-LA-LB-LC-GD;
   if(WD<=L){
       return true;
   }else{
       errmsg = "需满足公式 WD≤L-LA-LB-LC-GD";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：WD≤L-LA-LB-LC-GD'),(1689814972269678600,1001243,'20','
let errmsg = nil;
if(GD!= nil && L!= nil && LA!= nil && LC!= nil && LB!= nil && WB!= nil){
   GD=decimal(GD);
   L=decimal(L);
   LA=decimal(LA);
   LC=decimal(LC);
   LB=decimal(LB);
   WB=decimal(WB);
   let L=L-LA-LC-LB-WB;
   if(GD<=L){
       return true;
   }else{
       errmsg = "需满足公式 GD≤L-LA-LC-LB-WB";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：GD≤L-LA-LC-LB-WB'),(1689814972269678601,1001243,'20','
let errmsg = nil;
if(WE!= nil && type!="KZDE"){
    errmsg = "WE只适用于KZDE类型";
    return errmsg;
}
return true;

','0',now() ,'脚本：WE只适用于KZDE类型'),(1689814972269678602,1001243,'20','
let errmsg = nil;
if(GE!= nil && type!="KZDE"){
    errmsg = "GE只适用于KZDE类型";
    return errmsg;
}
return true;

','0',now() ,'脚本：GE只适用于KZDE类型'),(1689814972269678603,1001243,'20','let errmsg = nil;
if(LA!= nil && L!= nil && LB!= nil && LC!= nil){
   LA=decimal(LA);
   L=decimal(L);
   LB=decimal(LB);
   LC=decimal(LC);

   let L=L-LB-LC-0.5;
   if(LA<=L){
       return true;
   }else{
       errmsg = "需满足公式 LA≤L-LB-LC-0.5";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：LA≤L-LB-LC-0.5'),(1689814972269678604,1001243,'20','let errmsg = nil;
if(LB!= nil && L!= nil && LA!= nil && LC!= nil){
   LB=decimal(LB);
   L=decimal(L);
   LA=decimal(LA);
   LC=decimal(LC);

   let L=L-LA-LC-0.5;
   if(LB<=L){
       return true;
   }else{
       errmsg = "需满足公式 LB≤L-LA-LC-0.5";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：LB≤L-LA-LC-0.5'),(1689814972269678605,1001243,'20','let errmsg = nil;
if(LC!= nil && L!= nil && LA!= nil && LB!= nil){
   LC=decimal(LC);
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);

   let L=L-LA-LB-0.5;
   if(LC<=L){
       return true;
   }else{
       errmsg = "需满足公式 LC≤L-LA-LB-0.5";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：LC≤L-LA-LB-0.5'),(1689814972269678606,1001243,'20','let errmsg = nil;
if(NA!= nil && P!= nil){
   NA=decimal(NA);
   P=decimal(P);

   let P=P-4;
   if(NA<=P){
       return true;
   }else{
       errmsg = "需满足公式 NA<=P-4";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：NA<=P-4'),(1689814972269678607,1001243,'20','let errmsg = nil;
if(NC!= nil && Q!= nil){
   NC=decimal(NC);
   Q=decimal(Q);

   let Q=Q-4;
   if(NC<=Q){
       return true;
   }else{
       errmsg = "需满足公式 NC<=Q-4";
       return errmsg;
   }
}
return true;
','0',now() ,'脚本：NC<=Q-4')