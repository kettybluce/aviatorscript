DELETE FROM `goods_rule` WHERE spu='1001245' AND rule_type='20';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082927161344,1001245,'20','let errmsg = nil;
if((KA!= nil && HA!= nil)||(KA== nil && HA== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。（KA HA）";
   return errmsg;
}

','0',now() ,'脚本：KA,HA');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082927161345,1001245,'20','let errmsg = nil;
if((KB!= nil && HB!= nil)||(KB== nil && HB== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。（KB HB）";
   return errmsg;
}

','0',now() ,'脚本：KB,HB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082927161346,1001245,'20','let errmsg = nil;
if((KC!= nil && HC!= nil)||(KC== nil && HC== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。（KC HC）";
   return errmsg;
}

','0',now() ,'脚本：KC,HC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082927161347,1001245,'20','let errmsg = nil;
if((ZA!= nil && HA_2!= nil && AA!= nil)||(ZA== nil && HA_2==nil && AA== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。（ZA HA AA）";
   return errmsg;
}

','0',now() ,'脚本：ZA,HA_2,AA');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082927161348,1001245,'20','let errmsg = nil;
if((ZB!= nil && HB_2!= nil && AB!= nil)||(ZB== nil && HB_2== nil && AB== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。（ZB HB AB）";
   return errmsg;
}

','0',now() ,'脚本：ZB,HB_2,AB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082927161349,1001245,'20','let errmsg = nil;
if((ZC!= nil && HC_2!= nil && AC!= nil)||(ZC== nil && HC_2==nil && AC== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。（ZC HC AC）";
   return errmsg;
}

','0',now() ,'脚本：ZC,HC_2,AC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082927161350,1001245,'20','let errmsg = nil;
if((WA!= nil && GA!= nil && AA_2!= nil)||(WA== nil && GA== nil && AA_2== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。（WA GA AA）";
   return errmsg;
}

','0',now() ,'脚本：WA,GA,AA_2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082927161351,1001245,'20','let errmsg = nil;
if((WB!= nil && GB!= nil && AB_2!= nil)||(WB== nil && GB==nil && AB_2== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。（WB GB AB）";
   return errmsg;
}

','0',now() ,'脚本：WB,GB,AB_2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082927161352,1001245,'20','let errmsg = nil;
if((WC!= nil && GC!= nil && AC_2!= nil)||(WC== nil && GC==nil && AC_2== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。（WC GC AC ）";
   return errmsg;
}

','0',now() ,'脚本：WC-GC-AC_2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082927161353,1001245,'20','let errmsg = nil;
if(type!=nil && type=="KZBE" && D!=nil){
    let list=seq.list(35,40,45,50);
    let D=decimal(D);
    if(include(list,D)){
        errmsg = "KZBE类型没有（35 40 45 50）";
        return errmsg;
    }
}
return true;


','0',now() ,'脚本： KZBE类型没有（35 40 45 50）');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082927161354,1001245,'20','let errmsg = nil;
if(LA!= nil && L!= nil){
   LA=decimal(LA);
   L=decimal(L);
   let L=L/2;
   if(LA<=L){
       return true;
   }else{
       errmsg = "指定 LA尺寸 位于 LA ≤ L/2 范围内。";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本：LA≤L/2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082927161355,1001245,'20','let errmsg = nil;
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


','0',now() ,'脚本： 5≤MA≤LA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082927161356,1001245,'20','let errmsg = nil;
if(type=="KZBE" && MA!= nil){
    errmsg = "KZBE细牙螺纹（精密型）不能用";
    return errmsg;
}
return true;


','0',now() ,'脚本：KZBE细牙螺纹（精密型）不能用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082927161357,1001245,'20','let errmsg = nil;
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


','0',now() ,'脚本： 5≤MSA≤LA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082927161358,1001245,'20','let errmsg = nil;
if(type=="KZBE" && MSA!= nil){
    errmsg = "KZBE细牙螺纹（精密型）不能用";
    return errmsg;
}
return true;

','0',now() ,'脚本：KZBE细牙螺纹（精密型）不能用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082927161359,1001245,'20','let errmsg = nil;
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

','0',now() ,'脚本： 5≤MMA≤LA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082927161360,1001245,'20','let errmsg = nil;
if(type=="KZBE" && MMA!= nil){
    errmsg = "KZBE细牙螺纹（精密型）不能用";
    return errmsg;
}
return true;

','0',now() ,'脚本：KZBE细牙螺纹（精密型）不能用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082931355648,1001245,'20','let errmsg = nil;
if(MD!= nil && D!= nil){
   MD=decimal(MD);
   D=decimal(D);
   let newD=D*5;
   if(5<=MD && MD<=newD){
       return true;
   }else{
       errmsg = "需满足公式 5≤MD≤D×5";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 5≤MD≤D×5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082931355649,1001245,'20','let errmsg = nil;
if(type=="KZBE" && MD!= nil){
    errmsg = "KZBE细牙螺纹（精密型）不能用";
    return errmsg;
}
return true;

','0',now() ,'脚本：KZBE细牙螺纹（精密型）不能用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082931355650,1001245,'20','let errmsg = nil;
if(MSD!= nil && D!= nil){
   MSD=decimal(MSD);
   D=decimal(D);
   let newD=D*5;
   if(5<=MSD && MSD<=newD){
       return true;
   }else{
       errmsg = "需满足公式 5≤MSD≤D×5";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本： 5≤MSD≤D×5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082931355651,1001245,'20','let errmsg = nil;
if(type=="KZBE" && MSD!= nil){
    errmsg = "KZBE细牙螺纹（精密型）不能用";
    return errmsg;
}
return true;

','0',now() ,'脚本：KZBE细牙螺纹（精密型）不能用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082931355652,1001245,'20','let errmsg = nil;
if(MMD!= nil && D!= nil){
   MMD=decimal(MMD);
   D=decimal(D);
   let newD=D*5;
   if(5<=MMD && MMD<=newD){
       return true;
   }else{
       errmsg = "需满足公式 5≤MMD≤D×5";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 5≤MMD≤D×5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082931355653,1001245,'20','let errmsg = nil;
if(type=="KZBE" && MMD!= nil){
    errmsg = "KZBE细牙螺纹（精密型）不能用";
    return errmsg;
}
return true;

','0',now() ,'脚本：KZBE细牙螺纹（精密型）不能用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082931355654,1001245,'20','let errmsg = nil;
if(MB!= nil && LA!= nil){
   MB=decimal(MB);
   LA=decimal(LA);
   let LA=LA-2;
   if(5<=MB && MB<=LA){
       return true;
   }else{
       errmsg = "需满足公式 5≤MB≤LA-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 5≤MB≤LA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082931355655,1001245,'20','let errmsg = nil;
if(type=="KZBE" && MB!= nil){
    errmsg = "KZBE细牙螺纹（精密型）不能用";
    return errmsg;
}
return true;

','0',now() ,'脚本：KZBE细牙螺纹（精密型）不能用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082931355656,1001245,'20','let errmsg = nil;
if(MSB!= nil && LA!= nil){
   MSB=decimal(MSB);
   LA=decimal(LA);
   let LA=LA-2;
   if(5<=MSB && MSB<=LA){
       return true;
   }else{
       errmsg = "需满足公式 5≤MSB≤LA-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 5≤MSB≤LA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082931355657,1001245,'20','let errmsg = nil;
if(type=="KZBE" && MSB!= nil){
    errmsg = "KZBE细牙螺纹（精密型）不能用";
    return errmsg;
}
return true;


','0',now() ,'脚本：KZBE细牙螺纹（精密型）不能用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082931355658,1001245,'20','let errmsg = nil;
if(NA!= nil && P!= nil){
   NA=decimal(NA);
   P=decimal(P);
   let P=P-4;
   if(3<=NA && NA<=P){
       return true;
   }else{
       errmsg = "需满足公式 3≤NA≤P-4";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 3≤NA≤P-4');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082931355659,1001245,'20','let errmsg = nil;
if(NB!= nil && D!= nil){
   NB=decimal(NB);
   D=decimal(D);
   let D=D-4;
   if(3<=NB && NB<=D){
       return true;
   }else{
       errmsg = "需满足公式 3≤NB≤D-4";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 3≤NB≤D-4');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082931355660,1001245,'20','let errmsg = nil;
if(KA!= nil && LA!= nil && HA!= nil){
   KA=decimal(KA);
   LA=decimal(LA);
   HA=decimal(HA);
   let LA=LA-HA-2;
   if(0<=KA && KA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 0≤KA≤LA-HA-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 0≤ KA ≤LA-HA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082931355661,1001245,'20','let errmsg = nil;
if(HA!= nil && LA!= nil && KA!= nil){
   HA=decimal(HA);
   LA=decimal(LA);
   KA=decimal(KA);
   let LA=LA-KA-2;
   if(3<=HA && HA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 3≤HA≤LA-KA-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 3≤ HA ≤LA-KA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082931355662,1001245,'20','let errmsg = nil;
if(KB!= nil && L!= nil && LA!= nil && HB!= nil){
   KB=decimal(KB);
   L=decimal(L);
   LA=decimal(LA);
   HB=decimal(HB);
   let L=L-LA-HB;
   if(KB<=L){
       return true;
   }else{
       errmsg = "需满足公式 KB≤L-LA-HB";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本： KB ≤L-LA-HB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082931355663,1001245,'20','
let errmsg = nil;
if(KB!= nil &&L!= nil && LA!= nil && HC!= nil && HB!= nil){
   L=decimal(L);
   LA=decimal(LA);
   HC=decimal(HC);
   HB=decimal(HB);
   let newL=L-LA-HC-HB-3;
   if(KB<=newL){
       return true;
   }else{
       errmsg = "需满足公式 KB≤L-LA-HC-HB-3";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：KB≤L-LA-HC-HB-3');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082931355664,1001245,'20','
let errmsg = nil;
if(KB!= nil && KC!= nil && HB!= nil){

   KB=decimal(KB);
   KC=decimal(KC);
   HB=decimal(HB);

   let newL=KC-HB-1;
   if(KB<=newL){
       return true;
   }else{
       errmsg = "需满足公式 KB≤KC-HB-1 ";
       return errmsg;
   }
}
return true;



','0',now() ,'脚本：KB≤KC-HB-1');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082931355665,1001245,'20','let errmsg = nil;
if(HB!= nil && L!= nil && LA!= nil && KB!= nil){
   HB=decimal(HB);
   L=decimal(L);
   LA=decimal(LA);
   KB=decimal(KB);
   let L=L-LA-KB;
   if(HB<=L){
       return true;
   }else{
       errmsg = "需满足公式 HB≤L-LA-KB";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本： HB ≤ L-LA-KB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082935549952,1001245,'20','let errmsg = nil;
if(HB!= nil && L!= nil && LA!= nil && HC!= nil && KB!= nil){
   HB=decimal(HB);
   L=decimal(L);
   LA=decimal(LA);

   HC=decimal(HC);
   KB=decimal(KB);

   let L=L-LA-HC-KB-3;
   if(HB<=L){
       return true;
   }else{
       errmsg = "需满足公式 HB≤L-LA-HC-KB-3";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本：HB≤L-LA-HC-KB-3');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082935549953,1001245,'20','
let errmsg = nil;
if(HB!= nil && KC!= nil && KB!= nil ){
   HB=decimal(HB);

   KC=decimal(KC);
   KB=decimal(KB);

   let L=KC-KB-1;
   if(HB<=L){
       return true;
   }else{
       errmsg = "需满足公式 HB≤KC-KB-1";
       return errmsg;
   }
}
return true;



','0',now() ,'脚本：HB≤KC-KB-1');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082935549954,1001245,'20','let errmsg = nil;
if(KC!= nil && KB!= nil && HB!= nil){
   KC=decimal(KC);
   KB=decimal(KB);
   HB=decimal(HB);
   let HB=HB+KB+1;
   if(KC>=HB){
       return true;
   }else{
       errmsg = "需满足公式 HB+KB+1≤ KC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：  HB+KB+1≤ KC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082935549955,1001245,'20','let errmsg = nil;
if(KC!= nil && L!= nil && LA!= nil && HC!= nil){
   KC=decimal(KC);
   L=decimal(L);
   LA=decimal(LA);
   HC=decimal(HC);
   let L=L-LA-HC;
   if(KC<=L){
       return true;
   }else{
       errmsg = "需满足公式 KC≤L-LA-HC";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本： KC≤L-LA-HC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082935549956,1001245,'20','let errmsg = nil;
if(HC!= nil && L!= nil && LA!= nil && HB!= nil&& KB!= nil){

   HC=decimal(HC);
   L=decimal(L);
   LA=decimal(LA);
   HB=decimal(HB);
   KB=decimal(KB);
   let L=L-LA-HB-KB-2;
   if( HC<=L){
       return true;
   }else{
       errmsg = "需满足公式 HC≤L-LA-HB-KB-2";
       return errmsg;
   }
}
return true;



','0',now() ,'脚本：HC≤L-LA-HB-KB-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082935549957,1001245,'20','let errmsg = nil;
if(HC!= nil && L!= nil && LA!= nil && KC!= nil){
   HC=decimal(HC);
   L=decimal(L);
   LA=decimal(LA);
   KC=decimal(KC);
   let L=L-LA-KC;
   if( HC<=L){
       return true;
   }else{
       errmsg = "需满足公式 HC ≤L-LA-KC";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本： HC ≤L-LA-KC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082935549958,1001245,'20','let errmsg = nil;
if(HA_2!= nil && LA!= nil ){
   HA_2=decimal(HA_2);
   LA=decimal(LA);
   let LA=LA-1;
   if(3<=HA_2 && HA_2<=LA){
       return true;
   }else{
       errmsg = "需满足公式 3≤ HA ≤ LA-1";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本： 3≤ HA_2 ≤ LA-1');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082935549959,1001245,'20','
let errmsg = nil;
if(HA_2!= nil){
   HA_2=decimal(HA_2);
   if(3<=HA_2 && HA_2<=100){
       return true;
   }else{
       errmsg = "(3≤ HA ≤100)才能生成型号";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本：3≤ HA_2 ≤ 100');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082935549960,1001245,'20','let errmsg = nil;
if(AA!= nil){
   AA=decimal(AA);
   if(30<=AA && AA<=330){
       return true;
   }else{
       errmsg = "需满足公式 30°≤ AA ≤330°";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 30°≤ AA ≤330°');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082935549961,1001245,'20','let errmsg = nil;
if(ZB!= nil && L!= nil && LA!= nil && HB_3!= nil){
   ZB=decimal(ZB);
   L=decimal(L);
   LA=decimal(LA);
   HB_3=decimal(HB_3);
   let L=L-LA-HB_3;
   if(2<=ZB && ZB<=L){
       return true;
   }else{
       errmsg = "需满足公式 2≤ZB≤L-LA-HB";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 2≤ZB≤L-LA-HB_3');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082935549962,1001245,'20','let errmsg = nil;
if(HB_2!= nil){
   HB_2=decimal(HB_2);
   if(HB_2 <=100){
       return true;
   }else{
       errmsg = "HB_2 ≤100";
       return errmsg;
   }
}
return true;



','0',now() ,'脚本： HB_2 ≤100');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082935549963,1001245,'20','if(AB!= nil ){
   AB=decimal(AB);
   if(30<=AB && AB<=330){
       return true;
   }else{
       errmsg = "需满足公式 30°≤ AB ≤330°";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 30°≤ AB ≤330°');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082935549964,1001245,'20','let errmsg = nil;
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


','0',now() ,'脚本： TA≤LA-3');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082935549965,1001245,'20','fn getverify(P) {
  P=decimal(P);
  if(P==27){
    return true;
  }elsif(P==31){
    return true;
  }elsif(P==33){
    return true;
  }elsif(P==34){
    return true;
  }elsif(P==36){
    return true;
  }elsif(36<=P && P<=39){
    return true;
  }elsif(41<=P && P<=44){
    return true;
  }elsif(46<=P && P<=49){
    return true;
  }
  return false;
}
let errmsg = nil;
if(TA!= nil && P!= nil){
   if(getverify(P)){
       errmsg = "P是27、31、33、34、36到39、41到44、46到49不适用";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本： P是27、31、33、34、36到39、41到44、46到49不适用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082935549966,1001245,'20','fn getverify(P) {
  P=decimal(P);
  if(P==27){
    return true;
  }elsif(P==31){
    return true;
  }elsif(P==33){
    return true;
  }elsif(P==34){
    return true;
  }elsif(P==36){
    return true;
  }elsif(36<=P && P<=39){
    return true;
  }elsif(41<=P && P<=44){
    return true;
  }elsif(46<=P && P<=49){
    return true;
  }
  return false;
}
let errmsg = nil;
if(TB!= nil && P!= nil){
   if(getverify(P)){
       errmsg = "P是27、31、33、34、36到39、41到44、46到49不适用";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： P是27、31、33、34、36到39、41到44、46到49不适用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082935549967,1001245,'20','fn getverify(P) {
  P=decimal(P);
  if(P==27){
    return true;
  }elsif(P==31){
    return true;
  }elsif(P==33){
    return true;
  }elsif(P==34){
    return true;
  }elsif(P==36){
    return true;
  }elsif(36<=P && P<=39){
    return true;
  }elsif(41<=P && P<=44){
    return true;
  }elsif(46<=P && P<=49){
    return true;
  }
  return false;
}
let errmsg = nil;
if(TC!= nil && P!= nil){
   if(getverify(P)){
       errmsg = "P是27、31、33、34、36到39、41到44、46到49不适用";
       return errmsg;
   }
}
return true;



','0',now() ,'脚本： P是27、31、33、34、36到39、41到44、46到49不适用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082935549968,1001245,'20','fn getConstant(D) {
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
if(SC!= nil && L!= nil && LA!= nil){
   SC=decimal(SC);
   L=decimal(L);
   LA=decimal(LA);
   l1=getConstant(D);
   let L=L-LA-l1;
   if(0<=SC && SC<=L){
       return true;
   }else{
       errmsg = "需满足公式 SC≤L-LA-l1 ";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： SC≤L-LA-l1');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082935549969,1001245,'20','let errmsg = nil;
if(WA!= nil && LA!= nil && GA!= nil){
   WA=decimal(WA);
   LA=decimal(LA);
   GA=decimal(GA);
   let LA=LA-GA-2;
   if(WA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 WA≤LA-GA-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： WA≤LA-GA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082935549970,1001245,'20','let errmsg = nil;
if(GA!= nil && LA!= nil && WA!= nil){
   GA=decimal(GA);
   LA=decimal(LA);
   WA=decimal(WA);
   let LA=LA-WA-2;
   if(GA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 GA≤LA-WA-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： GA≤LA-WA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082939744256,1001245,'20','let errmsg = nil;
if(AA_2!= nil){
   AA_2=decimal(AA_2);
   if(0<=AA_2 && AA_2<=330){
       return true;
   }else{
       errmsg = "需满足公式 0°≤ AA ≤330°";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 0°≤ AA_2 ≤330°');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082939744257,1001245,'20','let errmsg = nil;
if(WB!= nil && L!= nil && LA!= nil && GB!= nil){
   WB=decimal(WB);
   L=decimal(L);
   LA=decimal(LA);
   GB=decimal(GB);
   let L=L-LA-GB;
   if(2<=WB && WB<=L){
       return true;
   }else{
       errmsg = "需满足公式 WB≤L-LA-GB";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： WB≤L-LA-GB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082939744258,1001245,'20','let errmsg = nil;
if(GB!= nil && L!= nil && LA!= nil && WB!= nil){
   GB=decimal(GB);
   L=decimal(L);
   LA=decimal(LA);
   WB=decimal(WB);
   let L=L-LA-WB;
   if(0<=GB && GB<=L){
       return true;
   }else{
       errmsg = "需满足公式 GB≤L-LA-WB";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： GB≤L-LA-WB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082939744259,1001245,'20','let errmsg = nil;
if(AB_2!= nil && 330!= nil){
   AB_2=decimal(AB_2);
   if(0<=AB_2 && AB_2<=330){
       return true;
   }else{
       errmsg = "需满足公式 0°≤ AB ≤330°";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 0°≤ AB_2 ≤330°');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082939744260,1001245,'20','let errmsg = nil;
if(WC!= nil && WB!= nil && GB!= nil){
   WC=decimal(WC);
   WB=decimal(WB);
   GB=decimal(GB);
   let WB=WB+GB+1;
   if(WC>=WB){
       return true;
   }else{
       errmsg = "需满足公式 WB+GB+1≤WC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： WB+GB+1 ≤ WC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082939744261,1001245,'20','let errmsg = nil;
if(WC!= nil && L!= nil && LA!= nil && GC!= nil){
   WC=decimal(WC);
   L=decimal(L);
   LA=decimal(LA);
   GC=decimal(GC);
   let L=L-LA-GC;
   if(WC<=L){
       return true;
   }else{
       errmsg = "需满足公式 WC≤L-LA-GC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： WC ≤L-LA-GC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082939744262,1001245,'20','let errmsg = nil;
if(GC!= nil && L!= nil && LA!= nil && WC!= nil){
   GC=decimal(GC);
   L=decimal(L);
   LA=decimal(LA);
   WC=decimal(WC);
   let L=L-LA-WC;
   if(0<=GC && GC<=L){
       return true;
   }else{
       errmsg = "需满足公式 0≤GC≤L-LA-WC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 0≤ GC ≤L-LA-WC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1682204082939744263,1001245,'20','let errmsg = nil;
if(AC_2!= nil && 330!= nil){
   AC_2=decimal(AC_2);
   if(0<=AC_2 && AC_2<=330){
       return true;
   }else{
       errmsg = "需满足公式 0°≤ AC ≤330°";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 0°≤ AC_2 ≤330°');
