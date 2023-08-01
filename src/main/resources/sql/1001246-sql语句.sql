DELETE FROM `goods_rule` WHERE spu='1001246' AND rule_type='20';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326421581824,1001246,'20','let errmsg = nil;
if((KA!= nil && HA!= nil)||(KA== nil && HA== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(KA HA)";
   return errmsg;
}

','0',now() ,'脚本：KA,HA');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326421581825,1001246,'20','let errmsg = nil;
if((KB!= nil && HB!= nil)||(KB== nil && HB== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(KB HB)";
   return errmsg;
}

','0',now() ,'脚本：KB,HB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326421581826,1001246,'20','let errmsg = nil;
if((KC!= nil && HC!= nil)||(KC== nil && HC== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(KC HC)";
   return errmsg;
}

','0',now() ,'脚本：KC,HC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326421581827,1001246,'20','let errmsg = nil;
if((KD!= nil && HD!= nil)||(KD== nil && HD== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(KD HD)";
   return errmsg;
}

','0',now() ,'脚本：KD,HD');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326421581828,1001246,'20','let errmsg = nil;
if((ZA!= nil && HA_2!= nil && AA!= nil)||(ZA== nil && HA_2== nil && AA== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(ZA HA AA)";
   return errmsg;
}

','0',now() ,'脚本：ZA,HA_2,AA');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326421581829,1001246,'20','let errmsg = nil;
if((ZB!= nil && HB_2!= nil && AB!= nil)||(ZB== nil && HB_2== nil && AB== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(ZB HB AB)";
   return errmsg;
}

','0',now() ,'脚本：ZB,HB_2,AB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326421581830,1001246,'20','let errmsg = nil;
if((ZC!= nil && HC_2!= nil && AC!= nil)||(ZC== nil && HC_2== nil && AC== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(ZC HC AC)";
   return errmsg;
}

','0',now() ,'脚本：ZC,HC_2,AC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326421581831,1001246,'20','let errmsg = nil;
if((ZD!= nil && HD_2!= nil && AD!= nil)||(ZD== nil && HD_2== nil && AD== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(ZD HD AD)";
   return errmsg;
}

','0',now() ,'脚本：ZD,HD_2,AD');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326421581832,1001246,'20','let errmsg = nil;
if((WA!= nil && GA!= nil && AA_2!= nil)||(WA== nil && GA== nil && AA_2== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(WA GA AA)";
   return errmsg;
}

','0',now() ,'脚本：WA,GA,AA_2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326425776128,1001246,'20','let errmsg = nil;
if((WB!= nil && GB!= nil && AB_2!= nil)||(WB== nil && GB== nil && AB_2== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(WB GB AB)";
   return errmsg;
}

','0',now() ,'脚本：WB,GB,AB_2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326425776129,1001246,'20','let errmsg = nil;
if((WC!= nil && GC!= nil && AC_2!= nil)||(WC== nil && GC== nil && AC_2== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(WC GC AC)";
   return errmsg;
}

','0',now() ,'脚本：WC,GC,AC_2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326425776130,1001246,'20','let errmsg = nil;
if(MA!= nil && D!= nil){
   MA=decimal(MA);
   D=decimal(D);
   let newD=D*5;
   if(5<=MA && MA<=newD){
       return true;
   }else{
       errmsg = "需满足公式 5≤MA≤D*5";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MA≤D*5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326425776131,1001246,'20','let errmsg = nil;
if(MSA!= nil && D!= nil){
   MSA=decimal(MSA);
   D=decimal(D);
   let newD=D*5;
   if(5<=MSA && MSA<=newD){
       return true;
   }else{
       errmsg = "需满足公式 5≤MSA≤D*5";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MSA≤D*5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326425776132,1001246,'20','let errmsg = nil;
if(MMA!= nil && D!= nil){
   MMA=decimal(MMA);
   D=decimal(D);
   let newD=D*5;
   if(5<=MMA && MMA<=newD){
       return true;
   }else{
       errmsg = "需满足公式 5≤MMA≤D*5";
       return errmsg;
   }
}
return true;



','0',now() ,'脚本：5≤MMA≤D*5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326425776133,1001246,'20','
let errmsg = nil;
if(MMA!= nil && type !="KZAF"){
    errmsg = "MMA（细牙螺纹精密级）适用于KZAF型";
    return errmsg;
}
return true;


','0',now() ,'脚本：MMA（细牙螺纹精密级）适用于KZAF型');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326425776134,1001246,'20','let errmsg = nil;
if(MB!= nil && D!= nil){
   MB=decimal(MB);
   D=decimal(D);
   let newD=D*5;
   if(5<=MB && MB<=newD){
       return true;
   }else{
       errmsg = "需满足公式 5≤MB≤D*5";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MB≤D*5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326425776135,1001246,'20','let errmsg = nil;
if(MSB!= nil && D!= nil){
   MSB=decimal(MSB);
   D=decimal(D);
   let newD=D*5;
   if(5<=MSB && MSB<=newD){
       return true;
   }else{
       errmsg = "需满足公式 5≤MSB≤D*5";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤MSB≤D*5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326425776136,1001246,'20','let errmsg = nil;
if(MMB!= nil && D!= nil){
   MMB=decimal(MMB);
   D=decimal(D);
   let newD=D*5;
   if(5<=MMB && MMB<=newD){
       return true;
   }else{
       errmsg = "需满足公式 5≤MMB≤D*5";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本：5≤MMB≤D*5');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326425776137,1001246,'20','
let errmsg = nil;
if(MMA!= nil && type !="KZAF"){
    errmsg = "MMB（细牙螺纹精密级）适用于KZAF型";
    return errmsg;
}
return true;


','0',now() ,'脚本：MMB（细牙螺纹精密级）适用于KZAF型');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326425776138,1001246,'20','let errmsg = nil;
if(NA!= nil && D!= nil){
   NA=decimal(NA);
   D=decimal(D);
   let newD=D-4;
   if(NA<=newD){
       return true;
   }else{
       errmsg = "需满足公式 NA≤D-4";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：NA≤D-4');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326425776139,1001246,'20','let errmsg = nil;
if(NB!= nil && D!= nil){
   NB=decimal(NB);
   D=decimal(D);
   let newD=D-4;
   if(NB<=newD){
       return true;
   }else{
       errmsg = "需满足公式 NB≤D-4";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：NB≤D-4');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326425776140,1001246,'20','let errmsg = nil;
if(KA!= nil && L!= nil && HA!= nil){
   KA=decimal(KA);
   L=decimal(L);
   HA=decimal(HA);
   let newL=L-HA;
   if(KA<=newL){
       return true;
   }else{
       errmsg = "需满足公式 KA≤L-HA";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：KA≤L-HA');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326425776141,1001246,'20','let errmsg = nil;
if(KA!= nil && KB!= nil && HB!= nil && HA!= nil){
   KA=decimal(KA);
   KB=decimal(KB);
   HB=decimal(HB);
   HA=decimal(HA);
   let KB=KB+HB-1-HA;
   if(KA<=KB){
       return true;
   }else{
       errmsg = "KB与HA键槽保持2mm或以上距离才能生成型号";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：KA≤KB+HB-1-HA');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326429970432,1001246,'20','
let errmsg = nil;
if((type== "KZAC" && D== 20 )||(type== "KZAF" && D== 17)||(type== "KZAN" && D== 20)){
    if(HA!=nil && L!=nil && KA!=nil){
        HA=decimal(HA);
        L=decimal(L);
        KA=decimal(KA);

        let newA=L-KA;
        if(newA>=100 && HA>100){
            errmsg = "当类型为:"+type+"和D的值为"+D+"且 当L-KA≥100时 需满足公式 HA≤100";
            return errmsg;
        }elsif(newA<100 && HA>newA){
            errmsg = "当类型为:"+type+"和D的值为"+D+"且 当L-KA<100时 需满足公式 HA≤L-KA";
            return errmsg;
        }
    }
    if(HA!=nil && KB!=nil && HB!=nil && KA!=nil){
        HA=decimal(HA);
        KB=decimal(KB);
        HB=decimal(HB);
        KA=decimal(KA);


        let newKB=KB+HB-1-KA;
        if(newKB>HA){
            errmsg = "当类型为:"+type+"和D的值为"+D+"需满足公式 HA≤KB+HB-1-KA";
            return errmsg;
        }
    }
}else{
    if(HA!=nil && L!=nil  && KA!=nil){
        HA=decimal(HA);
        L=decimal(L);
        KA=decimal(KA);


        let newL=L-KA;
        if(HA>newL){
            errmsg = "需满足公式 HA≤L-KA";
            return errmsg;
        }
    }
}
return true;


','0',now() ,'脚本：复合公式 HA');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326429970433,1001246,'20','
let errmsg = nil;
if(HA!= nil && KA!= nil && KB!= nil){
   HA=decimal(HA);
   KA=decimal(KA);
   KB=decimal(KB);

   let HA=HA+KA+2;
   if(KB<HA){
      errmsg = "需满足公式 HA+KA+2≤KB";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：HA+KA+2≤KB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326429970434,1001246,'20','let errmsg = nil;
if(KB!= nil && L!= nil && HB!= nil){
   KB=decimal(KB);
   L=decimal(L);
   HB=decimal(HB);

   let newL=L-HB;
   if(KB>newL){
       errmsg = "需满足公式 KB≤L-HB";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本：KB≤L-HB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326429970435,1001246,'20','let errmsg = nil;
if(HB!= nil && KB!= nil && KC!= nil){
   HB=decimal(HB);
   KB=decimal(KB);
   KC=decimal(KC);

   let HB=HB+KB+2;
   if(KC<HB){
      errmsg = "需满足公式 HB+KB+2≤KC";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本 HB+KB+2≤KC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326429970436,1001246,'20','let errmsg = nil;
if(KC!= nil && L!= nil && HC!= nil){
   KC=decimal(KC);
   L=decimal(L);
   HC=decimal(HC);
   let L=L-HC;
   if(KC<=L){
       return true;
   }else{
       errmsg = "需满足公式 KC≤L-HC";
       return errmsg;
   }
}
return true;



','0',now() ,'脚本：KC≤L-HC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326429970437,1001246,'20','
let errmsg = nil;
if(KB!= nil && HB!= nil && KA!= nil && HA!= nil){
   KB=decimal(KB);
   HB=decimal(HB);
   KA=decimal(KA);
   HA=decimal(HA);

   let newKA=KA+HA+1;

   let newP=KA+HA+1-HB;

   if(HB>=newKA && KB<0){
       errmsg = "需满足公式 KB≥0";
       return errmsg;
   }elsif(HB<newKA && KB<newP){
       errmsg = "需满足公式 KB≥KA+HA+1-HB";
       return errmsg;
   }
}
return true;




','0',now() ,'脚本：复合公式HB≥KA+HA+1');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326429970438,1001246,'20','let errmsg = nil;
if((type== "KZAC" && D== 20 )||(type== "KZAF" && D== 17)||(type== "KZAN" && D== 20)){
    if(HB!=nil && L!=nil && KB!=nil){
        HB=decimal(HB);
        L=decimal(L);
        KB=decimal(KB);

        let newL=L-KB;
        if(newL>=100 && HB>100){
            errmsg = "当类型为:"+type+"和D的值为"+D+"且L-KB≥100时 需满足公式 HB≤100";
            return errmsg;
        }elsif(newL<100 && HB>newL){
            errmsg = "当类型为:"+type+"和D的值为"+D+"且L-KB<100时 需满足公式 HB≤L-KB";
            return errmsg;
        }
    }
    if(HB!=nil && KC!=nil && KB!=nil){
        HB=decimal(HB);
        KC=decimal(KC);
        KB=decimal(KB);

        let newK=KC-1-KB;
        if(HB > newK){
            errmsg = "当类型为:"+type+"和D的值为"+D+"需满足公式 HB≤KC-1-KB";
            return errmsg;
        }
    }
}else{
    if(HB!=nil && L!=nil  && KB!=nil){
        HB=decimal(HB);
        L=decimal(L);
        KB=decimal(KB);

        let newL=L-KB;
        if(HB>newL){
            errmsg = "需满足公式 HB≤L-KB";
            return errmsg;
        }
    }
}
return true;


','0',now() ,'脚本：复合脚本 HB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326429970439,1001246,'20','let errmsg = nil;
if((type== "KZAC" && D== 20 )||(type== "KZAF" && D== 17)||(type== "KZAN" && D== 20)){
    if(HC!=nil && L!=nil && KC!=nil){
        HC=decimal(HC);
        L=decimal(L);
        KC=decimal(KC);

        let newL=L-KC;
        if(newL>=100 && HC>100){
            errmsg = "当类型为:"+type+"和D的值为"+D+"且L-KC≥100时 需满足公式 HC≤100";
            return errmsg;
        }elsif(newL<100 && HC>newL){
            errmsg = "当类型为:"+type+"和D的值为"+D+"且L-KC<100时 需满足公式 HC≤L-KC";
            return errmsg;
        }
    }
    if(HC!=nil && KD!=nil && KC!=nil){
        HC=decimal(HC);
        KD=decimal(KD);
        KC=decimal(KC);

        let newK=KD-KC-1;
        if(HC > newK){
            errmsg = "当类型为:"+type+"和D的值为"+D+"需满足公式 HC≤KD-KC-1";
            return errmsg;
        }
    }
}else{
    if(HC!=nil && L!=nil  && KC!=nil){
        HC=decimal(HC);
        L=decimal(L);
        KC=decimal(KC);

        let newL=L-KC;
        if(HC>newL){
            errmsg = "需满足公式 HC≤L-KC";
            return errmsg;
        }
    }
}
return true;

','0',now() ,'脚本：复合脚本 HC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326429970440,1001246,'20','let errmsg = nil;
if(KD!= nil && L!= nil && HD!= nil){
   KD=decimal(KD);
   L=decimal(L);
   HD=decimal(HD);
   let L=L-HD;
   if(KD<=L){
       return true;
   }else{
       errmsg = "需满足公式 KD≤L-HD";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本：KD≤L-HD');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326429970441,1001246,'20','let errmsg = nil;
if(KD!= nil && KC!= nil && HC!= nil){
   KD=decimal(KD);
   KC=decimal(KC);
   HC=decimal(HC);
   let KC=KC+HC+2;
   if(KD>=KC){
       return true;
   }else{
       errmsg = "（KD≤KC+HC+1）无法生成型号";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本：KD≥KC+HC+2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326429970442,1001246,'20','let errmsg = nil;
if((type== "KZAC" && D== 20 )||(type== "KZAF" && D== 17)||(type== "KZAN" && D== 20)){
    if(HD!=nil && L!=nil && KD!=nil){
        HD=decimal(HD);
        L=decimal(L);
        KD=decimal(KD);

        let newL=L-HD;
        if(newL>=100 && HD>100){
            errmsg = "当类型为:"+type+"和D的值为"+D+"且L-KD≥100时 需满足公式 HD≤100";
            return errmsg;
        }elsif(newL<100 && HD>newL){
            errmsg = "当类型为:"+type+"和D的值为"+D+"且L-KD<100时 需满足公式 HD≤L-KD";
            return errmsg;
        }
    }
}else{
    if(HD!=nil && L!=nil  && KD!=nil){
        HD=decimal(HD);
        L=decimal(L);
        KD=decimal(KD);

        let newL=L-KD;
        if(HD>newL){
            errmsg = "需满足公式 HD≤L-KD";
            return errmsg;
        }
    }
}
return true;




','0',now() ,'脚本：复合脚本 HD');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326429970443,1001246,'20','let errmsg = nil;
if(ZA!= nil && L!= nil && HA!= nil){
   ZA=decimal(ZA);
   L=decimal(L);
   HA=decimal(HA);
   let L=L-HA;
   if(ZA<=L){
       return true;
   }else{
       errmsg = "需满足公式 ZA≤L-HA";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本：ZA≤L-HA');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326429970444,1001246,'20','let errmsg = nil;
if((type== "KZAC" && D== 20 )||(type== "KZAF" && D== 17)||(type== "KZAN" && D== 20)){
    if(HA_2!=nil && L!=nil && ZA!=nil){
        HA_2=decimal(HA_2);
        L=decimal(L);
        ZA=decimal(ZA);

        let newL=L-ZA;
        if(newL>=100 && HA_2>100){
            errmsg = "当类型为:"+type+"和D的值为"+D+"且L-ZA≥100时 需满足公式 HA≤100";
            return errmsg;
        }elsif(newL<100 && HA_2>newL){
            errmsg = "当类型为:"+type+"和D的值为"+D+"且L-ZA<100时 需满足公式 HA≤100";
            return errmsg;
        }
    }
}else{
    if(HA_2!=nil && L!=nil  && ZA!=nil){
        HA_2=decimal(HA_2);
        L=decimal(L);
        ZA=decimal(ZA);

        let newL=L-ZA;
        if(HA_2>newL){
            errmsg = "需满足公式 HA≤L-ZA";
            return errmsg;
        }
    }
}
return true;


','0',now() ,'脚本：复合脚本 HA_2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326429970445,1001246,'20','let errmsg = nil;
if(AA!= nil && 330!= nil){
   AA=decimal(AA);
   330=decimal(330);
   let 330=330;
   if(30<=AA && AA<=330){
       return true;
   }else{
       errmsg = "需满足公式 30≤AA≤330";
       return errmsg;
   }
}
return true;



','0',now() ,'脚本：30≤AA≤330');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326429970446,1001246,'20','let errmsg = nil;
if(ZB!= nil && L!= nil){
   ZB=decimal(ZB);
   L=decimal(L);
   let L=L-HB_2;
   if(ZB<=L){
       return true;
   }else{
       errmsg = "需满足公式 ZB≤L-HB";
       return errmsg;
   }
}
return true;



','0',now() ,'脚本：ZB≤L-HB_2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326434164736,1001246,'20','let errmsg = nil;
if((type== "KZAC" && D== 20 )||(type== "KZAF" && D== 17)||(type== "KZAN" && D== 20)){
    if(HB_2!=nil && L!=nil && ZB!=nil){
        HB_2=decimal(HB_2);
        L=decimal(L);
        ZB=decimal(ZB);

        let newL=L-ZB;
        if(newL>=100 && HB_2>100){
            errmsg = "当类型为:"+type+"和D的值为"+D+"且L-ZB≥100时 需满足公式 HB≤100";
            return errmsg;
        }elsif(newL<100 && HB_2>newL){
            errmsg = "当类型为:"+type+"和D的值为"+D+"且L-ZB<100时 需满足公式 HB≤L-ZB";
            return errmsg;
        }
    }
}else{
    if(HB_2!=nil && L!=nil  && ZB!=nil){
        HB_2=decimal(HB_2);
        L=decimal(L);
        ZA=decimal(ZB);

        let newL=L-ZA;
        if(HB_2>newL){
            errmsg = "需满足公式 HB≤L-ZB";
            return errmsg;
        }
    }
}
return true;



','0',now() ,'脚本：复合脚本 HB_2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326434164737,1001246,'20','let errmsg = nil;
if(AB!= nil && 330!= nil){
   AB=decimal(AB);
   330=decimal(330);
   let 330=330;
   if(30<=AB && AB<=330){
       return true;
   }else{
       errmsg = "需满足公式 30≤AB≤330";
       return errmsg;
   }
}
return true;



','0',now() ,'脚本：30≤AB≤330');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326434164738,1001246,'20','let errmsg = nil;
if(ZC!= nil && L!= nil){
   ZC=decimal(ZC);
   L=decimal(L);
   let L=L-HC_2;
   if(ZC<=L){
       return true;
   }else{
       errmsg = "需满足公式 ZC≤L-HC";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本：ZC≤L-HC_2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326434164739,1001246,'20','let errmsg = nil;
if((type== "KZAC" && D== 20 )||(type== "KZAF" && D== 17)||(type== "KZAN" && D== 20)){
    if(HC_2!=nil && L!=nil && ZC!=nil){
        HC_2=decimal(HC_2);
        L=decimal(L);
        ZC=decimal(ZC);

        let newL=L-ZC;
        if(newL>=100 && HC_2>100){
            errmsg = "当类型为:"+type+"和D的值为"+D+"且L-ZC≥100时 需满足公式 HC≤100";
            return errmsg;
        }elsif(newL<100 && HC_2>newL){
            errmsg = "当类型为:"+type+"和D的值为"+D+"且L-ZC<100时 需满足公式 HC≤L-ZC";
            return errmsg;
        }
    }
}else{
    if(HC_2!=nil && L!=nil  && ZC!=nil){
        HC_2=decimal(HC_2);
        L=decimal(L);
        ZC=decimal(ZC);

        let newL=L-ZC;
        if(HC_2>newL){
            errmsg = "需满足公式 HC≤L-ZC";
            return errmsg;
        }
    }
}
return true;



','0',now() ,'脚本：复合脚本 HC_2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326434164740,1001246,'20','let errmsg = nil;
if(AC!= nil && 330!= nil){
   AC=decimal(AC);
   330=decimal(330);
   let 330=330;
   if(30<=AC && AC<=330){
       return true;
   }else{
       errmsg = "需满足公式 30≤AC≤330";
       return errmsg;
   }
}
return true;



','0',now() ,'脚本：30≤AC≤330');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326434164741,1001246,'20','let errmsg = nil;
if(ZD!= nil && L!= nil){
   ZD=decimal(ZD);
   L=decimal(L);
   let L=L-HD_2;
   if(ZD<=L){
       return true;
   }else{
       errmsg = "需满足公式 ZD≤L-HD";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本：ZD≤L-HD_2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326434164742,1001246,'20','let errmsg = nil;
if((type== "KZAC" && D== 20 )||(type== "KZAF" && D== 17)||(type== "KZAN" && D== 20)){
    if(HD_2!=nil && L!=nil && ZD!=nil){
        HD_2=decimal(HD_2);
        L=decimal(L);
        ZD=decimal(ZD);

        let newL=L-ZD;
        if(newL>=100 && HD_2>100){
            errmsg = "当类型为:"+type+"和D的值为"+D+"且L-ZD≥100时 需满足公式 HD≤100";
            return errmsg;
        }elsif(newL<100 && HD_2>newL){
            errmsg = "当类型为:"+type+"和D的值为"+D+"且L-ZD<100时 需满足公式 HD≤L-ZD";
            return errmsg;
        }
    }
}else{
    if(HD_2!=nil && L!=nil  && ZD!=nil){
        HD_2=decimal(HD_2);
        L=decimal(L);
        ZD=decimal(ZD);

        let newL=L-ZD;
        if(HD_2>newL){
            errmsg = "需满足公式 HD≤L-ZD";
            return errmsg;
        }
    }
}
return true;



','0',now() ,'脚本：复合脚本 HD_2');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326434164743,1001246,'20','let errmsg = nil;
if(AD!= nil && 330!= nil){
   AD=decimal(AD);
   330=decimal(330);
   let 330=330;
   if(30<=AD && AD<=330){
       return true;
   }else{
       errmsg = "需满足公式 30≤AD≤330";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：30≤AD≤330');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326434164744,1001246,'20','let errmsg = nil;
if(WA!= nil && L!= nil && GA!= nil){
   WA=decimal(WA);
   L=decimal(L);
   GA=decimal(GA);
   let L=L-GA;
   if(WA<=L){
       return true;
   }else{
       errmsg = "需满足公式 WA≤L-GA";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：WA≤L-GA');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326434164745,1001246,'20','let errmsg = nil;
if(GA!= nil && L!= nil && WA!= nil){
   GA=decimal(GA);
   L=decimal(L);
   WA=decimal(WA);
   let L=L-WA;
   if(GA<=L){
       return true;
   }else{
       errmsg = "需满足公式 GA≤L-WA";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本：GA≤L-WA');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326434164746,1001246,'20','let errmsg = nil;
if(AA_2!= nil && 330!= nil){
   AA_2=decimal(AA_2);
   330=decimal(330);
   let 330=330;
   if(0<=AA_2 && AA_2<=330){
       return true;
   }else{
       errmsg = "需满足公式 0≤AA≤330";
       return errmsg;
   }
}
return true;



','0',now() ,'脚本：0≤AA_2≤330');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326434164747,1001246,'20','let errmsg = nil;
if(WB!= nil && WA!= nil && GA!= nil){
   WB=decimal(WB);
   WA=decimal(WA);
   GA=decimal(GA);
   let WA=WA+GA+1;
   if(WB>=WA){
       return true;
   }else{
       errmsg = "WB> WA+GA+1 范围内指定";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：WB>WA+GA+1');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326434164748,1001246,'20','let errmsg = nil;
if(WB!= nil && L!= nil && GB!= nil){
   WB=decimal(WB);
   L=decimal(L);
   GB=decimal(GB);
   let L=L-GB;
   if(WB<=L){
       return true;
   }else{
       errmsg = "需满足公式 WB≤L-GB";
       return errmsg;
   }
}
return true;



','0',now() ,'脚本：WB≤L-GB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326438359040,1001246,'20','let errmsg = nil;
if(GB!= nil && L!= nil && WB!= nil){
   GB=decimal(GB);
   L=decimal(L);
   WB=decimal(WB);
   let L=L-WB;
   if(GB<=L){
       return true;
   }else{
       errmsg = "需满足公式 GB≤L-WB";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：GB≤L-WB');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326438359041,1001246,'20','let errmsg = nil;
if(AB_2!= nil && 330!= nil){
   AB_2=decimal(AB_2);
   330=decimal(330);
   let 330=330;
   if(0<=AB_2 && AB_2<=330){
       return true;
   }else{
       errmsg = "需满足公式 0≤AB≤330";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：0≤AB_2≤330');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326438359042,1001246,'20','let errmsg = nil;
if(WC!= nil && WB!= nil && GB!= nil){
   WC=decimal(WC);
   WB=decimal(WB);
   GB=decimal(GB);
   let WB=WB+GB+1;
   if(WC>=WB){
       return true;
   }else{
       errmsg = "WC>WB+GB范围内指定";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：WB+GB+1≤WC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326438359043,1001246,'20','let errmsg = nil;
if(WC!= nil && L!= nil && GC!= nil){
   WC=decimal(WC);
   L=decimal(L);
   GC=decimal(GC);
   let L=L-GC;
   if(WC<=L){
       return true;
   }else{
       errmsg = "需满足公式 WC≤L-GC";
       return errmsg;
   }
}
return true;


','0',now() ,'脚本：WC≤L-GC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326438359044,1001246,'20','let errmsg = nil;
if(GC!= nil && L!= nil && WC!= nil){
   GC=decimal(GC);
   L=decimal(L);
   WC=decimal(WC);
   let L=L-WC;
   if(0<=GC && GC<=L){
       return true;
   }else{
       errmsg = "需满足公式 0≤GC≤L-WC";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：0≤GC≤L-WC');

INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE (1684807326438359045,1001246,'20','let errmsg = nil;
if(AC_2!= nil && 330!= nil){
   AC_2=decimal(AC_2);
   330=decimal(330);
   let 330=330;
   if(0<=AC_2 && AC_2<=330){
       return true;
   }else{
       errmsg = "需满足公式 0≤AC≤330";
       return errmsg;
   }
}
return true;
','0',now() ,'脚本：0≤AC_2≤330');
