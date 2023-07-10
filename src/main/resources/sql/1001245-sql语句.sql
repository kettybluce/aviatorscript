DELETE FROM `goods_rule` WHERE spu='1001245' AND rule_type='20';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558554894336,1001245,'20','let errmsg = nil;
if((KA!= nil && KB!= nil && KC!= nil)||(KA== nil && KB== nil) && KC== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。（KA KB KC）";
   return errmsg;
}

','0',now() ,'脚本：KA-KB-KC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558554894337,1001245,'20','let errmsg = nil;
if((HA!= nil && HB!= nil && HC!= nil)||(HA== nil && HB== nil) && HC== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。（HA HB HC）";
   return errmsg;
}

','0',now() ,'脚本：HA-HB-HC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558554894338,1001245,'20','let errmsg = nil;
if((ZA!= nil && ZB!= nil && ZC!= nil)||(ZA== nil && ZB== nil) && ZC== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。（ZA ZB ZC）";
   return errmsg;
}

','0',now() ,'脚本：ZA-ZB-ZC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558554894339,1001245,'20','let errmsg = nil;
if((HA!= nil && HB!= nil && HC!= nil)||(HA== nil && HB== nil) && HC== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。（HA HB HC）";
   return errmsg;
}

','0',now() ,'脚本：HA-HB-HC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558554894340,1001245,'20','let errmsg = nil;
if((AA!= nil && AB!= nil && AC!= nil)||(AA== nil && AB== nil) && AC== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。（AA AB AC）";
   return errmsg;
}

','0',now() ,'脚本：AA-AB-AC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558554894341,1001245,'20','let errmsg = nil;
if((WA!= nil && WB!= nil && WC!= nil)||(WA== nil && WB== nil) && WC== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。（WA WB WC）";
   return errmsg;
}

','0',now() ,'脚本：WA-WB-WC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558554894342,1001245,'20','let errmsg = nil;
if((AA!= nil && AB!= nil && AC!= nil)||(AA== nil && AB== nil) && AC== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。（AA AB AC）";
   return errmsg;
}

','0',now() ,'脚本：AA-AB-AC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558554894343,1001245,'20','let errmsg = nil;
if((GA!= nil && GB!= nil && GC!= nil)||(GA== nil && GB== nil) && GC== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。（GA GB GC）";
   return errmsg;
}

