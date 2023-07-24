DELETE FROM `goods_rule` WHERE spu='1001244' AND rule_type='10';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUES (1683397494044966912,1001244,'10','let p = productSearchSkuInfo;
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
if(D!=nil){
    D=decimal(D);
}
if(inputInspection(attrSpec,"LA")){
    let LA=fetchValue(attrSpec,"LA");
    LA=LA-2;
    changeMaximum(LA,list,"MA",true);
    changeMaximum(LA,list,"MSA",true);
    changeMaximum(LA,list,"MMA",true);
}
if(D!=nil){
    let newD=D*5;
    changeMaximum(newD,list,"MA",true);
    changeMaximum(newD,list,"MSA",true);
    changeMaximum(newD,list,"MMA",true);
    changeMaximum(newD,list,"MC",true);
    changeMaximum(newD,list,"MD",true);
    changeMaximum(newD,list,"MB",true);
    changeMaximum(newD,list,"MSB",true);
    changeMaximum(newD,list,"MMB",true);
}
if(D!=nil){
    let newD=D*5-2;
    changeMaximum(newD,list,"MSC",true);
    changeMaximum(newD,list,"MSD",true);
    changeMaximum(newD,list,"MMD",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"LB") && inputInspection(appendSpec,"LA") && inputInspection(appendSpec,"MD")){
    let L=fetchValue(attrSpec,"L");
    let LB=fetchValue(attrSpec,"LB");
    let LA=fetchValue(attrSpec,"LA");
    let MD=fetchValue(appendSpec,"MD");
    L=L-LB-LA-MD;
    changeMaximum(L,list,"MC",true);
    changeMaximum(L,list,"MSC",true);
    changeMaximum(L,list,"MMC",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"LB") && inputInspection(appendSpec,"LA") && inputInspection(appendSpec,"MSD")){
    let L=fetchValue(attrSpec,"L");
    let LB=fetchValue(attrSpec,"LB");
    let LA=fetchValue(attrSpec,"LA");
    let MSD=fetchValue(appendSpec,"MSD");
    L=L-LB-LA-MSD;
    changeMaximum(L,list,"MC",true);
    changeMaximum(L,list,"MSC",true);
    changeMaximum(L,list,"MMC",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"LB") && inputInspection(appendSpec,"LA") && inputInspection(appendSpec,"MMD")){
    let L=fetchValue(attrSpec,"L");
    let LB=fetchValue(attrSpec,"LB");
    let LA=fetchValue(attrSpec,"LA");
    let MMD=fetchValue(appendSpec,"MMD");
    L=L-LB-LA-MMD;
    changeMaximum(L,list,"MC",true);
    changeMaximum(L,list,"MSC",true);
    changeMaximum(L,list,"MMC",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"LB") && inputInspection(appendSpec,"LA") && inputInspection(appendSpec,"MC")){
    let L=fetchValue(attrSpec,"L");
    let LB=fetchValue(attrSpec,"LB");
    let LA=fetchValue(attrSpec,"LA");
    let MC=fetchValue(appendSpec,"MC");
    L=L-LB-LA-MC;
    changeMaximum(L,list,"MD",true);
    changeMaximum(L,list,"MSD",true);
    changeMaximum(L,list,"MMD",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"LB") && inputInspection(appendSpec,"LA") && inputInspection(appendSpec,"MSC")){
    let L=fetchValue(attrSpec,"L");
    let LB=fetchValue(attrSpec,"LB");
    let LA=fetchValue(attrSpec,"LA");
    let MSC=fetchValue(appendSpec,"MSC");
    L=L-LB-LA-MSC;
    changeMaximum(L,list,"MD",true);
    changeMaximum(L,list,"MSD",true);
    changeMaximum(L,list,"MMD",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LB") && inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"MMC")){
    let L=fetchValue(attrSpec,"L");
    let LB=fetchValue(attrSpec,"LB");
    let LA=fetchValue(attrSpec,"LA");
    let MMC=fetchValue(appendSpec,"MMC");
    L=L-LB-LA-MMC;
    changeMaximum(L,list,"MD",true);
    changeMaximum(L,list,"MSD",true);
    changeMaximum(L,list,"MMD",true);
}
if(inputInspection(attrSpec,"≤LB") ){
    let LB=fetchValue(attrSpec,"LB");
    LB=LB-2;
    changeMaximum(LB,list,"MB",true);
    changeMaximum(LB,list,"MSB",true);
    changeMaximum(LB,list,"MMB",true);
}
if(inputInspection(attrSpec,"P")){
    let P=fetchValue(attrSpec,"P");
    P=P-4;
    P = P < 3M ? 3M : P;
    removeValue(P,list,"NA",true);
    removeValue(P,list,"NB",true);
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"HA")){
    let LA=fetchValue(attrSpec,"LA");
    let HA=fetchValue(appendSpec,"HA");
    LA=LA-HA-2;
    changeMaximum(LA,list,"KA",true);
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"KA")){
    let LA=fetchValue(attrSpec,"LA");
    let KA=fetchValue(appendSpec,"KA");
    LA=LA-KA-2;
    changeMaximum(LA,list,"HA",true);
}
if(inputInspection(attrSpec,"LB") && inputInspection(appendSpec,"HB")){
    let LB=fetchValue(attrSpec,"LB");
    let HB=fetchValue(appendSpec,"HB");
    LB=LB-HB-2;
    changeMaximum(LB,list,"KB",true);
}
if(inputInspection(attrSpec,"LB") && inputInspection(appendSpec,"KB")){
    let LB=fetchValue(attrSpec,"LB");
    let KB=fetchValue(appendSpec,"KB");
    LB=LB-KB-2;
    changeMaximum(LB,list,"HB",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA") && inputInspection(attrSpec,"LB") && inputInspection(appendSpec,"HC")){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let LB=fetchValue(attrSpec,"LB");
    let HC=fetchValue(appendSpec,"HC");
    L=L-LA-LB-HC;
    changeMaximum(L,list,"KC",true);
}
if(inputInspection(appendSpec,"KD") && inputInspection(appendSpec,"HC") ){
    let KD=fetchValue(appendSpec,"KD");
    let HC=fetchValue(appendSpec,"HC");
    KD=KD-HC-1;
    changeMaximum(KD,list,"KC",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA") && inputInspection(attrSpec,"LB") && inputInspection(appendSpec,"KC")){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let LB=fetchValue(attrSpec,"LB");
    let KC=fetchValue(appendSpec,"KC");
    L=L-LA-LB-KC;
    changeMaximum(L,list,"HC",true);
}
if(inputInspection(appendSpec,"KD") && inputInspection(appendSpec,"KC") ){
    let KD=fetchValue(appendSpec,"KD");
    let KC=fetchValue(appendSpec,"KC");
    KD=KD-KC-1;
    changeMaximum(KD,list,"HC",true);
}
if(inputInspection(appendSpec,"KC") && inputInspection(appendSpec,"HC") ){
    let KC=fetchValue(appendSpec,"KC");
    let HC=fetchValue(appendSpec,"HC");
    KC=KC+HC+1;
    changeMinimum(KC,list,"KD",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA") && inputInspection(attrSpec,"LB") && inputInspection(appendSpec,"HD")){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let LB=fetchValue(attrSpec,"LB");
    let HD=fetchValue(appendSpec,"HD");
    L=L-LA-LB-HD;
    changeMaximum(L,list,"KD",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA") && inputInspection(attrSpec,"LB") && inputInspection(appendSpec,"KD")){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let LB=fetchValue(attrSpec,"LB");
    let KD=fetchValue(appendSpec,"KD");
    L=L-LA-LB-KD;
    changeMaximum(L,list,"HD",true);
}
if(inputInspection(attrSpec,"LA") ){
    let LA=fetchValue(attrSpec,"LA");
    LA=LA-1;
    changeMaximum(LA,list,"HA_2",true);
}
if(inputInspection(appendSpec,"ZD") && inputInspection(appendSpec,"HC_2") ){
    let ZD=fetchValue(appendSpec,"ZD");
    let HC_2=fetchValue(appendSpec,"HC_2");
    ZD=ZD-1-HC_2;
    changeMinimum(ZD,list,"ZC",true);
}
if(inputInspection(appendSpec,"ZD") && inputInspection(appendSpec,"ZC") ){
    let ZD=fetchValue(appendSpec,"ZD");
    let ZC=fetchValue(appendSpec,"ZC");
    ZD=ZD-ZC-1;
    changeMinimum(ZD,list,"HC_2",true);
}
if(inputInspection(appendSpec,"ZC") && inputInspection(appendSpec,"HC_2") ){
    let ZC=fetchValue(appendSpec,"ZC");
    let HC_2=fetchValue(appendSpec,"HC_2");
    ZC=ZC+HC_2+1;
    changeMinimum(ZC,list,"ZD",true);
}
if(inputInspection(attrSpec,"LA")){
    let LA=fetchValue(attrSpec,"LA");
    LA=LA-3;
    changeMaximum(LA,list,"TA",true);
}
if(inputInspection(attrSpec,"LB")){
    let LB=fetchValue(attrSpec,"LB");
    LB=LB-3;
    changeMaximum(LB,list,"TB",true);
}
if(D!=nil && inputInspection(attrSpec,"LA")){
    let l=getConstant(D);
    let LA=fetchValue(attrSpec,"LA");
    LA=LA-l;
    changeMaximum(LA,list,"SA",true);
}
if(D!=nil && inputInspection(attrSpec,"L")&& inputInspection(attrSpec,"LA")&& inputInspection(attrSpec,"LB")){
    let l=getConstant(D);
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let LB=fetchValue(attrSpec,"LB");
    L=L-LA-LB-l;
    changeMaximum(L,list,"SD",true);
}
if(D!=nil && inputInspection(attrSpec,"LB")){
    let l=getConstant(D);
    let LB=fetchValue(attrSpec,"LB");
    LB=LB-l;
    changeMaximum(LB,list,"SB",true);
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"GA") ){
    let LA=fetchValue(attrSpec,"LA");
    let GA=fetchValue(appendSpec,"GA");
    LA=LA-GA;
    changeMinimum(LA,list,"WA",true);
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"WA") ){
    let LA=fetchValue(attrSpec,"LA");
    let WA=fetchValue(appendSpec,"WA");
    LA=LA-WA;
    changeMinimum(LA,list,"GA",true);
}
if(inputInspection(attrSpec,"L")&& inputInspection(attrSpec,"LA")&& inputInspection(attrSpec,"LB")&& inputInspection(appendSpec,"GC")){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let LB=fetchValue(attrSpec,"LB");
    let GC=fetchValue(appendSpec,"GC");
    L=L-LA-LB-GC;
    changeMaximum(L,list,"WC",true);
}
if(inputInspection(attrSpec,"L")&& inputInspection(attrSpec,"LA")&& inputInspection(attrSpec,"LB")&& inputInspection(appendSpec,"WC")){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let LB=fetchValue(attrSpec,"LB");
    let WC=fetchValue(appendSpec,"WC");
    L=L-LA-LB-WC;
    changeMaximum(L,list,"GC",true);
}
if(inputInspection(attrSpec,"LB") && inputInspection(appendSpec,"GB") ){
    let LB=fetchValue(attrSpec,"LB");
    let GB=fetchValue(appendSpec,"GB");
    LB=LB-GB;
    changeMinimum(LB,list,"WB",true);
}
if(inputInspection(attrSpec,"LB") && inputInspection(appendSpec,"WB") ){
    let LB=fetchValue(attrSpec,"LB");
    let WB=fetchValue(appendSpec,"WB");
    LB=LB-WB;
    changeMinimum(LB,list,"GB",true);
}
return p;
','0',now() ,'1001244计算脚本')