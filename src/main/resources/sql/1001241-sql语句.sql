DELETE FROM `goods_rule` WHERE spu='1001241' AND rule_type='20';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046901858304,1001241,'20','let errmsg = nil;
if ((KA != nil && HA_1 != nil ) || (KA == nil && HA_1 == nil )) {
    return true;
} else {
   errmsg = "KA与HA同时存在";
   return errmsg;
}

','0',now() ,'脚本：KA与HA_1同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046901858305,1001241,'20','let errmsg = nil;
if ((KB != nil && HB_1 != nil ) || (KB == nil && HB_1 == nil )) {
    return true;
} else {
   errmsg = "KB与HB同时存在";
   return errmsg;
}

','0',now() ,'脚本：KB与HB_1同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046901858306,1001241,'20','let errmsg = nil;
if ((KC != nil && HC_1 != nil ) || (KC == nil && HC_1 == nil )) {
    return true;
} else {
   errmsg = "KC与HC同时存在";
   return errmsg;
}

','0',now() ,'脚本：KC与HC_1同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046901858307,1001241,'20','let errmsg = nil;
if ((KD != nil && HD_1 != nil ) || (KD == nil && HD_1 == nil )) {
    return true;
} else {
   errmsg = "KD与HD同时存在";
   return errmsg;
}

','0',now() ,'脚本：KD与HD同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046901858308,1001241,'20','let errmsg = nil;
if ((ZA != nil && HA != nil && AA_1 != nil) || (ZA == nil && HA == nil && AA_1 == nil)) {
    return true;
} else {
   errmsg = "ZA 必须与 HA 与 AA 同时存在";
   return errmsg;
}

','0',now() ,'脚本：ZA 必须与 HA 与 AA_1 同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046901858309,1001241,'20','let errmsg = nil;
if ((ZB != nil && HB != nil && AB_1 != nil) || (ZB == nil && HB == nil && AB_1 == nil)) {
    return true;
} else {
   errmsg = "ZB 必须与 HB 与 AB 同时存在";
   return errmsg;
}

','0',now() ,'脚本：ZB 必须与 HB 与 AB 同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046901858310,1001241,'20','let errmsg = nil;
if ((ZC != nil && HC != nil && AC_1 != nil) || (ZC == nil && HC == nil && AC_1 == nil)) {
    return true;
} else {
   errmsg = "ZC 必须与 HC 与 AC 同时存在";
   return errmsg;
}

','0',now() ,'脚本：ZC 必须与 HC 与 AC 同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046901858311,1001241,'20','let errmsg = nil;
if ((ZD != nil && HD != nil && AD != nil) || (ZD == nil && HD == nil && AD == nil)) {
    return true;
} else {
   errmsg = "ZD 必须与 HD 与 AD 同时存在";
   return errmsg;
}

','0',now() ,'脚本：ZD 必须与 HD 与 AD 同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046906052608,1001241,'20','let errmsg = nil;
if ((WA != nil && GA != nil && AA != nil) || (WA == nil && GA == nil && AA == nil)) {
    return true;
} else {
   errmsg = "WA 必须与 GA 与 AA 同时存在";
   return errmsg;
}

','0',now() ,'脚本：WA 必须与 GA 与 AA 同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046906052609,1001241,'20','let errmsg = nil;
if ((WB != nil && GB != nil && AB != nil) || (WB == nil && GB == nil && AB == nil)) {
    return true;
} else {
   errmsg = "WB 必须与 GB 与 AB 同时存在";
   return errmsg;
}

','0',now() ,'脚本：WB 必须与 GB 与 AB 同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046906052610,1001241,'20','let errmsg = nil;
if ((WD != nil && GD != nil && AC != nil) || (WD == nil && GD == nil && AC == nil)) {
    return true;
} else {
   errmsg = "WD 必须与 GD 与 AC 同时存在";
   return errmsg;
}

