DELETE FROM `goods_rule` WHERE spu='1001242' AND rule_type='20';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUES (1689437788975722496,1001242,'20','let errmsg = nil;
if((KA!= nil && HA!= nil)||(KA== nil && HA== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(KA HA)";
   return errmsg;
}

','0',now() ,'脚本：KA,HA'),(1689437788979916800,1001242,'20','let errmsg = nil;
if((KC!= nil && HC!= nil)||(KC== nil && HC== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(KC HC)";
   return errmsg;
}

','0',now() ,'脚本：KC,HC'),(1689437788979916801,1001242,'20','let errmsg = nil;
if((KB!= nil && HB!= nil)||(KB== nil && HB== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(KB HB)";
   return errmsg;
}

','0',now() ,'脚本：KB,HB'),(1689437788979916802,1001242,'20','let errmsg = nil;
if((ZA!= nil && HA_2!= nil && AA!= nil)||(ZA== nil && HA_2== nil && AA== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(ZA HA AA)";
   return errmsg;
}

','0',now() ,'脚本：ZA,HA_2,AA'),(1689437788979916803,1001242,'20','let errmsg = nil;
if((ZC!= nil && HC_2!= nil && AC!= nil)||(ZC== nil && HC_2== nil && AC== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(ZC HC AC)";
   return errmsg;
}

','0',now() ,'脚本：ZC,HC_2,AC'),(1689437788979916804,1001242,'20','let errmsg = nil;
if((ZB!= nil && HB_2!= nil && AB!= nil)||(ZB== nil && HB_2== nil && AB== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(ZB HB AB)";
   return errmsg;
}

','0',now() ,'脚本：ZB,HB_2,AB'),(1689437788979916805,1001242,'20','let errmsg = nil;
if((WA!= nil && GA!= nil && AA_2!= nil)||(WA== nil && GA== nil && AA_2== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(WA GA AA)";
   return errmsg;
}

','0',now() ,'脚本：WA,GA,AA_2'),(1689437788979916806,1001242,'20','let errmsg = nil;
if((WB!= nil && GB!= nil && AB_2!= nil)||(WB== nil && GB== nil && AB_2== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(WB GB AB)";
   return errmsg;
}

','0',now() ,'脚本：WB,GB,AB_2'),(1689437788979916807,1001242,'20','let errmsg = nil;
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


','0',now() ,'脚本：5≤MA≤LA-2'),(1689437788979916808,1001242,'20','let errmsg = nil;
if(MA!= nil && LA!= nil){
   LA=decimal(LA);

   if(LA>5){
       errmsg = "LA≤5时，MA不适用";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本：LA≤5时，MA不适用'),(1689437788979916809,1001242,'20','let errmsg = nil;
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


','0',now() ,'脚本：5≤MSA≤LA-2'),(1689437788979916810,1001242,'20','let errmsg = nil;
if(MSA!= nil && LA!= nil){
   LA=decimal(LA);

   if(LA>5){
       errmsg = "LA≤5时，MSA不适用";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：LA≤5时，MSA不适用'),(1689437788979916811,1001242,'20','let errmsg = nil;
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


','0',now() ,'脚本：5≤MMA≤LA-2'),(1689437788979916812,1001242,'20','let errmsg = nil;
if(MMA!= nil && LA!= nil){
   LA=decimal(LA);

   if(LA>5){
       errmsg = "LA≤5时，MMA不适用";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：LA≤5时，MMA不适用'),(1689437788984111104,1001242,'20','let errmsg = nil;
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

','0',now() ,'脚本：KA≤LA-HA-2'),(1689437788984111105,1001242,'20','let errmsg = nil;
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

','0',now() ,'脚本：HA≤LA-KA-2'),(1689437788984111106,1001242,'20','let errmsg = nil;
if(HA!= nil){
   HA=decimal(HA);
   if(3<=HA && HA<=100){
       return true;
   }else{
       errmsg = "需满足公式 3≤HA≤100";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：3 ≤HA≤ 100'),(1689437788984111107,1001242,'20','let errmsg = nil;
if(KB!= nil && L!= nil && LA!= nil && T!= nil && HB!= nil){
   KB=decimal(KB);
   L=decimal(L);
   LA=decimal(LA);
   T=decimal(T);
   HB=decimal(HB);
   let L=L-LA-T-HB-2 ;
   if(KB<=L){
       return true;
   }else{
       errmsg = "需满足公式 KB≤L-LA-T-HB-2 ";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：KB≤L-LA-T-HB-2'),(1689437788984111108,1001242,'20','let errmsg = nil;
if(KB!= nil && KC!= nil && HB!= nil){
   KB=decimal(KB);
   KC=decimal(KC);
   HB=decimal(HB);
   let KC=KC-HB-2;
   if(0<=KB && KB<=KC){
       return true;
   }else{
       errmsg = "需满足公式 0≤KB≤KC-HB-2";
       return errmsg;
   }
}
return true;



','0',now() ,'脚本：0≤KB≤KC-HB-2'),(1689437788984111109,1001242,'20','let errmsg = nil;
if(L!= nil && LA!= nil && T!= nil && KB!= nil && HB !=nil){
   L=decimal(L);
   LA=decimal(LA);
   T=decimal(T);
   HB=decimal(HB);
   KB=decimal(KB);

   let L=L-LA-T-KB-1;

   if(L>100 && HB>100){
       errmsg = "当L-LA-T-KB-1>100时  校验HB≤100";
       return errmsg;
   }elsif(L<=100 && HB>L){
       errmsg = "当L-LA-T-KB-1≤100时  校验HB≤L-LA-T-KB-1";
       return errmsg;
   }

}
return true;


','0',now() ,'脚本：复合公式1 HB'),(1689437788984111110,1001242,'20','let errmsg = nil;
if(HB!= nil){
   HB=decimal(HB);
   if(3<=HB && HB<=100){
       return true;
   }else{
       errmsg = "需满足公式 3≤HB≤100";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本： 3 ≤HB≤ 100'),(1689437788984111111,1001242,'20','let errmsg = nil;
if(KC!= nil && KB!= nil && HB!= nil){
   KC=decimal(KC);
   KB=decimal(KB);
   HB=decimal(HB);
   let KB=KB+HB+2;
   if(KC>=KB){
       return true;
   }else{
       errmsg = "满足公式 KC≥KB+HB+2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：KC≥KB+HB+2'),(1689437788984111112,1001242,'20','let errmsg = nil;
if(KC!= nil && L!= nil && T!= nil && LA!= nil && HC!= nil){
   KC=decimal(KC);
   L=decimal(L);
   T=decimal(T);
   LA=decimal(LA);
   HC=decimal(HC);
   let L=L-T-LA-HC-2;
   if(KC<=L){
       return true;
   }else{
       errmsg = "需满足公式 KC≤L-T-LA-HC-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：KC≤L-T-LA-HC-2'),(1689437788984111113,1001242,'20','
let errmsg = nil;
if(L!= nil && LA!= nil && T!= nil && KC!= nil && HC !=nil){
   L=decimal(L);
   LA=decimal(LA);
   T=decimal(T);
   KC=decimal(KC);
   HC=decimal(HC);

   let L=L-LA-T-KC-2;

   if(L>100 && HC>100){
       errmsg = "当L-LA-T-KC-2>100时  校验HC≤100";
       return errmsg;
   }elsif(L<=100 && HC>L){
       errmsg = "当L-LA-T-KC-2≤100时  校验HC≤L-LA-T-KC-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：复合公式 HC'),(1689437788984111114,1001242,'20','let errmsg = nil;
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

','0',now() ,'脚本：ZA≤LA-HA_2-2'),(1689437788984111115,1001242,'20','let errmsg = nil;
if(HA_2!= nil && LA!= nil && KA!= nil){
   HA_2=decimal(HA_2);
   LA=decimal(LA);
   KA=decimal(KA);
   let LA=LA-KA-2;
   if(HA_2<=LA){
       return true;
   }else{
       errmsg = "HA的值必须处于 3 - 100范围内，才能生成型号";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：HA_2≤LA-KA-2'),(1689437788984111116,1001242,'20','let errmsg = nil;
if(HB_2!= nil && L!= nil && T!= nil && LA!= nil && ZB!= nil){
   HB_2=decimal(HB_2);
   L=decimal(L);
   T=decimal(T);
   LA=decimal(LA);
   ZB=decimal(ZB);
   let L=L-T-LA-ZB-2;
   if(HB_2<=L && 3<=HB_2){
       return true;
   }else{
       errmsg = "需满足公式 3≤ HB ≤L-T-LA-ZB-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：3≤HB_2≤L-T-LA-ZB-2'),(1689437788984111117,1001242,'20','let errmsg = nil;
if(HB_2!= nil && ZC!= nil && ZB!= nil){
   HB_2=decimal(HB_2);
   ZC=decimal(ZC);
   ZB=decimal(ZB);
   let ZC=ZC-ZB-2;
   if(3<=HB_2 && HB_2<=ZC){
       return true;
   }else{
       errmsg = "需满足公式 3≤HB≤ZC-ZB-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：3≤HB_2≤ZC-ZB-2'),(1689437788984111118,1001242,'20','let errmsg = nil;
if(AA!= nil){
   AA=decimal(AA);

   if(30<=AA && AA<=330){
       return true;
   }else{
       errmsg = "需满足公式 30≤AA≤330";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本：30≤AA≤330'),(1689437788988305408,1001242,'20','let errmsg = nil;
if(ZB!= nil && ZC!= nil && HB_2!= nil){
   ZB=decimal(ZB);
   ZC=decimal(ZC);
   HB_2=decimal(HB_2);
   let ZC=ZC-HB_2-2;
   if(0<=ZB && ZB<=ZC){
       return true;
   }else{
       errmsg = "需满足公式 0≤ZB≤ZC-HB-2";
       return errmsg;
   }
}
return true;




','0',now() ,'脚本：0≤ZB≤ZC-HB_2-2'),(1689437788988305409,1001242,'20','let errmsg = nil;
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

','0',now() ,'脚本：TA≤LA-3'),(1689437788988305410,1001242,'20','fn getConstant(D) {
  let l=0;
  D=decimal(D);
  if(D==8 && D==10){
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
let a=seq.list("12A");
let b=seq.list("17A");
let errmsg = nil;
if(SA!= nil && LA!= nil && D!=nil){
   SA=decimal(SA);
   LA=decimal(LA);
   let l=nil;
   if(include(a,D)){
        l=12;
   }elsif(include(b,D)){
        l=17;
   }else{
        l=getConstant(D);
   }
   let LA=LA-l;
   if(SA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 SA≤LA-l";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：SA≤LA-l1'),(1689437788988305411,1001242,'20','fn getConstant(D) {
  let l=0;
  D=decimal(D);
  if(D==8 && D==10){
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
let a=seq.list("12A");
let b=seq.list("17A");
let errmsg = nil;
if(SB!= nil && L!= nil && LA!= nil && T!= nil && D!=nil){
   SB=decimal(SB);
   L=decimal(L);
   LA=decimal(LA);
   T=decimal(T);
   let l=nil;
   if(include(a,D)){
        l=12;
   }elsif(include(b,D)){
        l=17;
   }else{
        l=getConstant(D);
   }
   let L=L-LA-T-l;
   if(SB<=L){
       return true;
   }else{
       errmsg = "需满足公式 SB≤L-LA-T-l1";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：SB≤L-LA-T-l1'),(1689437788988305412,1001242,'20','let errmsg = nil;
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

','0',now() ,'脚本：WA≤LA-GA'),(1689437788988305413,1001242,'20','let errmsg = nil;
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

','0',now() ,'脚本：GA≤LA-WA'),(1689437788988305414,1001242,'20','let errmsg = nil;
if(WB!= nil && L!= nil && LA!= nil && T!= nil && GB!= nil){
   WB=decimal(WB);
   L=decimal(L);
   LA=decimal(LA);
   T=decimal(T);
   GB=decimal(GB);
   let L=L-LA-T-GB;
   if(WB<=L){
       return true;
   }else{
       errmsg = "需满足公式 WB≤L-LA-T-GB";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：WB≤L-LA-T-GB'),(1689437788988305415,1001242,'20','let errmsg = nil;
if(GB!= nil && L!= nil && LA!= nil && T!= nil && WB!= nil){
   GB=decimal(GB);
   L=decimal(L);
   LA=decimal(LA);
   T=decimal(T);
   WB=decimal(WB);
   let L=L-LA-T-WB;
   if(GB<=L){
       return true;
   }else{
       errmsg = "需满足公式 GB≤L-LA-T-WB";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：GB≤L-LA-T-WB'),(1689437788988305416,1001242,'20','let errmsg = nil;
if(HA_2!= nil){
   HA_2=decimal(HA_2);
   if(3<=HA_2 && HA_2<=100){
       return true;
   }else{
       errmsg = "需满足公式 3≤HA≤100";
       return errmsg;
   }
}
return true;





','0',now() ,'脚本：3 ≤HA_2≤ 100'),(1689437788988305417,1001242,'20','let errmsg = nil;
if(HB_2!= nil){
   HB_2=decimal(HB_2);
   if(3<=HB_2 && HB_2<=100){
       return true;
   }else{
       errmsg = "需满足公式 3≤HB≤100";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：3 ≤HB_2≤ 100'),(1689437788988305418,1001242,'20','let errmsg = nil;
if(AB!= nil ){
   AB=decimal(AB);

   if(30<=AB && AB<=330){
       return true;
   }else{
       errmsg = "需满足公式 30≤AB≤330";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：30≤AB≤330'),(1689437788988305419,1001242,'20','let errmsg = nil;
if(AC!= nil ){
   AC=decimal(AC);

   if(30<=AC && AC<=330){
       return true;
   }else{
       errmsg = "需满足公式 30≤AC≤330";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：30≤AC≤330'),(1689437788992499712,1001242,'20','let errmsg = nil;
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

','0',now() ,'脚本：3≤TA≤LA-3'),(1689437788992499713,1001242,'20','let errmsg = nil;
if(AB_2!= nil){
   AB_2=decimal(AB_2);

   if(0<=AB_2 && AB_2<=330){
       return true;
   }else{
       errmsg = "需满足公式 0≤AB≤330";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：0≤AB_2≤330'),(1689437788992499714,1001242,'20','let errmsg = nil;
if(HB!= nil && KC!= nil && KB!= nil){
   HB=decimal(HB);
   KC=decimal(KC);
   KB=decimal(KB);
   let KC=KC-KB-2;
   if(3<=HB && HB<=KC){
       return true;
   }else{
       errmsg = "需满足公式 3≤HB≤KC-KB-2";
       return errmsg;
   }
}
return true;



','0',now() ,'脚本：3≤HB≤KC-KB-2'),(1689437788992499715,1001242,'20','let errmsg = nil;
if(HB!= nil && KC!= nil && KB!= nil){
   HB=decimal(HB);
   KC=decimal(KC);
   KB=decimal(KB);
   let KC=KC-KB-2;
   if(3<=HB && HB<=KC){
       return true;
   }else{
       errmsg = "需满足公式 3≤HB≤KC-KB-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：3≤HB≤KC-KB-2'),(1689437788992499716,1001242,'20','let errmsg = nil;
if(KB!= nil && KC!= nil && HB!= nil){
   KB=decimal(KB);
   KC=decimal(KC);
   HB=decimal(HB);
   let KC=KC-HB-2;
   if(0<=KB && KB<=KC){
       return true;
   }else{
       errmsg = "需满足公式 0≤KB≤KC-HB-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：0≤KB≤KC-HB-2'),(1689437788992499717,1001242,'20','let errmsg = nil;
if(HC_2!= nil){
   HC_2=decimal(HC_2);
   if(3<=HC_2 && HC_2<=100){
       return true;
   }else{
       errmsg = "需满足公式 3≤HC≤100";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：3≤HC_2≤100'),(1689437788992499718,1001242,'20','let errmsg = nil;
if(HC_2!= nil && L!= nil && ZC!= nil){
   HC_2=decimal(HC_2);
   L=decimal(L);
   ZC=decimal(ZC);
   let L=L-ZC-2;
   if(3<=HC_2 && HC_2<=L){
       return true;
   }else{
       errmsg = "需满足公式 3≤HC≤L-ZC-2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：3≤HC_2≤L-ZC-2'),(1689437788992499719,1001242,'20','let errmsg = nil;
if(TB!= nil && L!= nil && LA!= nil && T!= nil){
   TB=decimal(TB);
   L=decimal(L);
   LA=decimal(LA);
   T=decimal(T);
   let L=L-LA-T-3;
   if(4<=TB && TB<=L){
       return true;
   }else{
       errmsg = "需满足公式 4≤TB≤L-LA-T-3";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：4≤TB≤L-LA-T-3'),(1689437788992499720,1001242,'20','fn getConstant(D) {
  let l=0;
  D=decimal(D);
  if(8<=D && D<= 10){
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
if(SA!= nil && LA!= nil && D!= nil){
   SA=decimal(SA);
   LA=decimal(LA);
   D=decimal(D);
   let l=getConstant(D);
   let LA=LA-l;
   if(0<=SA && SA<=LA){
       return true;
   }else{
       errmsg = "需满足公式 0≤SA≤LA-l1";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：0≤SA≤LA-l1'),(1689437788992499721,1001242,'20','fn getConstant(D) {
  let l=0;
  D=decimal(D);
  if(8<=D && D<= 10){
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
if(SB!= nil && L!= nil && LA!= nil && T!= nil && D!= nil){
   SB=decimal(SB);
   L=decimal(L);
   LA=decimal(LA);
   T=decimal(T);
   D=decimal(D);
   let l=getConstant(D);
   let L=L-LA-T-l;
   if(0<=SB && SB<=L){
       return true;
   }else{
       errmsg = "需满足公式 0≤SB≤L-LA-T-l1";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：0≤SB≤L-LA-T-l1'),(1689437788992499722,1001242,'20','let errmsg = nil;
if(AA_2!= nil ){
   AA_2=decimal(AA_2);

   if(0<=AA_2 && AA_2<=330){
       return true;
   }else{
       errmsg = "需满足公式 0≤AA≤330";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：0≤AA_2≤330'),(1689437788992499723,1001242,'20','let errmsg = nil;
if(L!= nil && LA!= nil && T!= nil){
   L=decimal(L);
   LA=decimal(LA);
   T=decimal(T);
   let LA=(LA+T)*2;
   if(L>=LA){
       return true;
   }else{
       errmsg = "需满足公式 L≥(LA+T)*2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：L≥（LA+T）*2'),(1689437788992499724,1001242,'20','let errmsg = nil;
if(L!= nil && LA!= nil && T!= nil){
   L=decimal(L);
   LA=decimal(LA);
   T=decimal(T);
   let LA=(LA+T)*2;
   if(L>=LA){
       return true;
   }else{
       errmsg = "需满足公式 L≥(LA+T)*2";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：L≥（LA+T）*2'),(1689437788992499725,1001242,'20','let errmsg = nil;
if(LA!= nil && L!= nil && T!= nil){
   LA=decimal(LA);
   L=decimal(L);
   T=decimal(T);
   let L=L/2-T;
   if(LA<=L){
       return true;
   }else{
       errmsg = "需满足公式 LA≤L/2-T";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：LA≤L/2-T'),(1689437788992499726,1001242,'20','let errmsg = nil;
if(D==8 && L!=nil){
   if(50>L || L>219){
       errmsg = "D=8, 50≤L≤219";
       return errmsg;
   }
}
return true;
','0',now() ,'脚本：D=8， 50≤L≤219')