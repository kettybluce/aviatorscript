DELETE FROM `goods_rule` WHERE spu='1001246' AND rule_type='10';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUES (1683365166824382464,1001246,'10','let p = productSearchSkuInfo;
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
if(D!=nil){
    D=decimal(D);
}
if(D!=nil){
    let newD=D*5;
    changeMaximum(newD,list,"MA",true);
    changeMaximum(newD,list,"MSA",true);
    changeMaximum(newD,list,"MMA",true);
    changeMaximum(newD,list,"MB",true);
    changeMaximum(newD,list,"MSB",true);
    changeMaximum(newD,list,"MMB",true);
}
if(D!=nil){
    let newD=D-4;
    newD = newD < 3M ? 3M : newD;
    removeValue(newD,list,"NA",true);
    removeValue(newD,list,"NB",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"HA")){
    let L=fetchValue(attrSpec,"L");
    let HA=fetchValue(appendSpec,"HA");
    L=L-HA;
    changeMaximum(L,list,"KA",true);
}
if(inputInspection(appendSpec,"KB") && inputInspection(appendSpec,"HB")&& inputInspection(appendSpec,"HA")){
    let KB=fetchValue(appendSpec,"KB");
    let HB=fetchValue(appendSpec,"HB");
    let HA=fetchValue(appendSpec,"HA");
    KB=KB+HB-1-HA;
    changeMaximum(KB,list,"KA",true);
}
if((type=="KZAC" && D==20)||(type=="KZAF" && D==17)(type=="KZAN" && D==20)){
    if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"KA")){
        let L=fetchValue(attrSpec,"L");
        let KC=fetchValue(appendSpec,"KC");
        L=L-KC;
        if(L>=100){
            changeMaximum(100,list,"HA",true);
        }else{
            changeMaximum(L,list,"HA",true);
        }
    }elsif(inputInspection(appendSpec,"KB") && inputInspection(appendSpec,"HB") && inputInspection(appendSpec,"KA")){
        let KB=fetchValue(appendSpec,"KB");
        let HB=fetchValue(appendSpec,"HB");
        let KA=fetchValue(appendSpec,"KA");
        KB=KB+HB-1-KA;
        changeMaximum(KB,list,"HA",true);
    }
}elsif(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"KA")){
     let L=fetchValue(attrSpec,"L");
     let KC=fetchValue(appendSpec,"KC");
     let newL=L-KC;
     changeMaximum(newL,list,"HA",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"HB")){
    let L=fetchValue(attrSpec,"L");
    let HB=fetchValue(appendSpec,"HB");
    L=L-HB;
    changeMaximum(L,list,"KB",true);
}
if(inputInspection(appendSpec,"KA") && inputInspection(appendSpec,"HA") && inputInspection(appendSpec,"HB")){
    let KA=fetchValue(appendSpec,"KA");
    let HA=fetchValue(appendSpec,"HA");
    let HB=fetchValue(appendSpec,"HB");
    KA=KA+HA+1;
    if(HB>=KA){
        changeMinimum(0,list,"KB",true);
    }else{
        changeMinimum(KA,list,"KB",true);
    }
}
if(inputInspection(appendSpec,"KC") && inputInspection(appendSpec,"HB")){
    let KC=fetchValue(appendSpec,"KC");
    let HB=fetchValue(appendSpec,"HB");
    KC=KC-1-HB;
    changeMaximum(KC,list,"KB",true);
}
if(inputInspection(appendSpec,"HA") && inputInspection(appendSpec,"KA")){
    let HA=fetchValue(appendSpec,"HA");
    let KA=fetchValue(appendSpec,"KA");
    HA=HA+KA+2;
    changeMaximum(HA,list,"KB",true);
}
if((type=="KZAC" && D==20)||(type=="KZAF" && D==17)(type=="KZAN" && D==20)){
    if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"KB")){
        let L=fetchValue(attrSpec,"L");
        let KB=fetchValue(appendSpec,"KB");
        L=L-KB;
        if(L>=100){
            changeMaximum(100,list,"HB",true);
        }else{
            changeMaximum(L,list,"HB",true);
        }
    }elsif(inputInspection(appendSpec,"KC") && inputInspection(appendSpec,"KB")){
        let KC=fetchValue(appendSpec,"KC");
        let KB=fetchValue(appendSpec,"KB");
        KC=KC-1-KB;
        changeMaximum(KC,list,"HB",true);
    }
}elsif(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"KB")){
        let L=fetchValue(attrSpec,"L");
        let KB=fetchValue(appendSpec,"KB");
        let newL=L-KB;
        changeMaximum(newL,list,"HA",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"HC")){
    let L=fetchValue(attrSpec,"L");
    let HC=fetchValue(appendSpec,"HC");
    L=L-HC;
    changeMaximum(L,list,"KC",true);
}
if(inputInspection(appendSpec,"HB") && inputInspection(appendSpec,"KB")){
    let HB=fetchValue(appendSpec,"HB");
    let KB=fetchValue(appendSpec,"KB");
    HB=HB+KB+1;
    changeMaximum(HB,list,"KC",true);
}
if(inputInspection(appendSpec,"KD") && inputInspection(appendSpec,"HC")){
    let KD=fetchValue(appendSpec,"KD");
    let HC=fetchValue(appendSpec,"HC");
    KD=KD-HC-1;
    changeMaximum(KD,list,"KC",true);
}
if((type=="KZAC" && D==20)||(type=="KZAF" && D==17)(type=="KZAN" && D==20)){
    if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"KC")){
        let L=fetchValue(attrSpec,"L");
        let KC=fetchValue(appendSpec,"KC");
        L=L-KC;
        if(L>=100){
            changeMaximum(100,list,"HC",true);
        }else{
            changeMaximum(L,list,"HC",true);
        }
    }elsif(inputInspection(appendSpec,"KD") && inputInspection(appendSpec,"KC")){
        let KD=fetchValue(appendSpec,"KD");
        let KC=fetchValue(appendSpec,"KC");
        KD=KD-KC-1;
        changeMaximum(KD,list,"HC",true);
    }
}elsif(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"KC")){
        let L=fetchValue(attrSpec,"L");
        let KC=fetchValue(appendSpec,"KC");
        let newL=L-KC;
        changeMaximum(newL,list,"HC",true);
}
if((type=="KZAC" && D==20)||(type=="KZAF" && D==17)(type=="KZAN" && D==20)){
    if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"KD")){
        let L=fetchValue(attrSpec,"L");
        let KD=fetchValue(appendSpec,"KD");
        L=L-KD;
        if(L>=100){
            changeMaximum(100,list,"HD",true);
        }else{
            changeMaximum(L,list,"HD",true);
        }
    }
}elsif(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"KD")){
        let L=fetchValue(attrSpec,"L");
        let KD=fetchValue(appendSpec,"KD");
        let newL=L-KD;
        changeMaximum(newL,list,"HD",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"HA")){
    let L=fetchValue(attrSpec,"L");
    let HA=fetchValue(appendSpec,"HA");
    L=L-HA;
    changeMaximum(L,list,"ZA",true);
}
if((type=="KZAC" && D==20)||(type=="KZAF" && D==17)(type=="KZAN" && D==20)){
    if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"ZA")){
        let L=fetchValue(attrSpec,"L");
        let ZA=fetchValue(appendSpec,"ZA");
        L=L-ZA;
        if(L>=100){
            changeMaximum(100,list,"HA_2",true);
        }else{
            changeMaximum(L,list,"HA_2",true);
        }
    }
}elsif(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"ZA")){
        let L=fetchValue(attrSpec,"L");
        let ZA=fetchValue(appendSpec,"ZA");
        let newL=L-ZA;
        changeMaximum(newL,list,"HA_2",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"HB_2")){
    let L=fetchValue(attrSpec,"L");
    let HB_2=fetchValue(appendSpec,"HB_2");
    L=L-HB_2;
    changeMaximum(L,list,"ZB",true);
}
if((type=="KZAC" && D==20)||(type=="KZAF" && D==17)(type=="KZAN" && D==20)){
    if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"ZB")){
        let L=fetchValue(attrSpec,"L");
        let ZB=fetchValue(appendSpec,"ZB");
        L=L-ZB;
        if(L>=100){
            changeMaximum(100,list,"HB_2",true);
        }else{
            changeMaximum(L,list,"HB_2",true);
        }
    }
}elsif(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"ZB")){
        let L=fetchValue(attrSpec,"L");
        let ZB=fetchValue(appendSpec,"ZB");
        let newL=L-ZB;
        changeMaximum(newL,list,"HB_2",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"HD_2")){
    let L=fetchValue(attrSpec,"L");
    let HD_2=fetchValue(appendSpec,"HD_2");
    L=L-HD_2;
    changeMaximum(L,list,"ZD",true);
}
if((type=="KZAC" && D==20)||(type=="KZAF" && D==17)(type=="KZAN" && D==20)){
    if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"ZC")){
        let L=fetchValue(attrSpec,"L");
        let ZC=fetchValue(appendSpec,"ZC");
        L=L-ZC;
        if(L>=100){
            changeMaximum(100,list,"HC_2",true);
        }else{
            changeMaximum(L,list,"HC_2",true);
        }
    }
}elsif(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"ZC")){
        let L=fetchValue(attrSpec,"L");
        let ZC=fetchValue(appendSpec,"ZC");
        let newL=L-ZC;
        changeMaximum(newL,list,"HC_2",true);
}
if((type=="KZAC" && D==20)||(type=="KZAF" && D==17)(type=="KZAN" && D==20)){
    if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"ZD")){
        let L=fetchValue(attrSpec,"L");
        let ZD=fetchValue(appendSpec,"ZD");
        L=L-ZD;
        if(L>=100){
            changeMaximum(100,list,"HD_2",true);
        }else{
            changeMaximum(L,list,"HD_2",true);
        }
    }
}elsif(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"ZD")){
        let L=fetchValue(attrSpec,"L");
        let ZD=fetchValue(appendSpec,"ZD");
        let newL=L-ZD;
        changeMaximum(newL,list,"HD_2",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"GA")){
    let L=fetchValue(attrSpec,"L");
    let GA=fetchValue(appendSpec,"GA");
    L=L-GA;
    changeMaximum(L,list,"WA",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"WA")){
    let L=fetchValue(attrSpec,"L");
    let WA=fetchValue(appendSpec,"WA");
    L=L-WA;
    changeMaximum(L,list,"GA",true);
}
if(inputInspection(appendSpec,"WA") && inputInspection(appendSpec,"GA")){
    let WA=fetchValue(attrSpec,"WA");
    let GA=fetchValue(appendSpec,"GA");
    WA=WA+GA+1;
    changeMinimum(WA,list,"WB",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"GB")){
    let L=fetchValue(attrSpec,"L");
    let GB=fetchValue(appendSpec,"GB");
    L=L-GB;
    changeMaximum(L,list,"WB",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"WB")){
    let L=fetchValue(attrSpec,"L");
    let WB=fetchValue(appendSpec,"WB");
    L=L-WB;
    changeMaximum(L,list,"GB",true);
}
if(inputInspection(appendSpec,"WB") && inputInspection(appendSpec,"GB")){
    let WB=fetchValue(attrSpec,"WB");
    let GB=fetchValue(appendSpec,"GB");
    WB=WB+GB+1;
    changeMinimum(WB,list,"WC",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"GC")){
    let L=fetchValue(attrSpec,"L");
    let GC=fetchValue(appendSpec,"GC");
    L=L-GC;
    changeMaximum(L,list,"WC",true);
}
if(inputInspection(attrSpec,"L") && inputInspection(appendSpec,"WC")){
    let L=fetchValue(attrSpec,"L");
    let WC=fetchValue(appendSpec,"WC");
    L=L-WC;
    changeMaximum(L,list,"GC",true);
}
return p;
','0',now() ,'1001246计算脚本')