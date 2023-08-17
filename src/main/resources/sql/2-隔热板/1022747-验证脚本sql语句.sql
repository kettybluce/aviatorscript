DELETE FROM `goods_rule` WHERE spu='1022747' AND rule_type='20';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUES (1691720063348162560,1022747,'20','let errmsg = nil;
if(T != nil && Z != nil){
    T=decimal(T);
    if(T==3 || T==5 ){
      errmsg = "T=3/5时，带Z即选择沉孔的型号不能正常生成";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：T=3/5时，带Z即选择沉孔的型号不能正常生成'),(1691720063348162561,1022747,'20','let errmsg = nil;
if(T != nil&& Z != nil){
    T=decimal(T);
    Z=decimal(Z);
   if(T==10 && (Z==4||Z==5||Z==6) ){
    return true;
   }else{
      errmsg = "T=10时，Z只能选择4、5、6";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：T=10时，Z只能选择4、5、6'),(1691720063348162562,1022747,'20','let errmsg = nil;
if(A != nil && B != nil){
    A=decimal(A);
    B=decimal(B);
    if(A<B){
      errmsg = "需满足公式 A≥B";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：A≥B'),(1691720063348162563,1022747,'20','let errmsg = nil;
if(A != nil && B != nil){
    A=decimal(A);
    B=decimal(B);
    if(B>A){
      errmsg = "需满足公式 B≤A";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：B≤A'),(1691720063348162564,1022747,'20','let errmsg = nil;
let d=nil;
if(Z!=nil){
   Z=decimal(Z);
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
if(F != nil && d != nil && A!=nil){
    F=decimal(F);
    A=decimal(A);
    let newF=F+d+5M;
    newF=decimal(math.ceil(newF));
    if(newF>A){
      errmsg = "需满足公式 F+d+5≤A";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：F+d+5≤A,计算结果为小数时向上取整'),(1691720063352356864,1022747,'20','let errmsg = nil;
let d1=nil;
if(N!=nil){
   N=decimal(N);
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
if(F != nil && d1 != nil && A!=nil){
    F=decimal(F);
    A=decimal(A);
    let newF=F+d1+5M;
    newF=decimal(math.ceil(newF));
    if(newF>A){
      errmsg = "需满足公式 F+d1+5≤A";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：F+d1+5≤A,计算结果为小数时向上取整'),(1691720063352356865,1022747,'20','let errmsg = nil;
let d=nil;
if(Z!=nil){
   Z=decimal(Z);
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
if(G != nil && d != nil && B!=nil && JGKS=="2H(2孔)"){
    G=decimal(G);
    B=decimal(B);
    let newG=G+d/2+2.5M;

    newG=decimal(math.ceil(newG));
    if(newG>B){
      errmsg = "需满足公式 G+d/2+2.5≤B";
      return errmsg;
   }
}
return true;



','0',now() ,'脚本：G+d/2+2.5≤B'),(1691720063352356866,1022747,'20','let errmsg = nil;
let d1=nil;
if(N!=nil){
   N=decimal(N);
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
if(G != nil && d1 != nil && B!=nil && JGKS=="2H(2孔)"){
    G=decimal(G);
    B=decimal(B);
    let newG=G+d1/2+2.5M;

    newG=decimal(math.ceil(newG));
    if(newG>B){
      errmsg = "需满足公式 G+d1/2+2.5≤B";
      return errmsg;
   }
}
return true;



','0',now() ,'脚本：G+d1/2+2.5≤B'),(1691720063352356867,1022747,'20','let errmsg = nil;
let d=nil;
if(Z!=nil){
   Z=decimal(Z);
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
if(G != nil && d != nil && B!=nil && JGKS=="4H(4孔)"){
    G=decimal(G);
    B=decimal(B);
    let newG=G+d+5M;

    newG=decimal(math.ceil(newG));
    if(newG>B){
      errmsg = "需满足公式 G+d+5≤B";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：G+d+5≤B'),(1691720063352356868,1022747,'20','let d1=nil;
if(N!=nil){
   N=decimal(N);
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
let errmsg = nil;
if(G != nil && d1 != nil && B!=nil && JGKS=="4H(4孔)"){
    G=decimal(G);
    B=decimal(B);
    let newG=G+d1+5M;

    newG=decimal(math.ceil(newG));
    if(newG>B){
      errmsg = "需满足公式 G+d1+5≤B";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：G+d1+5≤B'),(1691720063352356869,1022747,'20','let errmsg = nil;
let d=nil;
if(Z!=nil){
   Z=decimal(Z);
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
if(d!=nil && F!=nil){
   F=decimal(F);
   let newD=d+5M;
   if(newD>F){
      errmsg = "需满足公式 d+5≤F≤A-d-5";
      return errmsg;
   }
}
return true;



','0',now() ,'脚本：d+5≤F≤A-d-5'),(1691720063352356870,1022747,'20','let errmsg = nil;
let d=nil;
if(Z!=nil){
   Z=decimal(Z);
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
if(d!=nil && F!=nil && A!=nil){
   F=decimal(F);
   A=decimal(A);
   let newD=A-d-5M;
   if(newD<F){
      errmsg = "需满足公式 d+5≤F≤A-d-5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：d+5≤F≤A-d-5'),(1691720063352356871,1022747,'20','let errmsg = nil;
let d1=nil;
if(N!=nil){
   N=decimal(N);
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
if(d1!=nil && F!=nil){
   F=decimal(F);
   let newD=d1+5M;
   if(newD>F){
      errmsg = "需满足公式 d1+5≤F≤A-d1-5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：d1+5≤F≤A-d1-5'),(1691720063352356872,1022747,'20','let errmsg = nil;
let d1=nil;
if(N!=nil){
   N=decimal(N);
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
if(d1!=nil && F!=nil && A!=nil){
   F=decimal(F);
   A=decimal(A);
   let newD=A-d1-5M;
   if(newD<F){
      errmsg = "需满足公式 d1+5≤F≤A-d1-5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：d1+5≤F≤A-d1-5'),(1691720063352356873,1022747,'20','let errmsg = nil;
let d=nil;
if(Z!=nil){
   Z=decimal(Z);
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
if(G != nil && d != nil && JGKS=="2H(2孔)"){
    G=decimal(G);

    let newD=d/2+2.5M;

    let comparison=decimal(math.floor(newD)+0.5);
    newD = comparison > newD ? decimal(math.ceil(newD)) : comparison;

    if(newD>G){
      errmsg = "需满足公式 d/2+2.5≤G≤B-d/2-2.5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：d/2+2.5≤G≤B-d/2-2.5'),(1691720063352356874,1022747,'20','let errmsg = nil;
let d=nil;
if(Z!=nil){
   Z=decimal(Z);
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
if(G != nil && d != nil && JGKS=="2H(2孔)" && B!=nil){
    G=decimal(G);
    B=decimal(B);

    let newB=B-d/2-2.5M;

    let comparison=decimal(math.floor(newB)+0.5);
    newB = comparison > newB ? decimal(math.floor(newB)) : comparison;

    if(G>newB){
      errmsg = "需满足公式 d/2+2.5≤G≤B-d/2-2.5";
      return errmsg;
   }
}
return true;



','0',now() ,'脚本：d/2+2.5≤G≤B-d/2-2.5'),(1691720063352356875,1022747,'20','let errmsg = nil;
let d1=nil;
if(N!=nil){
   N=decimal(N);
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
if(d1!=nil && G!=nil && JGKS=="2H(2孔)"){
   G=decimal(G);

   let newD=d1/2+2.5;

   let comparison=decimal(math.floor(newD)+0.5);
   newD = comparison > newD ? decimal(math.ceil(newD)) : comparison;

   if(newD>G){
      errmsg = "需满足公式 d1/2+2.5≤G≤B-d1/2-2.5";
      return errmsg;
   }
}
return true;



','0',now() ,'脚本：d1/2+2.5≤G≤B-d1/2-2.5'),(1691720063352356876,1022747,'20','let errmsg = nil;
let d1=nil;
if(N!=nil){
   N=decimal(N);
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
if(d1!=nil && G!=nil && B!=nil && JGKS=="2H(2孔)"){
   G=decimal(G);
   B=decimal(B);

   let newB=B-d1/2-2.5M;

   let comparison=decimal(math.floor(newB)+0.5);
   newB = comparison > newB ? decimal(math.floor(newB)) : comparison;

   if(newB>G){
      errmsg = "需满足公式 d1/2+2.5≤G≤B-d1/2-2.5";
      return errmsg;
   }
}
return true;



','0',now() ,'脚本：d1/2+2.5≤G≤B-d1/2-2.5'),(1691720063352356877,1022747,'20','let errmsg = nil;
let d=nil;
if(Z!=nil){
   Z=decimal(Z);
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
if(G != nil && d != nil && JGKS=="4H(4孔)"){
    G=decimal(G);

    let newD=d+5M;

    if(newD>G){
      errmsg = "需满足公式 d+5≤G≤B-d-5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：d+5≤G≤B-d-5'),(1691720063352356878,1022747,'20','let errmsg = nil;
let d=nil;
if(Z!=nil){
   Z=decimal(Z);
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
if(G != nil && d != nil && B!=nil && JGKS=="4H(4孔)"){
    G=decimal(G);
    B=decimal(B);

    let newB=B-d-5M;

    if(G>newB){
      errmsg = "需满足公式 d+5≤G≤B-d-5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：d+5≤G≤B-d-5'),(1691720063352356879,1022747,'20','let errmsg = nil;
let d1=nil;
if(N!=nil){
   N=decimal(N);
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
if(G != nil && d1 != nil && JGKS=="4H(4孔)"){
    G=decimal(G);

    let newD=d1+5M;

    if(newD>G){
      errmsg = "需满足公式 d1+5≤G≤B-d1-5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：d1+5≤G≤B-d1-5'),(1691720063356551168,1022747,'20','let errmsg = nil;
let d1=nil;
if(N!=nil){
   N=decimal(N);
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
if(G != nil && d1 != nil && B!=nil && JGKS=="4H(4孔)"){
    G=decimal(G);
    B=decimal(B);

    let newB=B-d1-5M;

    if(G>newB){
      errmsg = "需满足公式 d1+5≤G≤B-d1-5";
      return errmsg;
   }
}
return true;
','0',now() ,'脚本：d1+5≤G≤B-d1-5')