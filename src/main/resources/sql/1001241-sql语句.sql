DELETE FROM `goods_rule` WHERE spu='1001241' AND rule_type='20';INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUES (1671338162092605440,1001241,'20','let errmsg = nil;
if(KA != nil && HA == nil ){
   errmsg = "KA与HA同时存在";
   return errmsg;
}
return true;

','0',now() ,'脚本一：KA与HA同时存在'),(1671338162096799744,1001241,'20','let errmsg = nil;
if(KB != nil && HB == nil ){
   errmsg = "KB与HB同时存在";
   return errmsg;
}
return true;

','0',now() ,'脚本二：KB与HB同时存在'),(1671338162096799745,1001241,'20','let errmsg = nil;
if(KC != nil && HC == nil ){
   errmsg = "KC与HC同时存在";
   return errmsg;
}
return true;

','0',now() ,'脚本三：KC与HC同时存在'),(1671338162096799746,1001241,'20','let errmsg = nil;
if(KD != nil && HD == nil ){
   errmsg = "KD与HD同时存在";
   return errmsg;
}
return true;

','0',now() ,'脚本四：KD与HD同时存在'),(1671338162096799747,1001241,'20','let errmsg = nil;
if(ZA != nil && HA == nil ){
   errmsg = "ZA与HA同时存在";
   return errmsg;
}
return true;

','0',now() ,'脚本五：ZA与HA同时存在'),(1671338162096799748,1001241,'20','let errmsg = nil;
if ((ZA != nil && HA != nil && AA != nil) || (ZA == nil && HA == nil && AA == nil)) {
    return true;
} else {
   errmsg = "ZA 必须与 HA 与 AA 同时存在";
   return errmsg;
}

','0',now() ,'脚本六：ZA 必须与 HA 与 AA 同时存在'),(1671338162096799749,1001241,'20','let errmsg = nil;
if ((ZB != nil && HB != nil && AB != nil) || (ZB == nil && HB == nil && AB == nil)) {
    return true;
} else {
   errmsg = "ZB 必须与 HB 与 AB 同时存在";
   return errmsg;
}

','0',now() ,'脚本七：ZB 必须与 HB 与 AB 同时存在'),(1671338162096799750,1001241,'20','let errmsg = nil;
if ((ZC != nil && HC != nil && AC != nil) || (ZC == nil && HC == nil && AC == nil)) {
    return true;
} else {
   errmsg = "ZC 必须与 HC 与 AC 同时存在";
   return errmsg;
}

','0',now() ,'脚本八：ZC 必须与 HC 与 AC 同时存在'),(1671338162096799751,1001241,'20','let errmsg = nil;
if ((ZD != nil && HD != nil && AD != nil) || (ZD == nil && HD == nil && AD == nil)) {
    return true;
} else {
   errmsg = "ZD 必须与 HD 与 AD 同时存在";
   return errmsg;
}

','0',now() ,'脚本九：ZD 必须与 HD 与 AD 同时存在'),(1671338162096799752,1001241,'20','let errmsg = nil;
if ((WA != nil && GA != nil && AA != nil) || (WA == nil && GA == nil && AA == nil)) {
    return true;
} else {
   errmsg = "WA 必须与 GA 与 AA 同时存在";
   return errmsg;
}

','0',now() ,'脚本十：WA 必须与 GA 与 AA 同时存在'),(1671338162096799753,1001241,'20','let errmsg = nil;
if ((WB != nil && GB != nil && AB != nil) || (WB == nil && GB == nil && AB == nil)) {
    return true;
} else {
   errmsg = "WB 必须与 GB 与 AB 同时存在";
   return errmsg;
}

','0',now() ,'脚本十一：WB 必须与 GB 与 AB 同时存在'),(1671338162096799754,1001241,'20','let errmsg = nil;
if ((WD != nil && GD != nil && AC != nil) || (WD == nil && GD == nil && AC == nil)) {
    return true;
} else {
   errmsg = "WD 必须与 GD 与 AC 同时存在";
   return errmsg;
}

','0',now() ,'脚本十二：WD 必须与 GD 与 AC 同时存在'),(1671338162096799755,1001241,'20','let errmsg = nil;
if(KC != nil && KD == nil ){
   errmsg = "KC 必须与 KD 同时存在";
   return errmsg;
}
return true;

','0',now() ,'脚本十三：KC 必须与 KD 同时存在'),(1671338162096799756,1001241,'20','let errmsg = nil;
if(ZC != nil && ZD == nil ){
   errmsg = "ZC 必须与 ZD 同时存在";
   return errmsg;
}
return true;

','0',now() ,'脚本十四：ZC 必须与 ZD 同时存在'),(1671338162096799757,1001241,'20','let errmsg = nil;
if(L != nil && LA != nil && LB != nil && T != nil){
	if(L>LA+LB+T){
             return true;
          }else{
             errmsg = "需满足公式 L> LA + LB + T";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本十五：L > LA+LB+T'),(1671338162096799758,1001241,'20','let errmsg = nil;
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

','0',now() ,'脚本十六：LA+LB≤L÷2'),(1671338162096799759,1001241,'20','let errmsg = nil;
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

','0',now() ,'脚本十七：MA≦LA-2'),(1671338162096799760,1001241,'20','let errmsg = nil;
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

','0',now() ,'脚本十八：MSA ≦ LA-2'),(1671338162096799761,1001241,'20','
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

','0',now() ,'脚本十九： MMA ≦ LA-2'),(1671338162096799762,1001241,'20','let errmsg = nil;
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

','0',now() ,'脚本二十： MB ≦ LB-2'),(1671338162096799763,1001241,'20','let errmsg = nil;
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

','0',now() ,'脚本二十一： MSB ≦ LB-2'),(1671338162100994048,1001241,'20','let errmsg = nil;
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

','0',now() ,'脚本二十二： MMB ≦ LB-2'),(1671338162100994049,1001241,'20','
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

','0',now() ,'脚本二十三：MD ≦ D×5'),(1671338162100994050,1001241,'20','let errmsg = nil;
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

','0',now() ,'脚本二十四： MD ≦ L-LA-LB-T-2'),(1671338162100994051,1001241,'20','let errmsg = nil;
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

','0',now() ,'脚本二十五：MSD ≦D×5'),(1671338162100994052,1001241,'20','let errmsg = nil;
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

','0',now() ,'脚本二十六：MSD ≦L-LA-LB-T-2'),(1671338162100994053,1001241,'20','fn checkMap(D){
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

','0',now() ,'脚本二十七：MMD ≦D×5'),(1671338162100994054,1001241,'20','let errmsg = nil;
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

','0',now() ,'脚本二十八：MMD ≦L-LA-LB-T-2'),(1671338162100994055,1001241,'20','let errmsg = nil;
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

','0',now() ,'脚本二十九：NA ≦ P -4'),(1671338162100994056,1001241,'20','let errmsg = nil;
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

','0',now() ,'脚本三十：NB ≦ Q - 4'),(1671338162100994057,1001241,'20','let errmsg = nil;
if(KA != nil && LA != nil && HA != nil){
	LA=LA-2-HA;
	if(KA <= LA ){
             return true;
          }else{
             errmsg = "需满足公式 0≦ KA ≦ LA - HA -2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本三十一：0≦ KA ≦ LA - HA -2'),(1671338162100994058,1001241,'20','let errmsg = nil;
if(HA != nil && LA != nil && KA != nil){
	LA=LA-2-KA;
	if(HA <= LA ){
             return true;
          }else{
             errmsg = "需满足公式 0≦ HA ≦ LA-KA-2 ";
             return errmsg;
        }
}
return true;


','0',now() ,'脚本三十二：0≦ HA ≦ LA-KA-2'),(1671338162100994059,1001241,'20','let errmsg = nil;
if(KB != nil && LB != nil && HB != nil){
	LB=LB-HB-2;
	if(KB>=0 && KB <= LB ){
             return true;
          }else{
             errmsg = "需满足公式 0 ≦ KB ≦ LB-HB-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本三十三：0 ≦ KB ≦ LB-HB-2'),(1671338162100994060,1001241,'20','let errmsg = nil;
if(HB != nil && LB != nil && KB != nil){
	LB=LB-KB-2;
	if(HB>=0 && HB <= LB ){
             return true;
          }else{
             errmsg = "需满足公式 0≦ HB ≦ LB-KB-2 ";
             return errmsg;
        }
}
return true;


','0',now() ,'脚本三十四：0≦ HB ≦ LB-KB-2'),(1671338162100994061,1001241,'20','let errmsg = nil;
if(KC != nil && L != nil && LA != nil && LB != nil && T != nil && HC != nil){
    L=L-LA-LB-T-HC-2;
	if(KC>=0 && KC <= L ){
             return true;
          }else{
             errmsg = "需满足公式 0 ≦ KC ≦ L-LA-LB-T-HC-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本三十五：0≦KC≦(L-LA-LB-T)-HC-2'),(1671338162100994062,1001241,'20','let errmsg = nil;
if(HC != nil && L != nil && LA != nil && LB != nil && T != nil && KC != nil){
    L=L-LA-LB-T-KC-2;
	if(HC>=0 && HC <= L ){
             return true;
          }else{
             errmsg = "需满足公式 0≦ HC ≦ L-LA-LB-T-KC-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本三十六：0≦ HC ≦ L-LA-LB-T-KC-2'),(1671338162100994063,1001241,'20','let errmsg = nil;
if(KD != nil  && HC != nil && KC != nil && L != nil && LA != nil && LB != nil && T != nil && HD != nil){
    KC=HC+2;
    L=L-LA-LB-T-HD-2;
	if(KD>=KC && KD <= L ){
             return true;
          }else{
             errmsg = "需满足公式 KC+HC+2 ≦ KD ≦ L-LA-LB-T-HD-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本三十七：KC+HC+2 ≦ KD ≦ L-LA-LB-T-HD-2'),(1671338162100994064,1001241,'20','let errmsg = nil;
if(HD != nil && L != nil && LA != nil && LB != nil && T != nil && KD != nil){
    L=L-LA-LB-T-KD-2;
	if(HD>=0 && HD <= L ){
             return true;
          }else{
             errmsg = "需满足公式 0≦ HD ≦L-LA-LB-T-KD-2 ";
             return errmsg;
        }
}
return true;

','0',now() ,'脚本三十八：0≦ HD ≦L-LA-LB-T-KD-2'),(1671338162100994065,1001241,'20','let errmsg = nil;
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



','0',now() ,'脚本三十九：0≦ ZA ≦ LA-HA-2'),(1671338162100994066,1001241,'20','let errmsg = nil;
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



','0',now() ,'脚本四十：0≦ HA ≦ LA-ZA-2'),(1671338162100994067,1001241,'20','let errmsg = nil;
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

','0',now() ,'脚本四十一：0 ≦ ZB ≦ LB-HB-2'),(1671338162105188352,1001241,'20','let errmsg = nil;
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

','0',now() ,'脚本四十二：0 ≦ HB ≦LB-ZB-2'),(1671338162105188353,1001241,'20','
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

','0',now() ,'脚本四十三：0≦ ZC ≦ L-LA-LB-T-HC-2'),(1671338162105188354,1001241,'20','fn constant(L,LA,LB,T) {
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

','0',now() ,'脚本四十四：0≦HC≦ℓ-ZC-2'),(1671338162105188355,1001241,'20','fn constant(L,LA,LB,T) {
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

','0',now() ,'脚本四十五：0 ≦ ZD ≦ℓ-HD-2'),(1671338162105188356,1001241,'20','fn constant(L,LA,LB,T) {
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

','0',now() ,'脚本四十六：0 ≦ HD ≦ℓ-ZD-2'),(1671338162105188357,1001241,'20','let a=seq.list(27,31,33,34,36,37,38,39);
let b=seq.list(27,31,33,34,36,37,38,39);
let errmsg = nil;
if(TA!= nil && P != nil && Q != nil){
    if(include(a,P)){
      errmsg = "P=27,31,33,34,36～39,41～44,46～48 不可制作此追加工 TA ";
      return errmsg;
    }elsif(include(b,Q)){
      errmsg = "P=27,31,33,34,36～39,41～44,46～48 不可制作此追加工 TA ";
      return errmsg;
    }
}
return true;

','0',now() ,'脚本四十七： TA P=27,31,33,34,36～39，41～44，46～48 或 Q=27,31,33,34,36～39，41～44，46～48不可制作此追加'),(1671338162105188358,1001241,'20','let errmsg = nil;
if(TB!= nil && P != nil && Q != nil ){
    if(include(a,P)){
      errmsg = "P=27,31,33,34,36～39,41～44,46～48 不可制作此追加工 TB ";
      return errmsg;
    }elsif(include(b,Q)){
      errmsg = "P=27,31,33,34,36～39,41～44,46～48 不可制作此追加工 TB ";
      return errmsg;
    }
}
return true;

','0',now() ,'脚本四十八：TB  P=27,31,33,34,36～39，41～44，46～48或Q=27,31,33,34,36～39，41～44，46～48不可制作此追加工'),(1671338162105188359,1001241,'20','let errmsg = nil;
if(TD!= nil && P != nil && Q != nil ){
    if(P==27 ||  P==31 ||  P==33|| P==34 ){
            errmsg = "P=27,31,33,34,36～39，41～44，46～48 不可制作此追加工 TD ";
            return errmsg;
    }
    if(36<=P && P<=39){
           errmsg = "P=27,31,33,34,36～39，41～44，46～48 不可制作此追加工 TD";
           return errmsg;
    }
    if(41<=P && P<=44){
         errmsg = "P=27,31,33,34,36～39，41～44，46～48 不可制作此追加工 TD";
         return errmsg;
    }
    if( 46<=P && P<= 48){
          errmsg = "P=27,31,33,34,36～39，41～44，46～48 不可制作此追加工 TD";
          return errmsg;
    }
    if(Q==27 ||  P==31 ||  P==33|| P==34 ){
          errmsg = "Q=27,31,33,34,36～39，41～44，46～48 不可制作此追加工 TD";
          return errmsg;
    }
    if(36<=Q && Q<=39){
       errmsg = "Q=27,31,33,34,36～39，41～44，46～48 不可制作此追加工 TD";
       return errmsg;
    }
    if(41<=Q && Q<=44){
       errmsg = "Q=27,31,33,34,36～39，41～44，46～48 不可制作此追加工 TD";
       return errmsg;
    }
    if( 46<=Q && Q<= 48){
       errmsg = "Q=27,31,33,34,36～39，41～44，46～48 不可制作此追加工 TD";
       return errmsg;
    }
}
return true;

','0',now() ,'脚本四十九：TD  P=27,31,33,34,36～39，41～44，46～48或Q=27,31,33,34,36～39，41～44，46～48不可制作此追加工'),(1671338162105188360,1001241,'20','let errmsg = nil;
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

','0',now() ,'脚本五十： TA ≦ LA-3'),(1671338162105188361,1001241,'20','let errmsg = nil;
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

','0',now() ,'脚本五十一：TB ≦ LB-3'),(1671338162105188362,1001241,'20','fn constant(L,LA,LB,T) {
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

','0',now() ,'脚本五十二： TD ≦ ℓ-3'),(1671338162105188363,1001241,'20','fn getConstant(P) {
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


','0',now() ,'脚本五十三：0≦ SA ≦ LA-ℓ'),(1671338162105188364,1001241,'20','fn getConstant(Q) {
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

','0',now() ,'脚本五十四：0≦SB≦LB-ℓ'),(1671338162109382656,1001241,'20','let errmsg = nil;
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

','0',now() ,'脚本五十五：0 ≦ WA ≦ LA-GA-2'),(1671338162109382657,1001241,'20','let errmsg = nil;
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

','0',now() ,'脚本五十六：0 ≦ WB ≦ LB-GB-2'),(1671338162109382658,1001241,'20','fn constant(L,LA,LB,T) {
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
','0',now() ,'脚本五十七：0 ≦ WD ≦ ℓ-GD-2')