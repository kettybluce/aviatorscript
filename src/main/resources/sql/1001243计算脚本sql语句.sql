DELETE FROM `goods_rule` WHERE spu='1001243' AND rule_type='10';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUES (1689814550972743680,1001243,'10','let p = productSearchSkuInfo;
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
if(inputInspection(attrSpec,"LA") && inputInspection(attrSpec,"LB")  && inputInspection(attrSpec,"LC") ){
    let LA=fetchValue(attrSpec,"LA");
    let LB=fetchValue(attrSpec,"LB");
    let LC=fetchValue(attrSpec,"LC");
    LA=LA+LB+LC+0.5M;
    changeMinimum(LA,list,"L",true);
}
if(inputInspection(attrSpec,"LA")){
    let LA=fetchValue(attrSpec,"LA");
    LA=LA-2;
    LA=decimal(math.floor(LA));
    changeMaximum(LA,list,"MA",true);
    changeMaximum(LA,list,"MSA",true);
    changeMaximum(LA,list,"MMA",true);
}
if(inputInspection(attrSpec,"LC")){
    let LC=fetchValue(attrSpec,"LC");
    LC=LC-2;
    LC=decimal(math.floor(LC));
    changeMaximum(LC,list,"MC",true);
    changeMaximum(LC,list,"MSC",true);
    changeMaximum(LC,list,"MMC",true);
}
if(inputInspection(attrSpec,"LB")){
    let LB=fetchValue(attrSpec,"LB");
    LB=LB-2;
    LB=decimal(math.floor(LB));
    changeMaximum(LB,list,"MB",true);
    changeMaximum(LB,list,"MSB",true);
    changeMaximum(LB,list,"MMB",true);
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"HA")){
    let LA=fetchValue(attrSpec,"LA");
    let HA=fetchValue(appendSpec,"HA");
    LA=LA-HA-2;
    changeMaximum(LA,list,"KA",true);
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"HA")){
    let LA=fetchValue(attrSpec,"LA");
    let HA=fetchValue(appendSpec,"HA");
    LA=LA-HA-2;
    changeMaximum(LA,list,"HA",true);
}
if(inputInspection(attrSpec,"LA") ){
    let LA=fetchValue(attrSpec,"LA");
    LA=LA-1;
    changeMaximum(LA,list,"HA",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LB")  && inputInspection(attrSpec,"LA") && inputInspection(attrSpec,"LC") && inputInspection(appendSpec,"HB")){
    let L=fetchValue(attrSpec,"L");
    let LB=fetchValue(attrSpec,"LB");
    let LA=fetchValue(attrSpec,"LA");
    let LC=fetchValue(attrSpec,"LC");
    let HB=fetchValue(appendSpec,"HB");
    L=L-LB-LA-LC-HB;
    changeMaximum(L,list,"KB",true);
}
if(inputInspection(appendSpec,"KD") && inputInspection(appendSpec,"HB") ){
    let KD=fetchValue(appendSpec,"KD");
    let HB=fetchValue(appendSpec,"HB");
    KD=KD-HB-1;
    changeMaximum(KD,list,"KB",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LB")  && inputInspection(attrSpec,"LA")  && inputInspection(attrSpec,"LC")  && inputInspection(appendSpec,"KB") ){
    let L=fetchValue(attrSpec,"L");
    let LB=fetchValue(attrSpec,"LB");
    let LA=fetchValue(attrSpec,"LA");
    let LC=fetchValue(attrSpec,"LC");
    let KB=fetchValue(appendSpec,"KB");
    L=L-LB-LA-LC-KB;
    changeMaximum(L,list,"HB",true);
}
if(inputInspection(attrSpec,"LC") && inputInspection(appendSpec,"HC") ){
    let LC=fetchValue(attrSpec,"LC");
    let HC=fetchValue(appendSpec,"HC");
    LC=LC-HC-2;
    changeMaximum(LC,list,"KC",true);
}
if(inputInspection(attrSpec,"LC") && inputInspection(appendSpec,"KC") ){
    let LC=fetchValue(attrSpec,"LC");
    let KC=fetchValue(appendSpec,"KC");
    LC=LC-KC-2;
    changeMaximum(LC,list,"HC",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA")  && inputInspection(attrSpec,"LC")  && inputInspection(attrSpec,"LB")  && inputInspection(appendSpec,"HD") ){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let LC=fetchValue(attrSpec,"LC");
    let LB=fetchValue(attrSpec,"LB");
    let HD=fetchValue(appendSpec,"HD");
    L=L-LA-LC-LB-HD-2;
    changeMaximum(L,list,"KD",true);
}
if(inputInspection(appendSpec,"KB") && inputInspection(appendSpec,"HB") ){
    let KB=fetchValue(appendSpec,"KB");
    let HB=fetchValue(appendSpec,"HB");
    KB=KB+HB+1;
    changeMinimum(KB,list,"KD",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA")  && inputInspection(attrSpec,"LB")  && inputInspection(attrSpec,"LC")  && inputInspection(appendSpec,"KD") ){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let LC=fetchValue(attrSpec,"LC");
    let LB=fetchValue(attrSpec,"LB");
    let KD=fetchValue(appendSpec,"KD");
    L=L-LA-LB-LC-KD-2;
    changeMaximum(L,list,"HD",true);
}
if(inputInspection(attrSpec,"LA")  && inputInspection(appendSpec,"HA_2") ){
    let LA=fetchValue(attrSpec,"LA");
    let HA_2=fetchValue(appendSpec,"HA_2");
    LA=LA-HA_2-2;
    changeMaximum(LA,list,"HD",true);
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"ZA") ){
    let LA=fetchValue(attrSpec,"LA");
    let ZA=fetchValue(appendSpec,"ZA");
    LA=LA-ZA-2;
    changeMaximum(LA,list,"HA_2",true);
}
if(inputInspection(attrSpec,"LA")){
    let LA=fetchValue(attrSpec,"LA");
    LA=LA-1;
    changeMaximum(LA,list,"HA_2",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA")  && inputInspection(attrSpec,"LB")  && inputInspection(attrSpec,"LC") && inputInspection(attrSpec,"HB_2") ){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let LC=fetchValue(attrSpec,"LC");
    let LB=fetchValue(attrSpec,"LB");
    let HB_2=fetchValue(attrSpec,"HB_2");
    L=L-LA-LB-LC-HB_2;
    changeMaximum(L,list,"ZB",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA")  && inputInspection(attrSpec,"LB")  && inputInspection(attrSpec,"LC")  && inputInspection(appendSpec,"KB") ){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let LC=fetchValue(attrSpec,"LC");
    let LB=fetchValue(attrSpec,"LB");
    let KB=fetchValue(appendSpec,"KB");
    L=L-LA-LB-LC-KB;
    changeMaximum(L,list,"HB_2",true);
}
if(inputInspection(appendSpec,"ZD")  &&  inputInspection(attrSpec,"HB_2") ){
    let ZD=fetchValue(appendSpec,"ZD");
    let HB_2=fetchValue(appendSpec,"HB_2");
    let newZD=ZD-HB_2-1;
    changeMaximum(newZD,list,"ZB",true);
}
if(inputInspection(appendSpec,"ZD")  && inputInspection(attrSpec,"KB") ){
    let ZD=fetchValue(appendSpec,"ZD");
    let KB=fetchValue(appendSpec,"KB");
    let newZD=ZD-KB-1;
    changeMaximum(newZD,list,"HB_2",true);
}
if(inputInspection(appendSpec,"ZD")  && inputInspection(appendSpec,"HC_2") )  {
    let ZD=fetchValue(appendSpec,"ZD");
    let HC_2=fetchValue(appendSpec,"HC_2");
    let newZD=ZD-HC_2-1;
    changeMaximum(newZD,list,"ZC",true);
}
if(inputInspection(appendSpec,"ZD") && inputInspection(appendSpec,"ZC") ){
    let ZD=fetchValue(appendSpec,"ZD");
    let ZC=fetchValue(appendSpec,"ZC");
    let newZD=ZD-ZC-1;
    changeMaximum(newZD,list,"HC_2",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA")  && inputInspection(attrSpec,"LB")  && inputInspection(attrSpec,"LC") && inputInspection(appendSpec,"HD_2")){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let LC=fetchValue(attrSpec,"LC");
    let LB=fetchValue(attrSpec,"LB");
    let HD_2=fetchValue(appendSpec,"HD_2");
    let HD_2=fetchValue(appendSpec,"HD_2");
    L=L-LA-LB-LC-HD_2;
    changeMaximum(L,list,"ZD",true);
}
if(inputInspection(appendSpec,"ZC") && inputInspection(appendSpec,"HC_2")){
    let ZC=fetchValue(appendSpec,"ZC");
    let HC_2=fetchValue(appendSpec,"HC_2");
    ZC=ZC+HC_2+1;
    changeMinimum(ZC,list,"ZD",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA")  && inputInspection(attrSpec,"LB")  && inputInspection(attrSpec,"LC")  && inputInspection(appendSpec,"ZD") ){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let LC=fetchValue(attrSpec,"LC");
    let LB=fetchValue(attrSpec,"LB");
    let ZD=fetchValue(appendSpec,"ZD");
    L=L-LA-LB-LC-ZD;
    changeMaximum(L,list,"HD",true);
}
if(inputInspection(attrSpec,"LA")){
    let LA=fetchValue(attrSpec,"LA");
    LA=LA-3;
    changeMaximum(LA,list,"TA",true);
}
if(inputInspection(attrSpec,"LB")){
    let LB=fetchValue(appendSpec,"LB");
    LB=LB-3;
    changeMaximum(LB,list,"TB",true);
}
if(inputInspection(attrSpec,"LC")){
    let LC=fetchValue(appendSpec,"LC");
    LC=LC-3;
    changeMaximum(LC,list,"TC",true);
}
if(inputInspection(attrSpec,"LA") && D != nil){
    let LA=fetchValue(attrSpec,"LA");
    let l=getConstant(D);
    LA=LA-l;
    changeMaximum(LA,list,"SA",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA")&& inputInspection(attrSpec,"LB")&& inputInspection(attrSpec,"LC") && D != nil){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let LB=fetchValue(attrSpec,"LB");
    let LC=fetchValue(attrSpec,"LC");
    let l=getConstant(D);
    L=L-LA-LB-LC-l;
    changeMaximum(L,list,"SD",true);
}
if(inputInspection(attrSpec,"LC") && D != nil){
    let LC=fetchValue(attrSpec,"LC");
    let l=getConstant(D);
    LC=LC-l;
    changeMaximum(LC,list,"SC",true);
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"GA") ){
    let LA=fetchValue(attrSpec,"LA");
    let GA=fetchValue(appendSpec,"GA");
    LA=LA-GA;
    changeMaximum(LA,list,"WA",true);
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"WA") ){
    let LA=fetchValue(attrSpec,"LA");
    let WA=fetchValue(appendSpec,"WA");
    LA=LA-WA;
    changeMaximum(LA,list,"GA",true);
}
if(inputInspection(attrSpec,"LC") && inputInspection(appendSpec,"GC") ){
    let LC=fetchValue(attrSpec,"LC");
    let GC=fetchValue(appendSpec,"GC");
    LC=LC-GC;
    changeMaximum(LC,list,"WC",true);
}
if(inputInspection(attrSpec,"LC") && inputInspection(appendSpec,"WC") ){
    let LC=fetchValue(attrSpec,"LC");
    let WC=fetchValue(appendSpec,"WC");
    LC=LC-WC;
    changeMaximum(LC,list,"GC",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA")  && inputInspection(attrSpec,"LB")  && inputInspection(attrSpec,"LC")  && inputInspection(appendSpec,"GD") ){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let LB=fetchValue(attrSpec,"LB");
    let LC=fetchValue(attrSpec,"LC");
    let GD=fetchValue(appendSpec,"GD");
    L=L-LA-LB-LC-GD;
    changeMaximum(L,list,"WD",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA")  && inputInspection(attrSpec,"LB")  && inputInspection(attrSpec,"LC")  && inputInspection(appendSpec,"WB") ){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let LB=fetchValue(attrSpec,"LB");
    let LC=fetchValue(attrSpec,"LC");
    let WB=fetchValue(appendSpec,"WB");
    L=L-LA-LC-LB-WB;
    changeMaximum(L,list,"GD",true);
}
if(inputInspection(genSpec,"P")){
    let P=fetchValue(genSpec,"P");
    P=P-4;
    P = P < 3M ? 3M : P;
    removeValue(P,list,"NA",true);
}
if(inputInspection(attrSpec,"Q")){
    let Q=fetchValue(attrSpec,"Q");
    Q=Q-4;
    Q = Q < 3M ? 3M : Q;
    removeValue(Q,list,"NC",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LB")  && inputInspection(attrSpec,"LC")){
    let L=fetchValue(attrSpec,"L");
    let LB=fetchValue(attrSpec,"LB");
    let LC=fetchValue(attrSpec,"LC");
    L=L-LB-LC-0.5M;
    changeMaximum(L,list,"LA",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA")  && inputInspection(attrSpec,"LC")){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let LC=fetchValue(attrSpec,"LC");
    L=L-LA-LC-0.5M;
    changeMaximum(L,list,"LB",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA")  && inputInspection(attrSpec,"LB") ){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let LB=fetchValue(attrSpec,"LB");
    L=L-LA-LB-0.5M;
    changeMaximum(L,list,"LC",true);
}
if(inputInspection(genSpec,"P")){
    let P=fetchValue(genSpec,"P");
    P=P-1;
    changeMaximum(P,list,"Q",true);
}
if(inputInspection(attrSpec,"Q")){
    let Q=fetchValue(attrSpec,"Q");
    Q=Q+1;
    changeMinimum(Q,list,"P",true);
}
return p;
','0',now() ,'1001243计算脚本')