','0',now() ,'脚本：WD 必须与 GD 与 AC 同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046906052611,1001241,'20','let errmsg = nil;
if(KD != nil && KC == nil ){
   errmsg = "KD输值的话，KC必须有值";
   return errmsg;
}
return true;

','0',now() ,'脚本：KD 必须与 KC 同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046906052612,1001241,'20','let errmsg = nil;
if(ZD != nil && ZC == nil ){
   errmsg = "ZD输值的话，ZC必须有值";
   return errmsg;
}
return true;

','0',now() ,'脚本：ZD 必须与 ZC 同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046906052613,1001241,'20','let errmsg = nil;
if(L != nil && LA != nil && LB != nil && T != nil){
	if(L>LA+LB+T){
             return true;
          }else{
             errmsg = "需满足公式 L> LA + LB + T";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：L > LA+LB+T');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046906052614,1001241,'20','let errmsg = nil;
if(LA != nil && LB != nil && L != nil ){
	LA=long(LA);
	LB=long(LB);
	L=long(L);
	L=L/2;
	if(L>=LA+LB){
      return true;
     }else{
      errmsg = "需满足公式 LA + LB ≤ L÷2";
      return errmsg;
     }
}
return true;

','0',now() ,'脚本：LA+LB≤L÷2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046906052615,1001241,'20','let errmsg = nil;
if(MA != nil && LA != nil){
    LA=LA-2;
    if(LA >= MA){
             return true;
          }else{
             errmsg = "需满足公式 MA≦LA-2";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：MA≦LA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046906052616,1001241,'20','let errmsg = nil;
if(MSA != nil && LA != nil ){
    LA=LA-2;
    if(LA >= MSA){
             return true;
          }else{
             errmsg = "需满足公式  MSA ≦ LA-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：MSA ≦ LA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046906052617,1001241,'20','
let errmsg = nil;
if(MMA != nil && LA != nil ){
	LA=LA-2;
	if(LA >= MMA){
             return true;
          }else{
             errmsg = "需满足公式 MMA ≦ LA-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本： MMA ≦ LA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046906052618,1001241,'20','let errmsg = nil;
if(MB != nil && LA != nil ){
	LA=LA-2;
	if(LA >= MB){
             return true;
          }else{
             errmsg = "需满足公式 5 ≦ MB ≦ LA-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本： MB ≦ LB-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046906052619,1001241,'20','let errmsg = nil;
if(MSB != nil && LA != nil ){
	LA=LA-2;
	if(LA >= MSB){
             return true;
          }else{
             errmsg = "需满足公式 MSB ≦ LA-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本： MSB ≦ LB-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046906052620,1001241,'20','let errmsg = nil;
if(MMB != nil && LA != nil ){
	LA=LA-2;
	if(LA >= MMB){
             return true;
          }else{
             errmsg = "需满足公式 MMB ≦ LA-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本： MMB ≦ LB-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046906052621,1001241,'20','
let errmsg = nil;
if(MD != nil && D != nil ){
	D=D*5;
	if(D >= MD){
             return true;
          }else{
             errmsg = "需满足公式 MD ≦ D×5 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：MD≦D×5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046906052622,1001241,'20','let errmsg = nil;
if(MD != nil && L != nil  && LA != nil && LB != nil && T != nil){
	L=L-LA-LB-T-2;
	if(L >= MD){
             return true;
          }else{
             errmsg = "需满足公式 MD ≦ L-LA-LB-T-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本： MD≦L-LA-LB-T-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046906052623,1001241,'20','let errmsg = nil;
if(MSD != nil && D != nil ){
	D=D*5;
	if(D >= MSD){
             return true;
          }else{
             errmsg = "需满足公式  MSD ≦ D×5 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：MSD≦D×5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046906052624,1001241,'20','let errmsg = nil;
if(MSD != nil && L != nil  && LA != nil && LB != nil && T != nil){
	L=L-LA-LB-T-2;
	if( L >= MSD){
             return true;
          }else{
             errmsg = "需满足公式 MSD ≦L-LA-LB-T-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：MSD≦L-LA-LB-T-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046906052625,1001241,'20','fn checkMap(D){
    let newMap=seq.map("8",8,"10",10,"12",12,"12A",12,"15",15,"17",17,"17A",17,"20",20,"25",25,"30",30,"35",35,"40",40,"45",45);
    let newData=nil;
    for x in newMap {
        if(D==x.key){
        newData=x.value;
        }
    }
    return newData;
}
let errmsg = nil;
if(MMD != nil && D != nil ){
   let D=checkMap(D);
	D=D*5;
	if(D >= MMD){
             return true;
          }else{
             errmsg = "需满足公式 MMD ≦ D×5 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：MMD≦D×5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246912,1001241,'20','let errmsg = nil;
if(MMD != nil && L != nil  && LA != nil && LB != nil && T != nil){
	L=L-LA-LB-T-2;
	if(MMD >= 5 && L >= MMD){
             return true;
          }else{
             errmsg = "需满足公式 5≦ MMD ≦L-LA-LB-T-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：MMD≦L-LA-LB-T-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246913,1001241,'20','let errmsg = nil;
if(NA != nil && P != nil ){
	P=P-4;
	if(NA <= P ){
             return true;
          }else{
             errmsg = "需满足公式 NA ≦ P -4 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：NA≦P-4');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246914,1001241,'20','let errmsg = nil;
if(NB != nil && Q != nil ){
	Q=Q-4;
	if(NB <= Q ){
             return true;
          }else{
             errmsg = "需满足公式 NB ≦ Q - 4 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：NB≦Q-4');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246915,1001241,'20','let errmsg = nil;
if(KA != nil && LA != nil && HA_1 != nil){
	LA=LA-2-HA;
	if(KA <= LA ){
             return true;
          }else{
             errmsg = "需满足公式 0≦ KA ≦ LA - HA -2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：KA≦LA-HA_1-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246916,1001241,'20','let errmsg = nil;
if(HA_1 != nil && LA != nil && KA != nil){
	LA=LA-2-KA;
	if(HA_1 <= LA ){
             return true;
          }else{
             errmsg = "需满足公式 0≦ HA ≦ LA-KA-2 ";
             return errmsg;
        }
}
return true;


','0',now() ,'脚本：HA_1≦LA-KA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246917,1001241,'20','let errmsg = nil;
if(KB != nil && LB != nil && HB_1 != nil){
	LB=LB-HB_1-2;
	if(KB>=0 && KB <= LB ){
             return true;
          }else{
             errmsg = "需满足公式 0 ≦ KB ≦ LB-HB-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：KB≦LB-HB_1-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246918,1001241,'20','let errmsg = nil;
if(HB_1 != nil && LB != nil && KB != nil){
	LB=LB-KB-2;
	if(HB_1>=0 && HB_1 <= LB ){
             return true;
          }else{
             errmsg = "需满足公式 0≦ HB ≦ LB-KB-2 ";
             return errmsg;
        }
}
return true;


','0',now() ,'脚本：HB_1≦LB-KB-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246919,1001241,'20','let errmsg = nil;
if(KC != nil && L != nil && LA != nil && LB != nil && T != nil && HC_1 != nil){
    L=L-LA-LB-T-HC_1-2;
	if(KC>=0 && KC <= L ){
             return true;
          }else{
             errmsg = "需满足公式 0 ≦ KC ≦ L-LA-LB-T-HC-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：KC≦L-LA-LB-T-HC_1-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246920,1001241,'20','let errmsg = nil;
if(HC_1 != nil && L != nil && LA != nil && LB != nil && T != nil && KC != nil){
    L=L-LA-LB-T-KC-2;
	if(HC_1>=0 && HC_1 <= L ){
             return true;
          }else{
             errmsg = "需满足公式 0≦ HC ≦ L-LA-LB-T-KC-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：HC_1≦L-LA-LB-T-KC-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246921,1001241,'20','let errmsg = nil;
if(KD != nil  && HC_1 != nil && KC != nil && L != nil && LA != nil && LB != nil && T != nil && HD != nil){
    KC=HC_1+2;
    L=L-LA-LB-T-HD-2;
	if(KD>=KC && KD <= L ){
             return true;
          }else{
             errmsg = "需满足公式 KC+HC+2 ≦ KD ≦ L-LA-LB-T-HD-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：KC+HC_1+2≦KD≦L-LA-LB-T-HD_1-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246922,1001241,'20','let errmsg = nil;
if(HD_1 != nil && L != nil && LA != nil && LB != nil && T != nil && KD != nil){
    L=L-LA-LB-T-KD-2;
	if(HD_1>=0 && HD_1 <= L ){
             return true;
          }else{
             errmsg = "需满足公式 0≦ HD ≦L-LA-LB-T-KD-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：HD_1≦L-LA-LB-T-KD-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246923,1001241,'20','let errmsg = nil;
if(ZA != nil  && LA != nil && HA != nil ){
    LA=LA-HA-2;
	if(ZA>=0 && ZA <= LA ){
             return true;
          }else{
             errmsg = "需满足公式 0≦ ZA ≦ LA-HA-2 ";
             return errmsg;
        }
}
return true;



','0',now() ,'脚本：ZA≦LA-HA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246924,1001241,'20','let errmsg = nil;
if(HA != nil  && LA != nil && ZA != nil ){
    LA=LA-ZA-2;
	if(HA>=0 && HA <= LA ){
             return true;
          }else{
             errmsg = "需满足公式 0≦ HA ≦ LA-ZA-2 ";
             return errmsg;
        }
}
return true;



','0',now() ,'脚本：0≦ HA ≦ LA-ZA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246925,1001241,'20','let errmsg = nil;
if(ZB != nil  &&  LB != nil &&  HB != nil ){
    LB=LB-HB-2;
    if(ZB>=0 && ZB <= LB ){
             return true;
          }else{
             errmsg = "需满足公式 0 ≦ ZB ≦ LB-HB-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：0 ≦ ZB ≦ LB-HB-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246926,1001241,'20','let errmsg = nil;
if(HB != nil  &&  LB != nil &&  ZB != nil ){
    LB=LB-ZB-2;
    if(HB>=0 && HB <= LB ){
             return true;
          }else{
             errmsg = "需满足公式 0 ≦ HB ≦LB-ZB-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：0 ≦ HB ≦LB-ZB-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246927,1001241,'20','
let errmsg = nil;
if(ZC != nil && L != nil && LA != nil && LB != nil && T != nil && HC != nil ){
    L=L-LA-LB-T-HC-2;
    if(ZC>=0 && ZC <= L ){
             return true;
          }else{
             errmsg = "需满足公式 0≦ ZC ≦ L-LA-LB-T-HC-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：0≦ ZC ≦ L-LA-LB-T-HC-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246928,1001241,'20','fn constant(L,LA,LB,T) {
  let  l=L-LA-LB-T;
  return l;
}
let errmsg = nil;
if(HC != nil && L != nil && LA != nil && LB != nil && T != nil && ZC != nil ){
    ZC=constant(L,LA,LB,T)-ZC-2;
    if(HC>=0 && HC <= ZC ){
             return true;
          }else{
             errmsg = "需满足公式 0≦HC≦ℓ-ZC-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：0≦HC≦ℓ-ZC-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246929,1001241,'20','fn constant(L,LA,LB,T) {
  let  l=L-LA-LB-T;
  return l;
}
let errmsg = nil;
if(ZD != nil && L != nil && LA != nil && LB != nil && T != nil && HD != nil ){
    HD=constant(L,LA,LB,T)-HD-2;
    if(ZD>=0 && ZD <= HD ){
             return true;
          }else{
             errmsg = "需满足公式 0 ≦ ZD ≦ℓ-HD-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：0 ≦ ZD ≦ℓ-HD-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246930,1001241,'20','fn constant(L,LA,LB,T) {
  let  l=L-LA-LB-T;
  return l;
}
let errmsg = nil;
if(HD != nil && L != nil && LA != nil && LB != nil && T != nil && ZD != nil){
    ZD=constant(L,LA,LB,T)-ZD-2;
    if(HD>=0 && HD <= ZD ){
             return true;
          }else{
             errmsg = "需满足公式 0 ≦ HD ≦ℓ-ZD-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：0 ≦ HD ≦ℓ-ZD-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246931,1001241,'20','let a=seq.list(27,31,33,34,36,37,38,39);
let errmsg = nil;
if(TA!= nil && P != nil){
    if(include(a,P)){
      errmsg = "P=27,31,33,34,36～39,41～44,46～48 不可制作此追加工 TA ";
      return errmsg;
    }

}
return true;


','0',now() ,'脚本： TA P=27,31,33,34,36～39，41～44，46～48 或 Q=27,31,33,34,36～39，41～44，46～48不可制作此追加');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046910246932,1001241,'20','let errmsg = nil;
let b=seq.list(27,31,33,34,36,37,38,39);
if(TA!= nil  && Q != nil){
   if(include(b,Q)){
      errmsg = "Q=27,31,33,34,36～39,41～44,46～48 不可制作此追加工 TA ";
      return errmsg;
    }
}
return true;



','0',now() ,'脚本：Q=27,31,33,34,36～39，41～44，46～48不可制作此追加');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046914441216,1001241,'20','let errmsg = nil;
let a=seq.list(27,31,33,34,36,37,38,39);
if(TB!= nil && P != nil ){
    if(include(a,P)){
      errmsg = "P=27,31,33,34,36～39,41～44,46～48 不可制作此追加工 TB ";
      return errmsg;
    }
}
return true;


','0',now() ,'脚本：TB  P=27,31,33,34,36～39，41～44，46～48或');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046914441217,1001241,'20','
let errmsg = nil;
let b=seq.list(27,31,33,34,36,37,38,39);
if(TB!= nil && Q != nil ){
    if(include(b,Q)){
      errmsg = "P=27,31,33,34,36～39,41～44,46～48 不可制作此追加工 TB ";
      return errmsg;
    }
}
return true;



','0',now() ,'脚本：Q=27,31,33,34,36～39，41～44，46～48不可制作此追加工');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046914441218,1001241,'20','
let errmsg = nil;
let a=seq.list(27,31,33,34,36,37,38,39);
if(TD!= nil && Q != nil ){
    if(include(a,Q)){
      errmsg = "P=27,31,33,34,36～39,41～44,46～48 不可制作此追加工 TD ";
      return errmsg;
    }
}
return true;

','0',now() ,'脚本：TD  P=27,31,33,34,36～39，41～44，46～48');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046914441219,1001241,'20','
let errmsg = nil;
let a=seq.list(27,31,33,34,36,37,38,39);
if(TD!= nil && Q != nil ){
    if(include(a,Q)){
      errmsg = "Q=27,31,33,34,36～39,41～44,46～48 不可制作此追加工 TD ";
      return errmsg;
    }
}
return true;



','0',now() ,'脚本：Q=27,31,33,34,36～39，41～44，46～48不可制作此追加工');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046914441220,1001241,'20','let errmsg = nil;
if(TA != nil && LA != nil){
    LA=LA-3;
    if(TA <= LA ){
             return true;
          }else{
             errmsg = "需满足公式 TA ≦ LA-3 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本： TA ≦ LA-3');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046914441221,1001241,'20','let errmsg = nil;
if(TB != nil && LB != nil){
    LB=LB-3;
    if(TB <= LB ){
             return true;
          }else{
             errmsg = "需满足公式 TB ≦ LB-3 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：TB ≦ LB-3');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046914441222,1001241,'20','fn constant(L,LA,LB,T) {
  let  l=L-LA-LB-T;
  return l;
}
let errmsg = nil;
if(TD != nil && L != nil && LA != nil && LB != nil && T != nil ){
    l=constant(L,LA,LB,T)-3;
    if(TD <= l ){
             return true;
          }else{
             errmsg = "需满足公式 TD ≦ ℓ-3 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本： TD ≦ ℓ-3');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046914441223,1001241,'20','fn getConstant(P) {
  let  l=0;
  if( 5<=P && P<= 10){
    l=8;
    return l;
  }elsif(11<=P && P<= 25){
    l=10;
    return l;
  }elsif( 26<=P && P<= 37){
    l=15;
    return l;
  }elsif( 38<=P && P<= 48){
     l=20;
     return l;
  }
  return l;
}
let errmsg = nil;
if(SA != nil && LA != nil && P != nil ){
    l=getConstant(P);
    LA=LA-l;
    if(SA>=0 && SA <= LA ){
         return true;
    }else{
       errmsg = "需满足公式 0 ≦ SA ≦ LA-ℓ ";
       return errmsg;
    }
}
return true;


','0',now() ,'脚本：0≦ SA ≦ LA-ℓ');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046914441224,1001241,'20','fn getConstant(Q) {
  let  l=0;
  if( 5<=Q && Q<= 10){
    l=8;
    return l;
  }elsif(11<=Q && Q<= 25){
    l=10;
    return l;
  }elsif( 26<=Q && Q<= 37){
    l=15;
    return l;
  }elsif( 38<=Q && Q<= 48){
     l=20;
     return l;
  }
  return l;
}
let errmsg = nil;
if(SB != nil && LB != nil && Q != nil ){
    l=getConstant(Q);
    LB=LB-l;
    if(SB>=0 && SB <= LB ){
         return true;
    }else{
       errmsg = "需满足公式 0 ≦ SB ≦ LB - ℓ ";
       return errmsg;
    }
}
return true;

','0',now() ,'脚本：0≦SB≦LB-ℓ');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046914441225,1001241,'20','let errmsg = nil;
if(WA != nil && LA != nil && GA != nil ){
    LA=LA-GA-2;
    if(WA >=0 && WA <= LA ){
         return true;
    }else{
       errmsg = "需满足公式 0 ≦ WA ≦ LA-GA-2 ";
       return errmsg;
    }
}
return true;

','0',now() ,'脚本：0 ≦ WA ≦ LA-GA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046914441226,1001241,'20','let errmsg = nil;
if(WB != nil && LB != nil && GB != nil ){
    LB=LB-GB-2;
    if(WB >=0 && WB <= LB ){
         return true;
    }else{
       errmsg = "需满足公式 0 ≦ WB ≦ LB-GB-2 ";
       return errmsg;
    }
}
return true;

','0',now() ,'脚本：0 ≦ WB ≦ LB-GB-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046914441227,1001241,'20','fn constant(L,LA,LB,T) {
  let  l=L-LA-LB-T;
  return l;
}
let errmsg = nil;
if(WD != nil && L != nil && LA != nil && LB != nil && T != nil && GD != nil ){
    GD=constant(L,LA,LB,T)-GD-2;
    if(WD>=0 && WD <= GD ){
             return true;
          }else{
             errmsg = "需满足公式 0 ≦ WD ≦ ℓ-GD-2 ";
             return errmsg;
    }
}
return true;

','0',now() ,'脚本：0 ≦ WD ≦ ℓ-GD-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674318046914441228,1001241,'20','
fn constant(L,LA,LB,T) {
  let  l=L-LA-LB-T;
  return l;
}
if(HD_1!=nil && L != nil && LA != nil && LB != nil && T != nil && KD != nil ){
   KD=constant(L,LA,LB,T)-KD-2;
   if(HD_1>=0 && HD_1 <= KD ){
             return true;
          }else{
             errmsg = "需满足公式 HD≦L-LA-LB-T-KD-2 ";
             return errmsg;
    }
}
','0',now() ,'脚本：HD_1≦L-LA-LB-T-KD-2');
