DELETE FROM `goods_rule` WHERE spu='1001246' AND rule_type='10';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUES (1682328739147718656,1001246,'10','let p = productSearchSkuInfo;
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
return p;
','0',now() ,'1001246计算脚本')