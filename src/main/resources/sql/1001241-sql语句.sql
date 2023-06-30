DELETE FROM `goods_rule` WHERE spu='1001241' AND rule_type='20';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320241950720,1001241,'20','let errmsg = nil;
if ((KA != nil && HA_1 != nil ) || (KA == nil && HA_1 == nil )) {
    return true;
} else {
   errmsg = "KA与HA同时存在";
   return errmsg;
}

','0',now() ,'脚本：KA与HA_1同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320246145024,1001241,'20','let errmsg = nil;
if ((KB != nil && HB_1 != nil ) || (KB == nil && HB_1 == nil )) {
    return true;
} else {
   errmsg = "KB与HB同时存在";
   return errmsg;
}

','0',now() ,'脚本：KB与HB_1同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320246145025,1001241,'20','let errmsg = nil;
if ((KC != nil && HC_1 != nil ) || (KC == nil && HC_1 == nil )) {
    return true;
} else {
   errmsg = "KC与HC同时存在";
   return errmsg;
}

','0',now() ,'脚本：KC与HC_1同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320246145026,1001241,'20','let errmsg = nil;
if ((KD != nil && HD_1 != nil ) || (KD == nil && HD_1 == nil )) {
    return true;
} else {
   errmsg = "KD与HD同时存在";
   return errmsg;
}

','0',now() ,'脚本：KD与HD同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320246145027,1001241,'20','let errmsg = nil;
if ((ZA != nil && HA != nil && AA_1 != nil) || (ZA == nil && HA == nil && AA_1 == nil)) {
    return true;
} else {
   errmsg = "ZA 必须与 HA 与 AA 同时存在";
   return errmsg;
}

','0',now() ,'脚本：ZA 必须与 HA 与 AA_1 同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320246145028,1001241,'20','let errmsg = nil;
if ((ZB != nil && HB != nil && AB_1 != nil) || (ZB == nil && HB == nil && AB_1 == nil)) {
    return true;
} else {
   errmsg = "ZB 必须与 HB 与 AB 同时存在";
   return errmsg;
}

','0',now() ,'脚本：ZB 必须与 HB 与 AB 同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320246145029,1001241,'20','let errmsg = nil;
if ((ZC != nil && HC != nil && AC_1 != nil) || (ZC == nil && HC == nil && AC_1 == nil)) {
    return true;
} else {
   errmsg = "ZC 必须与 HC 与 AC 同时存在";
   return errmsg;
}

','0',now() ,'脚本：ZC 必须与 HC 与 AC 同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320246145030,1001241,'20','let errmsg = nil;
if ((ZD != nil && HD != nil && AD != nil) || (ZD == nil && HD == nil && AD == nil)) {
    return true;
} else {
   errmsg = "ZD 必须与 HD 与 AD 同时存在";
   return errmsg;
}

','0',now() ,'脚本：ZD 必须与 HD 与 AD 同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320246145031,1001241,'20','let errmsg = nil;
if ((WA != nil && GA != nil && AA != nil) || (WA == nil && GA == nil && AA == nil)) {
    return true;
} else {
   errmsg = "WA 必须与 GA 与 AA 同时存在";
   return errmsg;
}

','0',now() ,'脚本：WA 必须与 GA 与 AA 同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320246145032,1001241,'20','let errmsg = nil;
if ((WB != nil && GB != nil && AB != nil) || (WB == nil && GB == nil && AB == nil)) {
    return true;
} else {
   errmsg = "WB 必须与 GB 与 AB 同时存在";
   return errmsg;
}

','0',now() ,'脚本：WB 必须与 GB 与 AB 同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320246145033,1001241,'20','let errmsg = nil;
if ((WD != nil && GD != nil && AC != nil) || (WD == nil && GD == nil && AC == nil)) {
    return true;
} else {
   errmsg = "WD 必须与 GD 与 AC 同时存在";
   return errmsg;
}

','0',now() ,'脚本：WD 必须与 GD 与 AC 同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320246145034,1001241,'20','let errmsg = nil;
if(KD != nil && KC == nil ){
   errmsg = "KD输值的话，KC必须有值";
   return errmsg;
}
return true;

