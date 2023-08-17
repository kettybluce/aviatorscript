DELETE FROM `goods_rule` WHERE spu='1022747' AND rule_type='10';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUES (1691719398664257536,1022747,'10','let p = productSearchSkuInfo;
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
let d=nil;
if(inputInspection(genSpec,"Z")){
   let Z=fetchValue(genSpec,"Z");
   if(Z==3){
    d=3.5M;
   }elsif(Z==4){
    d=4.5M;
   }elsif(Z==5){
    d=5.5M;
   }elsif(Z==6){
    d=6.5M;
   }elsif(Z==8){
    d=9M;
   }elsif(Z==10){
    d=11M;
   }
}
let d1=nil;
if(inputInspection(genSpec,"N")){
   let N=fetchValue(genSpec,"N");
   if(N==4){
    d1=8M;
   }elsif(N==5){
    d1=9.5M;
   }elsif(N==6){
    d1=11M;
   }elsif(N==8){
    d1=14M;
   }
}
if(inputInspection(attrSpec,"B")){
    let B=fetchValue(attrSpec,"B");
    changeMinimum(B,list,"A",true);
}
if(inputInspection(attrSpec,"A")){
    let A=fetchValue(attrSpec,"A");
    changeMaximum(A,list,"B",true);
}
if(inputInspection(attrSpec,"F") && d1!=nil){
    let F=fetchValue(attrSpec,"F");
    F=F+d1;
    F=decimal(math.ceil(F));
    changeMaximum(F,list,"A",true);
}
if(inputInspection(attrSpec,"F") && d!=nil){
    let F=fetchValue(attrSpec,"F");
    F=F+d;
    F=decimal(math.ceil(F));
    changeMaximum(F,list,"A",true);
}
if(string.endsWith(type,"2H") && d!=nil && inputInspection(attrSpec,"G")){
    let G=fetchValue(attrSpec,"G");
    G=G+d/2+2.5M;
    G=decimal(math.ceil(G));
    changeMinimum(G,list,"B",true);
}
if(string.endsWith(type,"2H") && d1!=nil && inputInspection(attrSpec,"G")){
    let G=fetchValue(attrSpec,"G");
    G=G+d1/2+2.5M;
    G=decimal(math.ceil(G));
    changeMaximum(G,list,"B",true);
}
if(string.endsWith(type,"4H") && d1!=nil && inputInspection(attrSpec,"G")){
    let G=fetchValue(attrSpec,"G");
    G=G+d1+5M;
    G=decimal(math.ceil(G));
    changeMaximum(G,list,"B",true);
}
if(string.endsWith(type,"4H") && d!=nil && inputInspection(attrSpec,"G")){
    let G=fetchValue(attrSpec,"G");
    G=G+d+5M;
    G=decimal(math.ceil(G));
    changeMaximum(G,list,"B",true);
}
if(d!=nil){
    let newd=d+5;
    changeMinimum(newd,list,"F",true);
}
if(d!=nil && inputInspection(attrSpec,"A")){
    let A=fetchValue(attrSpec,"A");
    A=A-d-5M;
    changeMaximum(A,list,"F",true);
}
if(d1!=nil){
    let newd=d1+5M;
    changeMinimum(newd,list,"F",true);
}
if(d1!=nil && inputInspection(attrSpec,"A")){
    let A=fetchValue(attrSpec,"A");
    A=A-d1-5M;
    changeMaximum(A,list,"F",true);
}
if(d!=nil && string.endsWith(type,"2H")){
      let newD=d/2+2.5M;
      let comparison=decimal(math.floor(newD)+0.5);
      newD = comparison > newD ? decimal(math.ceil(newD)) : comparison;
      changeMinimum(newD,list,"G",true);
}
if(d!=nil && string.endsWith(type,"2H") && inputInspection(attrSpec,"B")){
      let B=fetchValue(attrSpec,"B");
      B=B-d/2-2.5M;
      let comparison=decimal(math.floor(B)+0.5);
      B = comparison > B ? decimal(math.floor(B)) : comparison;
      changeMaximum(B,list,"G",true);
}
if(d1!=nil && string.endsWith(type,"2H")){
      let newD=d1/2+2.5M;
      let comparison=decimal(math.floor(newD)+0.5);
      newD = comparison > newD ? decimal(math.ceil(newD)) : comparison;
      changeMinimum(newD,list,"G",true);
}
if(d1!=nil && string.endsWith(type,"2H") && inputInspection(attrSpec,"B")){
      let B=fetchValue(attrSpec,"B");
      B=B-d1/2-2.5M;
      let comparison=decimal(math.floor(B)+0.5);
      B = comparison > B ? decimal(math.floor(B)) : comparison;
      changeMaximum(B,list,"G",true);
}
if(d!=nil && string.endsWith(type,"4H")){
      let newD=d+5M;
      changeMinimum(newD,list,"G",true);
}
if(d!=nil && string.endsWith(type,"4H") && inputInspection(attrSpec,"B")){
      let B=fetchValue(attrSpec,"B");
      B=B-d-5M;
      changeMaximum(B,list,"G",true);
}
if(d1!=nil && string.endsWith(type,"4H")){
      let newD=d1+5M;
      changeMinimum(newD,list,"G",true);
}
if(d1!=nil && string.endsWith(type,"4H") && inputInspection(attrSpec,"B")){
      let B=fetchValue(attrSpec,"B");
      B=B-d1-5M;
      changeMaximum(B,list,"G",true);
}
return p;
','0',now() ,'1022747计算脚本')