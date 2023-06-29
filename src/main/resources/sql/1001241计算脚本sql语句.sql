DELETE FROM `goods_rule` WHERE spu='1001241' AND rule_type='10';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUES (1674356619738914816,1001241,'10','let p = productSearchSkuInfo;
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
fn checkMap(D){
    let newMap=seq.map("8",8M,"10",10M,"12",12M,"12A",12M,"15",15M,"17",17M,"17A",17M,"20",20M,"25",25M,"30",30M,"35",35M,"40",40M,"45",45M);
    let newData=nil;
    for x in newMap {
        if(D==x.key){
        newData=x.value;
        }
    }
    return newData;
}
fn getConstantP(P) {
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
fn getConstantQ(Q) {
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
if(inputInspection(attrSpec,"L")&& inputInspection(attrSpec,"LA")&& inputInspection(attrSpec,"LB")&& inputInspection(genSpec,"T")){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    let LB=fetchValue(attrSpec,"LB");
    let T=fetchValue(genSpec,"T");
    newL=L-LA-LB-T;
}
if(inputInspection(attrSpec,"LA") && inputInspection(attrSpec,"LB")){
    let LA=fetchValue(attrSpec,"LA");
    let LB=fetchValue(attrSpec,"LB");
    let L=(LA+LB)*2;
    changeMinimum(L,list,"L",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LB")){
    let L=fetchValue(attrSpec,"L");
    let LB=fetchValue(attrSpec,"LB");
    L=L/2;
    L=L-LB;
    changeMaximum(L,list,"LA",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(attrSpec,"LA")){
    let L=fetchValue(attrSpec,"L");
    let LA=fetchValue(attrSpec,"LA");
    L=L/2;
    L=L-LA;
    changeMaximum(L,list,"LB",true);
}
if(inputInspection(attrSpec,"LA")){
    let LA=fetchValue(attrSpec,"LA");
    LA=LA-2;
    changeMaximum(LA,list,"MA",true);
    changeMaximum(LA,list,"MSA",true);
    changeMaximum(LA,list,"MMA",true);
}
if(inputInspection(attrSpec,"LB")){
    let LB=fetchValue(attrSpec,"LB");
    LB=LB-2;
    changeMaximum(LB,list,"MB",true);
    changeMaximum(LB,list,"MSB",true);
    changeMaximum(LB,list,"MMB",true);
}
if(newL!=nil){
    let D=checkMap(specType);
    L=newL-2;
    D=D*5;
    if(D<L){
        changeMaximum(D,list,"MD",true);
        changeMaximum(D,list,"MSD",true);
        changeMaximum(D,list,"MMD",true);
    }else{
        changeMaximum(L,list,"MD",true);
        changeMaximum(L,list,"MSD",true);
        changeMaximum(L,list,"MMD",true);
    }
}
if(inputInspection(attrSpec,"P")){
    let P=fetchValue(attrSpec,"P");
    P=P-4;
    P = P < 3M ? 3M : P;
    removeValue(P,list,"NA",true);
}
if(inputInspection(attrSpec,"Q")){
    let Q=fetchValue(attrSpec,"Q");
    Q=Q-4;
    Q = Q < 3M ? 3M : Q;
    removeValue(Q,list,"NB",true);
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"HA_1")){
    let LA=fetchValue(attrSpec,"LA");
    let HA=fetchValue(appendSpec,"HA_1");
    LA=LA-HA-2;
    changeMaximum(LA,list,"KA",true);
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"KA")){
    let LA=fetchValue(attrSpec,"LA");
    let KA=fetchValue(appendSpec,"KA");
    LA=LA-KA-2;
    changeMaximum(LA,list,"HA_1",true);
}
if(inputInspection(attrSpec,"LB") && inputInspection(appendSpec,"HB_1")){
    let LB=fetchValue(attrSpec,"LB");
    let HB=fetchValue(appendSpec,"HB_1");
    LB=LB-HB-2;
    changeMaximum(LB,list,"KB",true);
}
if(inputInspection(attrSpec,"LB") && inputInspection(appendSpec,"KB")){
    let LB=fetchValue(attrSpec,"LB");
    let KB=fetchValue(appendSpec,"KB");
    LB=LB-KB-2;
    changeMaximum(LB,list,"HB_1",true);
}
if(newL!=nil && inputInspection(appendSpec,"HC_1")){
    let HC=fetchValue(appendSpec,"HC_1");
    L=newL-HC-2;
    changeMaximum(L,list,"KC",false);
}
if(newL!=nil && inputInspection(appendSpec,"KC")){
    let KC=fetchValue(appendSpec,"KC");
    L=newL-KC-2;
    L = L < 3M ? 3M : L;
    changeMaximum(L,list,"HC_1",false);
}
if(inputInspection(appendSpec,"HD_1") && newL!=nil){
    let HD=fetchValue(appendSpec,"HD_1");
    let renewalL=newL-HD-2;
    changeParticular(renewalL,list,"KD");
}
if(inputInspection(appendSpec,"KC")&& inputInspection(appendSpec,"HC_1")){
    let KC=fetchValue(appendSpec,"KC");
    let HC=fetchValue(appendSpec,"HC_1");
    KC=KC+HC+2;
    changeMinimum(KC,list,"KD",true);
}
if(newL!=nil && inputInspection(appendSpec,"KD")){
    let KD=fetchValue(appendSpec,"KD");
    let renewalL=newL-KD-2;
    changeParticular(renewalL,list,"HD_1");
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"HA")){
    let LA=fetchValue(attrSpec,"LA");
    let HA=fetchValue(appendSpec,"HA");
    LA=LA-HA-2;
    changeMaximum(LA,list,"ZA",false);
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"ZA")){
    let LA=fetchValue(attrSpec,"LA");
    let ZA=fetchValue(appendSpec,"ZA");
    LA=LA-ZA-2;
    changeMaximum(LA,list,"HA",true);
}
if(inputInspection(attrSpec,"LB") && inputInspection(appendSpec,"HB")){
    let LB=fetchValue(attrSpec,"LB");
    let HB=fetchValue(appendSpec,"HB");
    LB=LB-HB-2;
    changeMaximum(LB,list,"ZB",false);
}
if(inputInspection(attrSpec,"LB") && inputInspection(appendSpec,"ZB")){
    let LB=fetchValue(attrSpec,"LB");
    let ZB=fetchValue(appendSpec,"ZB");
    LB=LB-ZB-2;
    changeMaximum(LB,list,"HB",true);
}
if(newL!=nil && inputInspection(appendSpec,"HC")){
    let HC=fetchValue(appendSpec,"HC");
    let renewalL=newL-HC-2;
    changeMaximum(renewalL,list,"ZC",false);
}
if( inputInspection(appendSpec,"HD") && newL!=nil){
    let HD=fetchValue(appendSpec,"HD");
    let renewalL=newL-HD-2;
    changeParticular(renewalL,list,"ZD");
}
if(inputInspection(appendSpec,"ZC")&& inputInspection(appendSpec,"HC")){
    let ZC=fetchValue(appendSpec,"ZC");
    let HC=fetchValue(appendSpec,"HC");
    ZC=ZC+HC+2;
    changeMinimum(ZC,list,"ZD",true);
}
if(newL!=nil && inputInspection(appendSpec,"ZD")){
    let ZD=fetchValue(appendSpec,"ZD");
    let renewalL=newL-ZD-2;
    changeParticular(renewalL,list,"HD");
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
if(newL!=nil){
    let renewalL=newL-3;
    changeMaximum(renewalL,list,"TD",false);
}
if(inputInspection(attrSpec,"LA") && inputInspection(appendSpec,"GA")){
    let LA=fetchValue(attrSpec,"LA");
    let GA=fetchValue(appendSpec,"GA");
    LA=LA-GA-2;
    changeMaximum(LA,list,"WA",false);
}
if(inputInspection(attrSpec,"LB") && inputInspection(appendSpec,"HB")){
    let LB=fetchValue(attrSpec,"LB");
    let HB=fetchValue(appendSpec,"HB");
    LB=LB-HB-2;
    changeMaximum(LB,list,"ZB",false);
}
if(inputInspection(attrSpec,"LB") && inputInspection(appendSpec,"ZB")){
    let LB=fetchValue(attrSpec,"LB");
    let ZB=fetchValue(appendSpec,"ZB");
    LB=LB-ZB-2;
    changeMaximum(LB,list,"HB",true);
}
if(newL!=nil && inputInspection(appendSpec,"HC")){
    let HC=fetchValue(appendSpec,"HC");
    let renewalL=newL-HC-2;
    changeMaximum(renewalL,list,"ZC",false);
}
if(newL!=nil && inputInspection(appendSpec,"ZC")){
    let ZC=fetchValue(appendSpec,"ZC");
    let renewalL=newL-ZC-2;
    changeMaximum(renewalL,list,"HC",false);
}
if(newL!=nil && inputInspection(appendSpec,"HD")){
    let HD=fetchValue(appendSpec,"HD");
    let renewalL=newL-HD-2;
    changeMaximum(renewalL,list,"ZD",false);
}
if(inputInspection(attrSpec,"ZC") && inputInspection(appendSpec,"HC")){
    let ZC=fetchValue(attrSpec,"ZC");
    let HC=fetchValue(appendSpec,"HC");
    ZC=ZC+HC+2;
    changeMinimum(ZC,list,"ZD",true);
}
if(newL!=nil && inputInspection(appendSpec,"ZD")){
    let ZD=fetchValue(appendSpec,"ZD");
    let renewalL=newL-ZD-2;
    changeMaximum(renewalL,list,"HD",false);
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
if(newL!=nil){
    let renewalL=newL-3;
    changeMaximum(renewalL,list,"TD",false);
}
if(inputInspection(attrSpec,"LB") && inputInspection(appendSpec,"GB")){
    let LB=fetchValue(attrSpec,"LB");
    let GB=fetchValue(appendSpec,"GB");
    LB=LB-GB-2;
    changeMaximum(LB,list,"WB",true);
}
if(newL!=nil && inputInspection(appendSpec,"GD") ){
    let GD=fetchValue(appendSpec,"GD");
    let renewalL=newL-GD-2;
    changeMaximum(renewalL,list,"WD",false);
}
if(inputInspection(attrSpec,"LA") && inputInspection(attrSpec,"P")){
    let P=fetchValue(attrSpec,"P");
    l=getConstantP(P);
    let LA=fetchValue(attrSpec,"LA");
    LA=LA-l;
    changeMaximum(LA,list,"SA",true);
}
if(inputInspection(attrSpec,"LB") && inputInspection(attrSpec,"Q")){
    let Q=fetchValue(attrSpec,"Q");
    l=getConstantQ(Q);
    let LB=fetchValue(attrSpec,"LB");
    LB=LB-l;
    changeMaximum(LB,list,"SB",true);
}
return p;
','0',now() ,'1001241计算脚本')