','0',now() ,'脚本：KD 必须与 KC 同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320246145035,1001241,'20','let errmsg = nil;
if(ZD != nil && ZC == nil ){
   errmsg = "ZD输值的话，ZC必须有值";
   return errmsg;
}
return true;

','0',now() ,'脚本：ZD 必须与 ZC 同时存在');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320246145036,1001241,'20','let errmsg = nil;
if(L != nil && LA != nil && LB != nil && T != nil){
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   T=decimal(T);
	if(L>LA+LB+T){
             return true;
          }else{
             errmsg = "需满足公式 L> LA + LB + T";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：L > LA+LB+T');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320246145037,1001241,'20','let errmsg = nil;
if(LA != nil && LB != nil && L != nil ){
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320246145038,1001241,'20','let errmsg = nil;
if(MA != nil && LA != nil){
   MA=decimal(MA);
   LA=decimal(LA);
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320246145039,1001241,'20','let errmsg = nil;
if(MSA != nil && LA != nil ){
   MSA=decimal(MSA);
   LA=decimal(LA);
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320246145040,1001241,'20','
let errmsg = nil;
if(MMA != nil && LA != nil ){
   MMA=decimal(MMA);
   LA=decimal(LA);
	LA=LA-2M;
	if(LA >= MMA){
             return true;
          }else{
             errmsg = "需满足公式 MMA ≦ LA-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本： MMA ≦ LA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320246145041,1001241,'20','let errmsg = nil;
if(MB != nil && LA != nil ){
   MB=decimal(MB);
   LA=decimal(LA);
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320246145042,1001241,'20','let errmsg = nil;
if(MSB != nil && LA != nil ){
   MSB=decimal(MSB);
   LA=decimal(LA);
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320250339328,1001241,'20','let errmsg = nil;
if(MMB != nil && LA != nil ){
   MMB=decimal(MMB);
   LA=decimal(LA);
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320250339329,1001241,'20','fn checkMap(D){
    let newMap=seq.map(8,8M,10,10M,12,12M,"12A",12M,15,15M,17,17M,"17A",17M,20,20M,25,25M,30,30M,35,35M,40,40M,45,45M);
    let newData=nil;
    for x in newMap {
        if(D==x.key){
        newData=x.value;
        }
    }
    return newData;
}
let errmsg = nil;
if(MD != nil && D != nil ){
   D=checkMap(D);
	D=D*5M;
   MD=decimal(MD);
	if(D >= MD){
             return true;
          }else{
             errmsg = "需满足公式 MD ≦ D×5 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：MD≦D×5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320250339330,1001241,'20','let errmsg = nil;
if(MD != nil && L != nil  && LA != nil && LB != nil && T != nil){
   MD=decimal(MD);
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   T=decimal(T);
	L=L-LA-LB-T-2M;
	if(L >= MD){
             return true;
          }else{
             errmsg = "需满足公式 MD ≦ L-LA-LB-T-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本： MD≦L-LA-LB-T-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320250339331,1001241,'20','fn checkMap(D){
    let newMap=seq.map("8",8M,"10",10M,"12",12M,"12A",12M,"15",15M,"17",17M,"17A",17M,"20",20M,"25",25M,"30",30M,"35",35M,"40",40M,"45",45M);
    let newData=nil;
    for x in newMap {
        if(D==x.key){
        newData=x.value;
        }
    }
    return newData;
}
let errmsg = nil;
if(MSD != nil && D != nil ){
   MSD=decimal(MSD);
   D=checkMap(D);
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320250339332,1001241,'20','let errmsg = nil;
if(MSD != nil && L != nil  && LA != nil && LB != nil && T != nil){
   MSD=decimal(MSD);
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   T=decimal(T);
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320250339333,1001241,'20','fn checkMap(D){
    let newMap=seq.map("8",8M,"10",10M,"12",12M,"12A",12M,"15",15M,"17",17M,"17A",17M,"20",20M,"25",25M,"30",30M,"35",35M,"40",40M,"45",45M);
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
	D=D*5M;
   MMD=decimal(MMD);
	if(D >= MMD){
             return true;
          }else{
             errmsg = "需满足公式 MMD ≦ D×5 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：MMD≦D×5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320250339334,1001241,'20','let errmsg = nil;
if(MMD != nil && L != nil  && LA != nil && LB != nil && T != nil){
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   T=decimal(T);
   MMD=decimal(MMD);
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320250339335,1001241,'20','let errmsg = nil;
if(NA != nil && P != nil ){
   NA=decimal(NA);
   P=decimal(P);
	P=P-4M;
	if(NA <= P ){
             return true;
          }else{
             errmsg = "需满足公式 NA ≦ P -4 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：NA≦P-4');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320250339336,1001241,'20','let errmsg = nil;
if(NB != nil && Q != nil ){
   NB=decimal(NB);
   Q=decimal(Q);
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320250339337,1001241,'20','let errmsg = nil;
if(KA != nil && LA != nil && HA_1 != nil){
   KA=decimal(KA);
   LA=decimal(LA);
   HA_1=decimal(HA_1);
	LA=LA-2-HA_1;
	if(KA <= LA ){
             return true;
          }else{
             errmsg = "需满足公式 0≦ KA ≦ LA - HA -2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：KA≦LA-HA_1-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320250339338,1001241,'20','let errmsg = nil;
if(HA_1 != nil && LA != nil && KA != nil){
   HA_1=decimal(HA_1);
   LA=decimal(LA);
   KA=decimal(KA);
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320250339339,1001241,'20','let errmsg = nil;
if(KB != nil && LB != nil && HB_1 != nil){
   KB=decimal(KB);
   LB=decimal(LB);
   HB_1=decimal(HB_1);

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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320250339340,1001241,'20','let errmsg = nil;
if(HB_1 != nil && LB != nil && KB != nil){
   KB=decimal(KB);
   HB_1=decimal(HB_1);
   LB=decimal(LB);


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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320250339341,1001241,'20','let errmsg = nil;
if(KC != nil && L != nil && LA != nil && LB != nil && T != nil && HC_1 != nil){
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   T=decimal(T);
   KC=decimal(KC);
   HC_1=decimal(HC_1);

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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320250339342,1001241,'20','let errmsg = nil;
if(HC_1 != nil && L != nil && LA != nil && LB != nil && T != nil && KC != nil){
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   T=decimal(T);
   KC=decimal(KC);
   HC_1=decimal(HC_1);

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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320250339343,1001241,'20','let errmsg = nil;
if(KD != nil  && HC_1 != nil && KC != nil && L != nil && LA != nil && LB != nil && T != nil && HD != nil){
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   T=decimal(T);

   KD=decimal(KD);
   HD_1=decimal(HD_1);


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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533632,1001241,'20','let errmsg = nil;
if(HD_1 != nil && L != nil && LA != nil && LB != nil && T != nil && KD != nil){
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   T=decimal(T);
   KD=decimal(KD);
   HD_1=decimal(HD_1);


   L=L-LA-LB-T-KD-2M;

	if(HD_1>=0 && HD_1 <= L ){
             return true;
   }else{
      errmsg = "需满足公式 0≦ HD ≦L-LA-LB-T-KD-2 ";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：HD_1≦L-LA-LB-T-KD-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533633,1001241,'20','let errmsg = nil;
if(ZA != nil  && LA != nil && HA != nil ){
   LA=decimal(LA);
   ZA=decimal(ZA);
   HA=decimal(HA);

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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533634,1001241,'20','let errmsg = nil;
if(HA != nil  && LA != nil && ZA != nil ){
   HA=decimal(HA);
   LA=decimal(LA);
   ZA=decimal(ZA);

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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533635,1001241,'20','let errmsg = nil;
if(ZB != nil  &&  LB != nil &&  HB != nil ){
   ZB=decimal(ZB);
   LB=decimal(LB);
   HB=decimal(HB);

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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533636,1001241,'20','let errmsg = nil;
if(HB != nil  &&  LB != nil &&  ZB != nil ){
   ZB=decimal(ZB);
   LB=decimal(LB);
   HB=decimal(HB);

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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533637,1001241,'20','
let errmsg = nil;
if(ZC != nil && L != nil && LA != nil && LB != nil && T != nil && HC != nil ){
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   T=decimal(T);
   ZC=decimal(ZC);
   HC=decimal(HC);

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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533638,1001241,'20','fn constant(L,LA,LB,T) {
  let  l=L-LA-LB-T;
  return decimal(l);
}
let errmsg = nil;
if(HC != nil && L != nil && LA != nil && LB != nil && T != nil && ZC != nil ){
    l=constant(L,LA,LB,T);
    ZC=decimal(ZC);
    HC=decimal(HC);

    ZC=l-ZC-2;
    if(HC>=0 && HC <= ZC ){
             return true;
          }else{
             errmsg = "需满足公式 0≦HC≦ℓ-ZC-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：0≦HC≦ℓ-ZC-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533639,1001241,'20','fn constant(L,LA,LB,T) {
  let  l=L-LA-LB-T;
  return decimal(l);
}
let errmsg = nil;
if(ZD != nil && L != nil && LA != nil && LB != nil && T != nil && HD != nil ){
    l=constant(L,LA,LB,T);
    HD=decimal(HD);
    ZD=decimal(ZD);

    HD=l-HD-2M;
    if(ZD>=0 && ZD <= HD ){
             return true;
          }else{
             errmsg = "需满足公式 0 ≦ ZD ≦ℓ-HD-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：0 ≦ ZD ≦ℓ-HD-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533640,1001241,'20','fn constant(L,LA,LB,T) {
  let  l=L-LA-LB-T;
  return decimal(l);
}
let errmsg = nil;
if(HD != nil && L != nil && LA != nil && LB != nil && T != nil && ZD != nil){
   l=constant(L,LA,LB,T);
   ZD=decimal(ZD);
   HD=decimal(HD);

    ZD=l-ZD-2M;
    if(HD>=0 && HD <= ZD ){
             return true;
          }else{
             errmsg = "需满足公式 0 ≦ HD ≦ℓ-ZD-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本：0 ≦ HD ≦ℓ-ZD-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533641,1001241,'20','let a=seq.list(27,31,33,34,36,37,38,39);
let errmsg = nil;
if(TA!= nil && P != nil){
   P=long(P);

    if(include(a,P)){
      errmsg = "P=27,31,33,34,36～39,41～44,46～48 不可制作此追加工 TA ";
      return errmsg;
    }

}
return true;


','0',now() ,'脚本： TA P=27,31,33,34,36～39，41～44，46～48 或 Q=27,31,33,34,36～39，41～44，46～48不可制作此追加');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533642,1001241,'20','let errmsg = nil;
let b=seq.list(27,31,33,34,36,37,38,39);
if(TA!= nil  && Q != nil){
   Q=long(Q);

   if(include(b,Q)){
      errmsg = "Q=27,31,33,34,36～39,41～44,46～48 不可制作此追加工 TA ";
      return errmsg;
    }
}
return true;



','0',now() ,'脚本：Q=27,31,33,34,36～39，41～44，46～48不可制作此追加');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533643,1001241,'20','let errmsg = nil;
let a=seq.list(27,31,33,34,36,37,38,39);
if(TB!= nil && P != nil ){
   P=long(P);

    if(include(a,P)){
      errmsg = "P=27,31,33,34,36～39,41～44,46～48 不可制作此追加工 TB ";
      return errmsg;
    }
}
return true;


','0',now() ,'脚本：TB  P=27,31,33,34,36～39，41～44，46～48或');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533644,1001241,'20','
let errmsg = nil;
let b=seq.list(27,31,33,34,36,37,38,39);
if(TB!= nil && Q != nil ){
   Q=long(Q);

    if(include(b,Q)){
      errmsg = "P=27,31,33,34,36～39,41～44,46～48 不可制作此追加工 TB ";
      return errmsg;
    }
}
return true;



','0',now() ,'脚本：Q=27,31,33,34,36～39，41～44，46～48不可制作此追加工');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533645,1001241,'20','
let errmsg = nil;
let a=seq.list(27,31,33,34,36,37,38,39);
if(TD!= nil && Q != nil ){
   Q=long(Q);

    if(include(a,Q)){
      errmsg = "P=27,31,33,34,36～39,41～44,46～48 不可制作此追加工 TD ";
      return errmsg;
    }
}
return true;

','0',now() ,'脚本：TD  P=27,31,33,34,36～39，41～44，46～48');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533646,1001241,'20','
let errmsg = nil;
let a=seq.list(27,31,33,34,36,37,38,39);
if(TD!= nil && Q != nil ){
   Q=long(Q);

    if(include(a,Q)){
      errmsg = "Q=27,31,33,34,36～39,41～44,46～48 不可制作此追加工 TD ";
      return errmsg;
    }
}
return true;



','0',now() ,'脚本：Q=27,31,33,34,36～39，41～44，46～48不可制作此追加工');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533647,1001241,'20','let errmsg = nil;
if(TA != nil && LA != nil){
   TA=decimal(TA);
   LA=decimal(LA);


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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533648,1001241,'20','let errmsg = nil;
if(TB != nil && LB != nil){
   TB=decimal(TB);
   LB=decimal(LB);


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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533649,1001241,'20','fn constant(L,LA,LB,T) {
  let  l=L-LA-LB-T;
  return decimal(l);
}
let errmsg = nil;
if(TD != nil && L != nil && LA != nil && LB != nil && T != nil ){
    l=constant(L,LA,LB,T)-3M;
    TD=decimal(TD);

    if(TD <= l ){
             return true;
          }else{
             errmsg = "需满足公式 TD ≦ ℓ-3 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本： TD ≦ ℓ-3');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533650,1001241,'20','fn getConstant(P) {
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
   SA=decimal(SA);
   P=decimal(P);
   LA=decimal(LA);
   l=getConstant(P);
   l=decimal(l);

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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533651,1001241,'20','fn getConstant(Q) {
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
  return decimal(l);
}
let errmsg = nil;
if(SB != nil && LB != nil && Q != nil ){
   Q=decimal(Q);
   SB=decimal(SB);
   LB=decimal(LB);
   l=getConstant(Q);
   l=decimal(l);



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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533652,1001241,'20','let errmsg = nil;
if(WA != nil && LA != nil && GA != nil ){
   WA=decimal(WA);
   LA=decimal(LA);
   GA=decimal(GA);

    LA=LA-GA-2M;
    if(WA >=0 && WA <= LA ){
         return true;
    }else{
       errmsg = "需满足公式 0 ≦ WA ≦ LA-GA-2 ";
       return errmsg;
    }
}
return true;

','0',now() ,'脚本：0 ≦ WA ≦ LA-GA-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533653,1001241,'20','let errmsg = nil;
if(WB != nil && LB != nil && GB != nil ){
   WB=decimal(WB);
   LB=decimal(LB);
   GB=decimal(GB);

    LB=LB-GB-2M;
    if(WB >=0 && WB <= LB ){
         return true;
    }else{
       errmsg = "需满足公式 0 ≦ WB ≦ LB-GB-2 ";
       return errmsg;
    }
}
return true;

','0',now() ,'脚本：0 ≦ WB ≦ LB-GB-2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533654,1001241,'20','fn constant(L,LA,LB,T) {
  let  l=L-LA-LB-T;
  return decimal(l);
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

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1674704320254533655,1001241,'20','fn constant(L,LA,LB,T) {
  let  l=L-LA-LB-T;
  return l;
}
let errmsg = nil;
if(HD_1!=nil && L != nil && LA != nil && LB != nil && T != nil && KD != nil ){
   L=decimal(L);
   LA=decimal(LA);
   LB=decimal(LB);
   T=decimal(T);
   HD_1=decimal(HD_1);
   KD=decimal(KD);

   KD=constant(L,LA,LB,T)-KD-2;
   if(HD_1>=0 && HD_1 <= KD ){
             return true;
          }else{
             errmsg = "需满足公式 HD≦L-LA-LB-T-KD-2 ";
             return errmsg;
    }
}
return true;
','0',now() ,'脚本：HD_1≦L-LA-LB-T-KD-2');
