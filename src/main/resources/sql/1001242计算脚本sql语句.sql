DELETE FROM `goods_rule` WHERE spu='1001242' AND rule_type='10';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUES (1689157734530138112,1001242,'10','let p = productSearchSkuInfo;
let list=p.specList;
let D=specType;
let scMax = nil;
let lMin = nil;
let newL=nil;
fn  inputInspection (attrSpec,value){
     for m in attrSpec {
        if(m.enSpecName==value){
            return true;
        }
     }
    return false;
}
fn  changeMaximum(scMax,list,value,flag){
    if(scMax==nil){
        return false;
    }
    if(type(scMax)=="long" || type(scMax)=="string"){
        scMax=decimal(scMax);
    }
    for m in list {
        for n in m.specRangeList {
            if(m.enSpecName == value){
                if(flag){
                    if(scMax <= n.maxValue && scMax >= n.minValue){
                        n.maxValue = scMax;
                    }
                }else{
                    if(scMax <= n.maxValue && scMax >= n.minValue){
                        n.maxValue = scMax;
                    }elsif(scMax < n.minValue){
                        n.maxValue = 0M;
                    }
                }
            }
        }
    }
}
fn  changeMinimum(lMin,list,value,flag){
    if(lMin==nil || lMin < 0){
        return false;
    }
    if(type(lMin)=="long" || type(lMin)=="string"){
        lMin=decimal(lMin);
    }
    for m in list {
        for n in m.specRangeList {
            if(m.enSpecName == value){
                if(flag){
                    if(lMin >= n.minValue && lMin <= n.maxValue){
                        n.minValue = lMin;
                    }
                }
            }
        }
    }
}
fn  changeParticular(scMax,list,value){
    if(scMax==nil){
        return false;
    }
    if(type(scMax)=="long" || type(scMax)=="string"){
        scMax=decimal(scMax);
    }
    for m in list {
        for n in m.specRangeList {
            if(m.enSpecName == value){
                n.maxValue = scMax;
            }
        }
    }
}
fn removeValue(saveValue,list,value,flag){
    let new_delete_list=seq.list();
    for m in list {
        if(m.enSpecName==value){
            for x in m.specValueList{
                if (x.specValue==nil){
                    return false;
                }
                let compareValue= decimal(x.specValue);
                if(flag){
                    if(compareValue > saveValue){
                        seq.add(new_delete_list,x);
                    }
                }else{
                    if(compareValue < saveValue){
                        seq.add(new_delete_list,x);
                    }
                }
            }
            for q in new_delete_list{
                seq.remove(m.specValueList, q);
            }
        }
    }
}
fn  fetchValue(newObject,value){
    let newValue=0M;
    if(newObject==nil){
        return newValue;
    }
    for m in newObject {
        if(m.enSpecName==value){
            newValue= decimal(m.attrSpecValue);
        }
     }
    return newValue;
}
fn getConstant(D) {
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
if(inputInspection(attrSpec,"LA")){
    let LA=fetchValue(attrSpec,"LA");
    LA=LA-2;
    LA=decimal(math.floor(LA));
    changeMaximum(LA,list,"MA",true);
    changeMaximum(LA,list,"MSA",true);
    changeMaximum(LA,list,"MMA",true);
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"HA")){
    let LA=fetchValue(attrSpec,"LA");
    let HA=fetchValue(appendSpec,"HA");
    LA=LA-HA-2;
    LA=decimal(math.floor(LA));
    changeMaximum(LA,list,"KA",true);
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"KA")){
    let LA=fetchValue(attrSpec,"LA");
    let KA=fetchValue(appendSpec,"KA");
    LA=LA-KA-2;
    LA=decimal(math.floor(LA));
    changeMaximum(LA,list,"HA",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA")  && inputInspection(genSpec,"T") && inputInspection(appendSpec,"HB")){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let T=fetchValue(genSpec,"T");
    let HB=fetchValue(appendSpec,"HB");
    L=L-LA-T-HB-2;
    L=decimal(math.floor(L));
    changeMaximum(L,list,"KB",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA")  && inputInspection(genSpec,"T") && inputInspection(appendSpec,"KB")){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let T=fetchValue(genSpec,"T");
    let KB=fetchValue(appendSpec,"KB");
    L=L-LA-T-KB-1;
    L=decimal(math.floor(L));
    if(L>100){
        changeMaximum(100,list,"HB",true);
    }elsif(L<=100){
        changeMaximum(L,list,"HB",true);
    }
}
if(inputInspection(appendSpec,"KB") && inputInspection(appendSpec,"HB")){
    let KB=fetchValue(appendSpec,"KB");
    let HB=fetchValue(appendSpec,"HB");
    KB=KB+HB+2;
    changeMinimum(KB,list,"KC",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA")  && inputInspection(genSpec,"T") && inputInspection(appendSpec,"HC")){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let T=fetchValue(genSpec,"T");
    let HC=fetchValue(appendSpec,"HC");
    L=L-T-LA-HC-2;
    L=decimal(math.floor(L));
    changeMaximum(L,list,"KC",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA")  && inputInspection(genSpec,"T") && inputInspection(appendSpec,"KC")){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let T=fetchValue(genSpec,"T");
    let KC=fetchValue(appendSpec,"KC");
    L=L-LA-T-KC-2;
    L=decimal(math.floor(L));
    if(L>100){
        changeMaximum(100,list,"HC",true);
    }elsif(L<=100){
        changeMaximum(L,list,"HC",true);
    }
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"HA_2")){
    let LA=fetchValue(attrSpec,"LA");
    let HA_2=fetchValue(appendSpec,"HA_2");
    LA=LA-HA_2-2;
    L=decimal(math.floor(L));
    changeMaximum(LA,list,"ZA",true);
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"KA")){
    let LA=fetchValue(attrSpec,"LA");
    let KA=fetchValue(appendSpec,"KA");
    LA=LA-KA-2;
    LA=decimal(math.floor(LA));
    changeMaximum(LA,list,"HA_2",true);
}
if(inputInspection(attrSpec,"LA")){
    let LA=fetchValue(attrSpec,"LA");
    LA=LA-3;
    LA=decimal(math.floor(LA));
    changeMaximum(LA,list,"TA",true);
}
if(inputInspection(attrSpec,"LA") && D!=nil){
    let LA=fetchValue(attrSpec,"LA");
    let l=nil;
    if(include(a,D)){
        l=12;
    }elsif(include(b,D)){
        l=17;
    }else{
        l=getConstant(D);
    }
    LA=LA-l;
    LA=decimal(math.floor(LA));
    changeMaximum(LA,list,"SA",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA") && inputInspection(genSpec,"T") && D!=nil){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let T=fetchValue(genSpec,"T");
    let l=nil;
    if(include(a,D)){
        l=12;
    }elsif(include(b,D)){
        l=17;
    }else{
        l=getConstant(D);
    }
    L=L-LA-T-l;
    L=decimal(math.floor(L));
    changeMaximum(L,list,"SB",true);
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"GA")){
    let LA=fetchValue(attrSpec,"LA");
    let GA=fetchValue(attrSpec,"GA");
    LA=LA-GA;
    LA=decimal(math.floor(LA));
    changeMaximum(LA,list,"WA",true);
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"WA")){
    let LA=fetchValue(attrSpec,"LA");
    let WA=fetchValue(attrSpec,"WA");
    LA=LA-WA;
    LA=decimal(math.floor(LA));
    changeMaximum(LA,list,"GA",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA") && inputInspection(genSpec,"T") && inputInspection(appendSpec,"GB")){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let T=fetchValue(genSpec,"T");
    let GB=fetchValue(appendSpec,"GB");
    L=L-LA-T-GB;
    L=decimal(math.floor(L));
    changeMaximum(L,list,"WB",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA") && inputInspection(genSpec,"T") && inputInspection(appendSpec,"WB")){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let T=fetchValue(genSpec,"T");
    let WB=fetchValue(appendSpec,"WB");
    L=L-LA-T-WB;
    L=decimal(math.floor(L));
    changeMaximum(L,list,"GB",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(genSpec,"T")  && inputInspection(attrSpec,"LA")  && inputInspection(appendSpec,"ZB") ){
    let L=fetchValue(attrSpec,"L");
    let T=fetchValue(genSpec,"T");
    let LA=fetchValue(attrSpec,"LA");
    let ZB=fetchValue(appendSpec,"ZB");
    L=L-T-LA-ZB-2;
    L=decimal(math.floor(L));
    changeMaximum(L,list,"HB_2",true);
}
if(inputInspection(appendSpec,"KC") && inputInspection(appendSpec,"KB") ){
    let KC=fetchValue(appendSpec,"KC");
    let KB=fetchValue(appendSpec,"KB");
    KC=KC-KB-2;
    changeMaximum(KC,list,"HB",true);
}
if(inputInspection(appendSpec,"KC") && inputInspection(appendSpec,"HB") ){
    let KC=fetchValue(appendSpec,"KC");
    let HB=fetchValue(appendSpec,"HB");
    KC=KC-HB-2;
    changeMaximum(KC,list,"KB",true);
}
if(inputInspection(appendSpec,"KC") && inputInspection(appendSpec,"KB") ){
    let KC=fetchValue(appendSpec,"KC");
    let KB=fetchValue(appendSpec,"KB");
    KC=KC-KB-2;
    changeMaximum(KC,list,"HB",true);
}
if(inputInspection(appendSpec,"KC") && inputInspection(appendSpec,"HB") ){
    let KC=fetchValue(appendSpec,"KC");
    let HB=fetchValue(appendSpec,"HB");
    KC=KC-HB-2;
    changeMaximum(KC,list,"KB",true);
}
if(inputInspection(appendSpec,"ZC") && inputInspection(appendSpec,"ZB") ){
    let ZC=fetchValue(appendSpec,"ZC");
    let ZB=fetchValue(appendSpec,"ZB");
    ZC=ZC-ZB-2;
    changeMaximum(ZC,list,"HB_2",true);
}
if(inputInspection(appendSpec,"ZC") && inputInspection(appendSpec,"HB_2") ){
    let ZC=fetchValue(appendSpec,"ZC");
    let HB_2=fetchValue(appendSpec,"HB_2");
    ZC=ZC-HB_2-2;
    changeMaximum(ZC,list,"ZB",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"ZC") ){
    let L=fetchValue(attrSpec,"L");
    let ZC=fetchValue(appendSpec,"ZC");
    L=L-ZC-2;
    L=decimal(math.floor(L));
    changeMaximum(L,list,"HC_2",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA")  && inputInspection(genSpec,"T") ){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let T=fetchValue(genSpec,"T");
    L=L-LA-T-3;
    L=decimal(math.floor(L));
    changeMaximum(L,list,"TB",true);
}
if(inputInspection(attrSpec,"LA") && inputInspection(genSpec,"T") ){
    let LA=fetchValue(attrSpec,"LA");
    let T=fetchValue(genSpec,"T");
    LA=(LA+T)*2;
    LA=decimal(math.floor(LA));
    changeMinimum(LA,list,"L",true);
}
if(inputInspection(attrSpec,"LA") && inputInspection(genSpec,"T") ){
    let LA=fetchValue(attrSpec,"LA");
    let T=fetchValue(genSpec,"T");
    LA=(LA+T)*2;
    LA=decimal(math.floor(LA));
    changeMinimum(LA,list,"L",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(genSpec,"T") ){
    let L=fetchValue(attrSpec,"L");
    let T=fetchValue(genSpec,"T");
    L=L/2-T;
    L=decimal(math.floor(L));
    changeMaximum(L,list,"LA",true);
}
return p;
','0',now() ,'1001242计算脚本')