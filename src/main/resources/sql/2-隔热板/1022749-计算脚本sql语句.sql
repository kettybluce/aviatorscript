DELETE FROM `goods_rule` WHERE spu='1022749' AND rule_type='10';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUES (1691731477190160384,1022749,'10','let p = productSearchSkuInfo;
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
if(((string.endsWith(type,"2H") || string.endsWith(type,"4H"))) && d!=nil && inputInspection(attrSpec,"F")){
    let F=fetchValue(attrSpec,"F");
    F=F+d+5M;
    F=decimal(math.ceil(F));
    changeMinimum(F,list,"A",true);
}
if(((string.endsWith(type,"2H") || string.endsWith(type,"4H"))) && d1!=nil && inputInspection(attrSpec,"F")){
    let F=fetchValue(attrSpec,"F");
    F=F+d1+5M;
    F=decimal(math.ceil(F));
    changeMinimum(F,list,"A",true);
}
if(string.endsWith(type,"6H") && d!=nil && inputInspection(attrSpec,"F")){
    let F=fetchValue(attrSpec,"F");
    F=2*F+d+5M;
    F=decimal(math.ceil(F));
    changeMinimum(F,list,"A",true);
}
if(string.endsWith(type,"6H") && d1!=nil && inputInspection(attrSpec,"F")){
    let F=fetchValue(attrSpec,"F");
    F=2*F+d1+5M;
    F=decimal(math.ceil(F));
    changeMinimum(F,list,"A",true);
}
if(((string.endsWith(type,"2H") || string.endsWith(type,"4H"))) && d!=nil && inputInspection(attrSpec,"G")){
    let G=fetchValue(attrSpec,"G");
    G=G+d/2+2.5M;
    G=decimal(math.ceil(G));
    changeMinimum(G,list,"B",true);
}
if(string.endsWith(type,"6H") && d!=nil && inputInspection(attrSpec,"G")){
    let G=fetchValue(attrSpec,"G");
    G=G+d+5M;
    G=decimal(math.ceil(G));
    changeMinimum(G,list,"B",true);
}
if(string.endsWith(type,"6H") && d1!=nil && inputInspection(attrSpec,"G")){
    let G=fetchValue(attrSpec,"G");
    G=G+d1+5M;
    G=decimal(math.ceil(G));
    changeMinimum(G,list,"B",true);
}
if(((string.endsWith(type,"2H") || string.endsWith(type,"4H"))) && d!=nil ){
    let newD=d+5M;
    changeMinimum(newD,list,"F",true);
}
if(((string.endsWith(type,"2H") || string.endsWith(type,"4H"))) && d!=nil && inputInspection(attrSpec,"A") ){
    let A=fetchValue(attrSpec,"A");
    A=A-d-5M;
    changeMaximum(A,list,"F",true);
}
if(((string.endsWith(type,"2H") || string.endsWith(type,"4H"))) && d1!=nil ){
    let newD=d1+5M;
    changeMinimum(newD,list,"F",true);
}
if(((string.endsWith(type,"2H") || string.endsWith(type,"4H"))) && d1!=nil && inputInspection(attrSpec,"A") ){
    let A=fetchValue(attrSpec,"A");
    A=A-d1-5M;
    changeMaximum(A,list,"F",true);
}
if(string.endsWith(type,"6H")  && d!=nil ){
    let newD=d+5M;
    changeMinimum(newD,list,"F",true);
}
if(string.endsWith(type,"6H")  && d!=nil && inputInspection(attrSpec,"A")){
    let A=fetchValue(attrSpec,"A");
    A=A/2-d/2-2.5M;
    let comparison=decimal(math.floor(A)+0.5);
    A = comparison > A ? decimal(math.floor(A)) : comparison;
    changeMaximum(A,list,"F",true);
}
if(string.endsWith(type,"6H")  && d1!=nil ){
    let newD=d1+5M;
    changeMinimum(newD,list,"F",true);
}
if(string.endsWith(type,"6H")  && d1!=nil && inputInspection(attrSpec,"A")){
    let A=fetchValue(attrSpec,"A");
    A=A/2-d1/2-2.5M;
    let comparison=decimal(math.floor(A)+0.5);
    A = comparison > A ? decimal(math.floor(A)) : comparison;
    changeMaximum(A,list,"F",true);
}
if(string.endsWith(type,"2H")  && d!=nil ){
    let newD=d/2+2.5M;
    let comparison=decimal(math.floor(newD)+0.5);
    newD = comparison > newD ? decimal(math.ceil(newD)) : comparison;
    changeMinimum(newD,list,"G",true);
}
if(string.endsWith(type,"2H")  && d!=nil && inputInspection(attrSpec,"B")){
    let B=fetchValue(attrSpec,"B");
    B=B-d/2-2.5M;
    let comparison=decimal(math.floor(B)+0.5);
    B = comparison > B ? decimal(math.floor(B)) : comparison;
    changeMaximum(B,list,"G",true);
}
if(string.endsWith(type,"2H")  && d1!=nil ){
    let newD=d1/2+2.5M;
    let comparison=decimal(math.floor(newD)+0.5);
    newD = comparison > newD ? decimal(math.ceil(newD)) : comparison;
    changeMinimum(newD,list,"G",true);
}
if(string.endsWith(type,"2H")  && d1!=nil && inputInspection(attrSpec,"B")){
    let B=fetchValue(attrSpec,"B");
    B=B-d1/2-2.5M;
    let comparison=decimal(math.floor(B)+0.5);
    B = comparison > B ? decimal(math.floor(B)) : comparison;
    changeMaximum(B,list,"G",true);
}
if(((string.endsWith(type,"4H") || string.endsWith(type,"6H"))) && d!=nil ){
    let newD=d+5M;
    changeMinimum(newD,list,"G",true);
}
if(((string.endsWith(type,"4H") || string.endsWith(type,"6H"))) && d!=nil && inputInspection(attrSpec,"B")){
    let B=fetchValue(attrSpec,"B");
    B=B-d-5M;
    changeMaximum(B,list,"G",true);
}
if(((string.endsWith(type,"4H") || string.endsWith(type,"6H"))) && d1!=nil){
    let newD=d1+5M;
    changeMinimum(newD,list,"G",true);
}
if(((string.endsWith(type,"4H") || string.endsWith(type,"6H"))) && d1!=nil && inputInspection(attrSpec,"B")){
    let B=fetchValue(attrSpec,"B");
    B=B-d1-5M;
    changeMaximum(B,list,"G",true);
}
if(((string.endsWith(type,"2H") || string.endsWith(type,"4H"))) && d!=nil ){
    let newD=d/2+2.5M;
    newD=decimal(math.ceil(newD));
    changeMinimum(newD,list,"XC",true);
}
if(((string.endsWith(type,"2H") || string.endsWith(type,"4H"))) && d!=nil && inputInspection(attrSpec,"A")&& inputInspection(attrSpec,"F")){
    let A=fetchValue(attrSpec,"A");
    let F=fetchValue(attrSpec,"F");
    A=A-F-d/2-2.5M;
    A=decimal(math.floor(A));
    changeMaximum(A,list,"XC",true);
}
if(((string.endsWith(type,"2H") || string.endsWith(type,"4H"))) && d1!=nil ){
    let newD=d1/2+2.5M;
    newD=decimal(math.ceil(newD));
    changeMinimum(newD,list,"XC",true);
}
if(((string.endsWith(type,"2H") || string.endsWith(type,"4H"))) && d1!=nil && inputInspection(attrSpec,"A")&& inputInspection(attrSpec,"F")){
    let A=fetchValue(attrSpec,"A");
    let F=fetchValue(attrSpec,"F");
    A=A-F-d1/2-2.5M;
    A=decimal(math.floor(A));
    changeMaximum(A,list,"XC",true);
}
if(string.endsWith(type,"6H") && d!=nil ){
    let newD=d/2+2.5M;
    newD=decimal(math.ceil(newD));
    changeMinimum(newD,list,"XC",true);
}
if(string.endsWith(type,"6H") && d!=nil && inputInspection(attrSpec,"A")&& inputInspection(attrSpec,"F")){
    let A=fetchValue(attrSpec,"A");
    let F=fetchValue(attrSpec,"F");
    A=A-2*F-d/2-2.5M;
    A=decimal(math.floor(A));
    changeMaximum(A,list,"XC",true);
}
if(string.endsWith(type,"6H") && d1!=nil ){
    let newD=d1/2+2.5M;
    newD=decimal(math.ceil(newD));
    changeMinimum(newD,list,"XC",true);
}
if(string.endsWith(type,"6H") && d1!=nil && inputInspection(attrSpec,"A")&& inputInspection(attrSpec,"F")){
    let A=fetchValue(attrSpec,"A");
    let F=fetchValue(attrSpec,"F");
    A=A-2*F-d1/2-2.5M;
    A=decimal(math.floor(A));
    changeMaximum(A,list,"XC",true);
}
if(((string.endsWith(type,"2HL") || string.endsWith(type,"4H") || string.endsWith(type,"6H"))) && d!=nil ){
    let newD=d/2+2.5M;
    newD=decimal(math.ceil(newD));
    changeMinimum(newD,list,"YC",true);
}
if(((string.endsWith(type,"2HL") || string.endsWith(type,"4H") || string.endsWith(type,"6H"))) && d!=nil && inputInspection(attrSpec,"B")&& inputInspection(attrSpec,"G")){
    let B=fetchValue(attrSpec,"B");
    let G=fetchValue(attrSpec,"G");
    B=B-G-d/2-2.5M;
    B=decimal(math.floor(B));
    changeMinimum(B,list,"YC",true);
}
if(((string.endsWith(type,"2HL") || string.endsWith(type,"4H") || string.endsWith(type,"6H"))) && d1!=nil ){
    let newD=d1/2+2.5M;
    newD=decimal(math.ceil(newD));
    changeMinimum(newD,list,"YC",true);
}
if(((string.endsWith(type,"2HL") || string.endsWith(type,"4H") || string.endsWith(type,"6H"))) && d1!=nil && inputInspection(attrSpec,"B")&& inputInspection(attrSpec,"G")){
    let B=fetchValue(attrSpec,"B");
    let G=fetchValue(attrSpec,"G");
    B=B-G-d1/2-2.5M;
    B=decimal(math.floor(B));
    changeMinimum(B,list,"YC",true);
}
return p;
','0',now() ,'1022749计算脚本')