','0',now() ,'脚本：GA-GB-GC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558554894344,1001245,'20','let errmsg = nil;
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558559088640,1001245,'20','let errmsg = nil;
if(LA!= nil && L!= nil){
   LA=decimal(LA);
   L=decimal(L);
   let L=L/2;
   if(LA<=L){
       return true;
   }else{
       errmsg = "需满足公式 LA≤L/2";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本：LA≤L/2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558559088641,1001245,'20','let errmsg = nil;
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558559088642,1001245,'20','let errmsg = nil;
if(type=="KZBE" && MA!= nil){
    errmsg = "KZBE细牙螺纹（精密型）不能用";
    return errmsg;
}
return true;


','0',now() ,'脚本：KZBE细牙螺纹（精密型）不能用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558559088643,1001245,'20','let errmsg = nil;
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558559088644,1001245,'20','let errmsg = nil;
if(type=="KZBE" && MSA!= nil){
    errmsg = "KZBE细牙螺纹（精密型）不能用";
    return errmsg;
}
return true;

','0',now() ,'脚本：KZBE细牙螺纹（精密型）不能用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558559088645,1001245,'20','let errmsg = nil;
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558559088646,1001245,'20','let errmsg = nil;
if(type=="KZBE" && MMA!= nil){
    errmsg = "KZBE细牙螺纹（精密型）不能用";
    return errmsg;
}
return true;

','0',now() ,'脚本：KZBE细牙螺纹（精密型）不能用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558559088647,1001245,'20','let errmsg = nil;
if(MD!= nil && D!= nil){
   MD=decimal(MD);
   D=decimal(D);
   let D=D×5;
   if(5<=MD && MD<=D){
       return true;
   }else{
       errmsg = "需满足公式 5≤MD≤D×5";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 5≤MD≤D×5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558559088648,1001245,'20','let errmsg = nil;
if(type=="KZBE" && MD!= nil){
    errmsg = "KZBE细牙螺纹（精密型）不能用";
    return errmsg;
}
return true;

','0',now() ,'脚本：KZBE细牙螺纹（精密型）不能用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558559088649,1001245,'20','let errmsg = nil;
if(MSD!= nil && D×5!= nil){
   MSD=decimal(MSD);
   D=decimal(D);
   let D=D×5;
   if(5<=MSD && MSD<=D){
       return true;
   }else{
       errmsg = "需满足公式 5≤MSD≤D×5";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本： 5≤MSD≤D×5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558559088650,1001245,'20','let errmsg = nil;
if(type=="KZBE" && MSD!= nil){
    errmsg = "KZBE细牙螺纹（精密型）不能用";
    return errmsg;
}
return true;

','0',now() ,'脚本：KZBE细牙螺纹（精密型）不能用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558559088651,1001245,'20','let errmsg = nil;
if(MMD!= nil && D×5!= nil){
   MMD=decimal(MMD);
   D=decimal(D);
   let D=D×5;
   if(5<=MMD && MMD<=D){
       return true;
   }else{
       errmsg = "需满足公式 5≤MMD≤D×5";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 5≤MMD≤D×5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558559088652,1001245,'20','let errmsg = nil;
if(type=="KZBE" && MMD!= nil){
    errmsg = "KZBE细牙螺纹（精密型）不能用";
    return errmsg;
}
return true;

','0',now() ,'脚本：KZBE细牙螺纹（精密型）不能用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558559088653,1001245,'20','let errmsg = nil;
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558559088654,1001245,'20','let errmsg = nil;
if(type=="KZBE" && MB!= nil){
    errmsg = "KZBE细牙螺纹（精密型）不能用";
    return errmsg;
}
return true;

','0',now() ,'脚本：KZBE细牙螺纹（精密型）不能用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558559088655,1001245,'20','let errmsg = nil;
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558559088656,1001245,'20','let errmsg = nil;
if(type=="KZBE" && MSB!= nil){
    errmsg = "KZBE细牙螺纹（精密型）不能用";
    return errmsg;
}
return true;


','0',now() ,'脚本：KZBE细牙螺纹（精密型）不能用');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558559088657,1001245,'20','let errmsg = nil;
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558559088658,1001245,'20','let errmsg = nil;
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558563282944,1001245,'20','let errmsg = nil;
if(KA!= nil && LA!= nil && HA_2!= nil){
   KA=decimal(KA);
   LA=decimal(LA);
   HA_2=decimal(HA_2);
   let LA=LA-HA_2-2;
   if(0<=KA && KA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 0≤KA≤LA-HA-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 0≤KA≤LA-HA_2-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558563282945,1001245,'20','let errmsg = nil;
if(HA_2!= nil && LA!= nil && KA!= nil){
   HA_2=decimal(HA_2);
   LA=decimal(LA);
   KA=decimal(KA);
   let LA=LA-KA-2;
   if(3<=HA_2 && HA_2<=LA){
       return true;
   }else{
       errmsg = "需满足公式 3≤HA≤LA-KA-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 3≤HA_2≤LA-KA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558563282946,1001245,'20','let errmsg = nil;
if(KB!= nil && L!= nil && LA!= nil && HB_2!= nil){
   KB=decimal(KB);
   L=decimal(L);
   LA=decimal(LA);
   HB_2=decimal(HB_2);
   let L=L-LA-HB_2;
   if(2<=KB && KB<=L){
       return true;
   }else{
       errmsg = "需满足公式 2≤KB≤L-LA-HB";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 2≤KB≤L-LA-HB_2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558563282947,1001245,'20','let errmsg = nil;
if(HB_2!= nil && L!= nil && LA!= nil && KB!= nil){
   HB_2=decimal(HB_2);
   L=decimal(L);
   LA=decimal(LA);
   KB=decimal(KB);
   let L=L-LA-KB;
   if(HB_2<=L){
       return true;
   }else{
       errmsg = "需满足公式 HB≤L-LA-KB";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： HB_2≤L-LA-KB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558563282948,1001245,'20','let errmsg = nil;
if(KC!= nil && L!= nil && LA!= nil && KB!= nil){
   KC=decimal(KC);
   L=decimal(L);
   LA=decimal(LA);
   KB=decimal(KB);
   let L=L-LA-KB-1;
   if(KC>=L){
       return true;
   }else{
       errmsg = "需满足公式 L-LA-KB-1≤KC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： L-LA-KB-1≤KC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558563282949,1001245,'20','let errmsg = nil;
if(KC!= nil && L!= nil && LA!= nil){
   KC=decimal(KC);
   L=decimal(L);
   LA=decimal(LA);
   let L=L-LA;
   if(KC<=L){
       return true;
   }else{
       errmsg = "需满足公式 KC≤L-LA";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： KC≤L-LA');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558563282950,1001245,'20','let errmsg = nil;
if(HC_2!= nil && L!= nil && LA!= nil && KC!= nil){
   HC_2=decimal(HC_2);
   L=decimal(L);
   LA=decimal(LA);
   KC=decimal(KC);
   let L=L-LA-KC;
   if(4<=HC_2 && HC_2<=L){
       return true;
   }else{
       errmsg = "需满足公式 4≤HC≤L-LA-KC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 4≤HC_2≤L-LA-KC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558563282951,1001245,'20','let errmsg = nil;
if(ZA!= nil && LA!= nil && HA_3!= nil){
   ZA=decimal(ZA);
   LA=decimal(LA);
   HA_3=decimal(HA_3);
   let LA=LA-HA_3;
   if(0<=ZA && ZA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 0≤ZA≤LA-HA";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 0≤ZA≤LA-HA_3');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558563282952,1001245,'20','let errmsg = nil;
if(HA_3!= nil && LA!= nil && ZA!= nil){
   HA_3=decimal(HA_3);
   LA=decimal(LA);
   ZA=decimal(ZA);
   let LA=LA-ZA;
   if(3<=HA_3 && HA_3<=LA){
       return true;
   }else{
       errmsg = "需满足公式 3≤HA≤LA-ZA";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 3≤HA_3≤LA-ZA');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558563282953,1001245,'20','let errmsg = nil;
if(AA_2!= nil){
   AA_2=decimal(AA_2);
   if(30<=AA_2 && AA_2<=330){
       return true;
   }else{
       errmsg = "需满足公式 30≤AA≤330";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 30≤AA_2≤330');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558563282954,1001245,'20','let errmsg = nil;
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558563282955,1001245,'20','let errmsg = nil;
if(HB_3!= nil && L!= nil && LA!= nil && ZB!= nil){
   HB_3=decimal(HB_3);
   L=decimal(L);
   LA=decimal(LA);
   ZB=decimal(ZB);
   let L=L-LA-ZB;
   if(HB_3<=L){
       return true;
   }else{
       errmsg = "需满足公式 HB≤L-LA-ZB";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： HB_3≤L-LA-ZB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558563282956,1001245,'20','let errmsg = nil;
if(AB_2!= nil ){
   AB_2=decimal(AB_2);
   if(30<=AB_2 && AB_2<=330){
       return true;
   }else{
       errmsg = "需满足公式 30≤AB≤330";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 30≤AB_2≤330');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558563282957,1001245,'20','let errmsg = nil;
if(TA!= nil && LA!= nil){
   TA=decimal(TA);
   LA=decimal(LA);
   let LA=LA-3;
   if(3<=TA && TA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 3≤TA≤LA-3";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本： 3≤TA≤LA-3');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558563282958,1001245,'20','fn getverify(P) {
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558563282959,1001245,'20','let errmsg = nil;
if(TB!= nil && L!= nil && LA!= nil){
   TB=decimal(TB);
   L=decimal(L);
   LA=decimal(LA);
   let L=L-LA-3;
   if(3<=TB && TB<=L){
       return true;
   }else{
       errmsg = "需满足公式 3≤TB≤L-LA-3";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本： 3≤TB≤L-LA-3');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558567477248,1001245,'20','fn getverify(P) {
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558567477249,1001245,'20','let errmsg = nil;
if(TC!= nil && L!= nil && LA!= nil){
   TC=decimal(TC);
   L=decimal(L);
   LA=decimal(LA);
   let L=L-LA-3;
   if(3<=TC && TC<=L){
       return true;
   }else{
       errmsg = "需满足公式 3≤TC≤L-LA-3";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本： 3≤TC≤L-LA-3');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558567477250,1001245,'20','fn getverify(P) {
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558567477251,1001245,'20','fn getConstant(D) {
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
if(SA!= nil && LA!= nil){
   SA=decimal(SA);
   LA=decimal(LA);
   l1=getConstant(D);
   let LA=LA-l1;
   if(0<=SA && SA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 0≤SA≤LA-l1";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 0≤SA≤LA-l1');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558567477252,1001245,'20','fn getConstant(D) {
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
       errmsg = "需满足公式 0≤SC≤L-LA-l1";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 0≤SC≤L-LA-l1');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558567477253,1001245,'20','let errmsg = nil;
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558567477254,1001245,'20','let errmsg = nil;
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558567477255,1001245,'20','let errmsg = nil;
if(AA_3!= nil){
   AA_3=decimal(AA_3);
   if(0<=AA_3 && AA_3<=330){
       return true;
   }else{
       errmsg = "需满足公式 0≤AA≤330";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 0≤AA_3≤330');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558567477256,1001245,'20','let errmsg = nil;
if(WB!= nil && L!= nil && LA!= nil && GB!= nil){
   WB=decimal(WB);
   L=decimal(L);
   LA=decimal(LA);
   GB=decimal(GB);
   let L=L-LA-GB;
   if(2<=WB && WB<=L){
       return true;
   }else{
       errmsg = "需满足公式 2≤WB≤L-LA-GB";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 2≤WB≤L-LA-GB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558567477257,1001245,'20','let errmsg = nil;
if(GB!= nil && L!= nil && LA!= nil && WB!= nil){
   GB=decimal(GB);
   L=decimal(L);
   LA=decimal(LA);
   WB=decimal(WB);
   let L=L-LA-WB;
   if(0<=GB && GB<=L){
       return true;
   }else{
       errmsg = "需满足公式 0≤GB≤L-LA-WB";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 0≤GB≤L-LA-WB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558567477258,1001245,'20','let errmsg = nil;
if(AB_3!= nil && 330!= nil){
   AB_3=decimal(AB_3);
   if(0<=AB_3 && AB_3<=330){
       return true;
   }else{
       errmsg = "需满足公式 0≤AB≤330";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本： 0≤AB_3≤330');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558567477259,1001245,'20','let errmsg = nil;
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

','0',now() ,'脚本： WB+GB+1≤WC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558567477260,1001245,'20','let errmsg = nil;
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

','0',now() ,'脚本： WC≤L-LA-GC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558567477261,1001245,'20','let errmsg = nil;
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

','0',now() ,'脚本： 0≤GC≤L-LA-WC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1678304558567477262,1001245,'20','let errmsg = nil;
if(AC_3!= nil && 330!= nil){
   AC_3=decimal(AC_3);
   if(0<=AC_3 && AC_3<=330){
       return true;
   }else{
       errmsg = "需满足公式 0≤AC≤330";
       return errmsg;
   }
}
return true;
','0',now() ,'脚本： 0≤AC_3≤330');
