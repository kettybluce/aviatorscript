DELETE FROM `goods_rule` WHERE spu='1001245' AND rule_type='10';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUES (1679752658817417216,1001245,'10','let p = productSearchSkuInfo;
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
if(inputInspection(attrSpec,"L")){
    let L=fetchValue(attrSpec,"L");
    L=L/2;
    changeMaximum(L,list,"LA",true);
}
if(inputInspection(attrSpec,"LA")){
    let LA=fetchValue(attrSpec,"LA");
    LA=LA-2;
    changeMaximum(LA,list,"MA",true);
}
if(inputInspection(attrSpec,"LA")){
    let LA=fetchValue(attrSpec,"LA");
    LA=LA-2;
    changeMaximum(LA,list,"MSA",true);
}
if(inputInspection(attrSpec,"LA")){
    let LA=fetchValue(attrSpec,"LA");
    LA=LA-2;
    changeMaximum(LA,list,"MMA",true);
}
if(D!=nil){
    D=decimal(D);
    let newD=D*5;
    changeMaximum(newD,list,"MD",true);
}
if(D!=nil){
    D=decimal(D);
    let newD=D*5;
    changeMaximum(newD,list,"MSD",true);
}
if(D!=nil){
    D=decimal(D);
    let newD=D*5;
    changeMaximum(newD,list,"MMD",true);
}
if(inputInspection(attrSpec,"LA")){
    let LA=fetchValue(attrSpec,"LA");
    LA=LA-2;
    changeMaximum(LA,list,"MB",true);
}
if(inputInspection(attrSpec,"LA")){
    let LA=fetchValue(attrSpec,"LA");
    LA=LA-2;
    changeMaximum(LA,list,"MSB",true);
}
if(inputInspection(attrSpec,"P")){
    let P=fetchValue(attrSpec,"P");
    P=P-4;
    P = P < 3M ? 3M : P;
    removeValue(P,list,"NA",true);
}
if(D!=nil){
    D=decimal(D);
    let newD=D-4;
    newD = newD < 3M ? 3M : newD;
    removeValue(newD,list,"NB",true);
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
if(inputInspection(attrSpec,"L")&& inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"HB")){
    let LA=fetchValue(attrSpec,"LA");
    let L=fetchValue(attrSpec,"L");
    let HB=fetchValue(appendSpec,"HB");
    L=L-LA-HB;
    changeMaximum(L,list,"KB",true);
}
if(inputInspection(attrSpec,"L")&& inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"KB")){
    let LA=fetchValue(attrSpec,"LA");
    let L=fetchValue(attrSpec,"L");
    let KB=fetchValue(appendSpec,"KB");
    L=L-LA-KB;
    changeMaximum(L,list,"HB",true);
}
if(inputInspection(attrSpec,"L")&& inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"KB") && inputInspection(appendSpec,"HB")){
    let L=fetchValue(appendSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let KB=fetchValue(appendSpec,"KB");
    let HB=fetchValue(appendSpec,"HB");
    L=L-LA-KB-HB-1;
    changeMinimum(L,list,"KC",true);
}
if(inputInspection(attrSpec,"L")&& inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"HC")){
    let L=fetchValue(appendSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let HC=fetchValue(appendSpec,"HC");
    L=L-LA-HC;
    changeMaximum(L,list,"KC",true);
}
if(inputInspection(attrSpec,"L")&& inputInspection(attrSpec,"LA")&& inputInspection(appendSpec,"KC")){
    let L=fetchValue(appendSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let KC=fetchValue(attrSpec,"KC");
    L=L-LA-KC;
    changeMaximum(L,list,"HC",true);
}
if( inputInspection(attrSpec,"LA")){
    let LA=fetchValue(attrSpec,"LA");
    L=LA-1;
    changeMaximum(L,list,"HA_2",true);
}
if( inputInspection(attrSpec,"LA")){
    let LA=fetchValue(attrSpec,"LA");
    L=LA-3;
    changeMaximum(L,list,"TA",true);
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
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA") && D !=nil){
    let l1=getConstant(D);
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    L=L-LA-l1;
    changeMaximum(L,list,"SC",true);
}
if( inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"GA") ){
    let LA=fetchValue(attrSpec,"LA");
    let GA=fetchValue(appendSpec,"GA");
    LA=LA-GA-2;
    changeMaximum(LA,list,"WA",true);
}
if( inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"WA") ){
    let LA=fetchValue(attrSpec,"LA");
    let WA=fetchValue(appendSpec,"WA");
    LA=LA-WA-2;
    changeMaximum(LA,list,"GA",true);
}
if(inputInspection(attrSpec,"L") &&  inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"GB") ){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let GB=fetchValue(appendSpec,"GB");
    L=L-LA-GB;
    changeMaximum(L,list,"WB",true);
}
if(inputInspection(attrSpec,"L") &&  inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"WB") ){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let WB=fetchValue(appendSpec,"WB");
    L=L-LA-WB;
    changeMaximum(L,list,"GB",true);
}
if(inputInspection(appendSpec,"WB") &&  inputInspection(appendSpec,"GB")){
    let WB=fetchValue(appendSpec,"WB");
    let GB=fetchValue(appendSpec,"GB");
    WB=WB+GB+1;
    changeMinimum(WB,list,"WC",true);
}
if(inputInspection(attrSpec,"L") &&  inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"GC") ){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let GC=fetchValue(appendSpec,"GC");
    L=L-LA-GC;
    changeMaximum(L,list,"WC",true);
}
if(inputInspection(attrSpec,"L") &&  inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"WC") ){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let WC=fetchValue(appendSpec,"WC");
    L=L-LA-WC;
    changeMaximum(L,list,"GC",true);
}
return p;
','0',now() ,'1001241计算脚本')