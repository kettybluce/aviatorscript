DELETE FROM `goods_rule` WHERE spu='1022749' AND rule_type='20';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUES (1691731617086971904,1022749,'20','let errmsg = nil;
if(A != nil && B != nil){
    A=decimal(A);
    B=decimal(B);
    if(A<B){
      errmsg = "需满足公式 A≥B";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：A≥B'),(1691731617086971905,1022749,'20','let errmsg = nil;
if(A != nil && B != nil){
    A=decimal(A);
    B=decimal(B);
    if(B>A){
      errmsg = "需满足公式 B≤A";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：B≤A'),(1691731617086971906,1022749,'20','let errmsg = nil;
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
if(F != nil && d != nil && A!=nil && (JGKS=="2H(2孔)" || JGKS=="4H(4孔)")){
    F=decimal(F);
    A=decimal(A);
    let newF=F+d+5M;

    if(newF>A){
      errmsg = "需满足公式 F+d(d1)+5≤A";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：选择2H、4H型时， F+d+5≤A  计算结果为小数时向上取整 (F+d(d1)+5≤A)'),(1691731617086971907,1022749,'20','let errmsg = nil;
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
if(F != nil && d1 != nil && A!=nil && (JGKS=="2H(2孔)" || JGKS=="4H(4孔)")){
    F=decimal(F);
    A=decimal(A);
    let newF=F+d1+5M;

    if(newF>A){
      errmsg = "需满足公式 F+d(d1)+5≤A";
      return errmsg;
   }
}
return true;



','0',now() ,'脚本：选择2H、4H型时， F+d1+5≤A  计算结果为小数时向上取整 (F+d(d1)+5≤A)'),(1691731617086971908,1022749,'20','let errmsg = nil;
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
if(F != nil && d != nil && A!=nil && JGKS=="6H(6孔)"){
    F=decimal(F);
    A=decimal(A);

    let newF=2*F+d+5M;
    newF=decimal(math.ceil(newF));   

    if(newF>A){
      errmsg = "需满足公式 2F+d(d1)+5≤A";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：选择6H型时，2F+d+5≤A  计算结果为小数时向上取整 (2F+d(d1)+5≤A)'),(1691731617086971909,1022749,'20','let errmsg = nil;
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
if(F != nil && d1 != nil && A!=nil && JGKS=="6H(6孔)"){
    F=decimal(F);
    A=decimal(A);
 
    let newF=2*F+d1+5M;
    newF=decimal(math.ceil(newF));   

    if(newF>A){
      errmsg = "需满足公式 2F+d(d1)+5≤A";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：选择6H型时，2F+d1+5≤A  计算结果为小数时向上取整 (2F+d(d1)+5≤A)'),(1691731617086971910,1022749,'20','let errmsg = nil;
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
if(G != nil && d != nil && B!=nil && (JGKS=="2H(2孔)" || JGKS=="4H(4孔)")){
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


','0',now() ,'脚本：选择2H、4H型时，G+d/2+2.5≤B 计算结果为小数时向上取整 (G+d/2+2.5≤B)'),(1691731617091166208,1022749,'20','let errmsg = nil;
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
if(G != nil && d != nil && B!=nil && JGKS=="6H(6孔)"){
    G=decimal(G);
    B=decimal(B);

    let newG=G+d+5M; 

    if(newG>B){
      errmsg = "需满足公式 G+d(d1)+5≤B";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：选择6H型时，G+d+5≤B (G+d(d1)+5≤B)'),(1691731617091166209,1022749,'20','let errmsg = nil;
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
if(G != nil && d1 != nil && B!=nil && JGKS=="6H(6孔)"){
    G=decimal(G);
    B=decimal(B);

    let newG=G+d1+5M; 

    if(newG>B){
      errmsg = "需满足公式 G+d(d1)+5≤B";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：选择6H型时，G+d1+5≤B (G+d(d1)+5≤B)'),(1691731617091166210,1022749,'20','let errmsg = nil;
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
if(d != nil && F!=nil && (JGKS=="2H(2孔)" || JGKS=="4H(4孔)")){
    F=decimal(F);

    let newD=d+5;

    if(newD>F){
      errmsg = "需满足公式 d+5≤F≤A-d-5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：选择2H、4H型时 d+5≤F (d+5≤F≤A-d-5)'),(1691731617091166211,1022749,'20','let errmsg = nil;
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
if(d != nil && F!=nil && A!=nil && (JGKS=="2H(2孔)" || JGKS=="4H(4孔)")){
    F=decimal(F);
    A=decimal(A);

    let newA=A-d-5M;

    if(F>newA){
      errmsg = "需满足公式 d+5≤F≤A-d-5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：选择2H、4H型时 F≤A-d-5 (d+5≤F≤A-d-5)'),(1691731617091166212,1022749,'20','let errmsg = nil;
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
if(F != nil && d1 != nil && (JGKS=="2H(2孔)" || JGKS=="4H(4孔)")){
    F=decimal(F);

    let newD=d1+5M; 

    if(newD>F){
      errmsg = "需满足公式 d1+5≤F≤A-d1-5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：选择2H、4H型时 d1+5≤F (d1+5≤F≤A-d1-5)'),(1691731617091166213,1022749,'20','let errmsg = nil;
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
if(A != nil && d1 != nil && F!=nil && (JGKS=="2H(2孔)" || JGKS=="4H(4孔)")){
    A=decimal(A);
    F=decimal(F);

    let newA=A-d1-5; 

    if(F>newA){
      errmsg = "需满足公式 d1+5≤F≤A-d1-5";
      return errmsg;
   }
}
return true;



','0',now() ,'脚本：选择2H、4H型时 F≤A-d1-5 (d1+5≤F≤A-d1-5)'),(1691731617091166214,1022749,'20','let errmsg = nil;
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
if(F != nil && d != nil && JGKS=="6H(6孔)"){
    F=decimal(F);


    let newD=d+5; 

    if(newD>F){
      errmsg = "需满足公式 d+5≤F≤A/2-d/2-2.5";
      return errmsg;
   }
}
return true;



','0',now() ,'脚本：选择6H型时 d+5≤F (d+5≤F≤A/2-d/2-2.5)'),(1691731617091166215,1022749,'20','let errmsg = nil;
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
if(F != nil && A!=nil && d != nil && JGKS=="6H(6孔)"){
    F=decimal(F);
    A=decimal(A);

    let newA=A/2-d/2-2.5M; 

    let comparison=decimal(math.floor(newA)+0.5);
    newA = comparison > newA ? decimal(math.floor(newA)) : comparison;

    if(F>newA){
      errmsg = "需满足公式 F≤A/2-d/2-2.5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：选择6H型时 F≤A/2-d/2-2.5 最大值计算结果：小数部分大于0.5时，保留0.5；小于0.5时，向下取整 (d+5≤F≤A/2-d/2-2.5)'),(1691731617091166216,1022749,'20','let errmsg = nil;
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
if(F != nil && d1 != nil && JGKS=="6H(6孔)"){
    F=decimal(F);

    let newD=d1+5;

    if(newD>F){
      errmsg = "需满足公式 d1+5≤F≤A/2-d1/2-2.5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：选择6H型时 d1+5≤F (d1+5≤F≤A/2-d1/2-2.5)'),(1691731617091166217,1022749,'20','let errmsg = nil;
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
if(F != nil && A!=nil && d1 != nil && JGKS=="6H(6孔)"){
    F=decimal(F);
    A=decimal(A);

    let newA=A/2-d1/2-2.5M; 

    let comparison=decimal(math.floor(newA)+0.5);
    newA = comparison > newA ? decimal(math.floor(newA)) : comparison;

    if(F>newA){
      errmsg = "需满足公式 d1+5≤F≤A/2-d1/2-2.5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：选择6H型时 F≤A/2-d1/2-2.5 最大值计算结果：小数部分大于0.5时，保留0.5；小于0.5时，向下取整 (d1+5≤F≤A/2-d1/2-2.5)'),(1691731617091166218,1022749,'20','let errmsg = nil;
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
if(G!= nil && d != nil && JGKS=="2H(2孔)"){
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

','0',now() ,'脚本：选择2H型时 d/2+2.5≤G 最小值计算结果：小数部分小于0.5时，保留0.5；大于0.5时，向上取整 (d/2+2.5≤G≤B-d/2-2.5)'),(1691731617091166219,1022749,'20','let errmsg = nil;
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
if(G!= nil && B!=nil && d != nil && JGKS=="2H(2孔)"){
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

','0',now() ,'脚本：选择2H型时 G≤B-d/2-2.5 最大值计算结果：小数部分大于0.5时，保留0.5；小于0.5时，向下取整 (d/2+2.5≤G≤B-d/2-2.5)'),(1691731617091166220,1022749,'20','let errmsg = nil;
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
if(G!= nil && d1 != nil && JGKS=="2H(2孔)"){
    G=decimal(G);

    let newD=d1/2+2.5M; 

    let comparison=decimal(math.floor(newD)+0.5);
    newD = comparison > newD ? decimal(math.ceil(newD)) : comparison;

    if(newD>G){
      errmsg = "需满足公式 d1/2+2.5≤G≤B-d1/2-2.5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：选择2H型时 d1/2+2.5≤G 最小值计算结果：小数部分小于0.5时，保留0.5；大于0.5时，向上取整 (d1/2+2.5≤G≤B-d1/2-2.5)'),(1691731617091166221,1022749,'20','let errmsg = nil;
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
if(G!= nil && B!=nil && d1 != nil && JGKS=="2H(2孔)"){
    G=decimal(G);
    B=decimal(B);

    let newB=B-d1/2-2.5M; 

    let comparison=decimal(math.floor(newB)+0.5);
    newB = comparison > newB ? decimal(math.floor(newB)) : comparison;

    if(G>newB){
      errmsg = "需满足公式 d1/2+2.5≤G≤B-d1/2-2.5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：选择2H型时 G≤B-d1/2-2.5 最大值计算结果：小数部分大于0.5时，保留0.5；小于0.5时，向下取整 (d1/2+2.5≤G≤B-d1/2-2.5)'),(1691731617091166222,1022749,'20','let errmsg = nil;
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
if(d != nil && G!=nil && (JGKS=="4H(4孔)" || JGKS=="6H(6孔)")){
    G=decimal(G);

    let newD=d+5M;

    if(newD>G){
      errmsg = "需满足公式 d+5≤G≤B-d-5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：选择4H、6H型时 d+5≤G (d+5≤G≤B-d-5)'),(1691731617091166223,1022749,'20','let errmsg = nil;
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
if(d != nil && G!=nil && B!=nil  && (JGKS=="4H(4孔)" || JGKS=="6H(6孔)")){
    G=decimal(G);
    B=decimal(B);

    let newB=B-d-5M;

    if(G>newB){
      errmsg = "需满足公式 d+5≤G≤B-d-5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：选择4H、6H型时 G≤B-d-5 (d+5≤G≤B-d-5)'),(1691731617091166224,1022749,'20','let errmsg = nil;
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
if(d1 != nil && G!=nil && (JGKS=="4H(4孔)" || JGKS=="6H(6孔)")){
    G=decimal(G);

    let newD=d1+5M;

    if(newD>G){
      errmsg = "需满足公式 d1+5≤G≤B-d1-5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：选择4H、6H型时 d1+5≤G (d1+5≤G≤B-d1-5)'),(1691731617091166225,1022749,'20','let errmsg = nil;
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
if(d1 != nil && G!=nil && B!=nil && (JGKS=="4H(4孔)" || JGKS=="6H(6孔)")){
    G=decimal(G);
    B=decimal(B);

    let newB=B-d1-5;

    if(G>newB){
      errmsg = "需满足公式 d1+5≤G≤B-d1-5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：选择4H、6H型时 G≤B-d1-5 (d1+5≤G≤B-d1-5)'),(1691731617095360512,1022749,'20','let errmsg = nil;
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
if(XC != nil && d != nil && (JGKS=="2H(2孔)" || JGKS=="4H(4孔)")){
    XC=decimal(XC);

    let newD=d/2+2.5M; 
    newD=decimal(math.ceil(newD));

    if(newD>XC){
      errmsg = "需满足公式 d/2+2.5≤XC≤A-F-d/2-2.5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：当2H·4H型时 d/2+2.5≤XC 最小值计算结果：向上取整 (d/2+2.5≤XC≤A-F-d/2-2.5)'),(1691731617095360513,1022749,'20','let errmsg = nil;
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
if(XC != nil && A!=nil && F!=nil   && d != nil && (JGKS=="2H(2孔)" || JGKS=="4H(4孔)")){
    XC=decimal(XC);
    A=decimal(A);
    F=decimal(F);

    let newA=A-F-d/2-2.5M; 
    newA=decimal(math.floor(newA));

    if(XC>newA){
      errmsg = "需满足公式 d/2+2.5≤XC≤A-F-d/2-2.5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：当2H·4H型时 XC≤A-F-d/2-2.5 最大值计算结果：向下取整 (d/2+2.5≤XC≤A-F-d/2-2.5)'),(1691731617095360514,1022749,'20','let errmsg = nil;
let d=nil;
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
if(XC != nil && d1 != nil && (JGKS=="2H(2孔)" || JGKS=="4H(4孔)")){
    XC=decimal(XC);

    let newD=d1/2+2.5M; 
    newD=decimal(math.ceil(newD));

    if(newD>XC){
      errmsg = "需满足公式 d1/2+2.5≤XC≤A-F-d1/2-2.5";
      return errmsg;
   }
}
return true;




','0',now() ,'脚本：当2H·4H型时 d1/2+2.5≤XC 最小值计算结果：向上取整 (d1/2+2.5≤XC≤A-F-d1/2-2.5)'),(1691731617095360515,1022749,'20','let errmsg = nil;
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
if(XC != nil && A!=nil && F!=nil && d1 != nil && (JGKS=="2H(2孔)" || JGKS=="4H(4孔)")){
    XC=decimal(XC);
    A=decimal(A);
    F=decimal(F);

    let newA=A-F-d1/2-2.5M; 
    newA=decimal(math.floor(newA));

    if(XC>newA){
      errmsg = "需满足公式 d1/2+2.5≤XC≤A-F-d1/2-2.5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：当2H·4H型时 XC≤A-F-d1/2-2.5 最大值计算结果：向下取整 (d1/2+2.5≤XC≤A-F-d1/2-2.5)'),(1691731617095360516,1022749,'20','let errmsg = nil;
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
if(XC != nil && d != nil && JGKS=="6H(6孔)"){
    XC=decimal(XC);

    let newD=d/2+2.5M; 
    newD=decimal(math.ceil(newD));

    if(newD>XC){
      errmsg = "需满足公式 d/2+2.5≤XC≤A-2F-d/2-2.5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：当6H型时 d/2+2.5≤XC 最小值计算结果：向上取整 (d/2+2.5≤XC≤A-2F-d/2-2.5)'),(1691731617095360517,1022749,'20','let errmsg = nil;
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
if(XC != nil && A!=nil && F!=nil  && d != nil && JGKS=="6H(6孔)"){
    XC=decimal(XC);
    A=decimal(A);
    F=decimal(F);

    let newA=A-2*F-d/2-2.5M; 
    newA=decimal(math.floor(newA));

    if(XC>newA){
      errmsg = "需满足公式 d/2+2.5≤XC≤A-2F-d/2-2.5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：当6H型时 XC≤A-2F-d/2-2.5 最大值计算结果：向下取整 (d/2+2.5≤XC≤A-2F-d/2-2.5)'),(1691731617095360518,1022749,'20','let errmsg = nil;
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
if(XC != nil && d1 != nil && JGKS=="6H(6孔)"){
    XC=decimal(XC);

    let newD=d1/2+2.5M; 
    newD=decimal(math.ceil(newD));

    if(newD>XC){
      errmsg = "需满足公式 d1/2+2.5≤XC≤A-2F-d1/2-2.5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：当6H型时 d1/2+2.5≤XC 最小值计算结果：向上取整 (d1/2+2.5≤XC≤A-2F-d1/2-2.5)'),(1691731617095360519,1022749,'20','let errmsg = nil;
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
if(XC != nil && A!=nil && F!=nil  && d1 != nil && JGKS=="6H(6孔)"){
    XC=decimal(XC);
    A=decimal(A);
    F=decimal(F);

    let newA=A-2*F-d1/2-2.5M; 
    newA=decimal(math.floor(newA));

    if(XC>newA){
      errmsg = "需满足公式 d1/2+2.5≤XC≤A-2F-d1/2-2.5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：当6H型时 XC≤A-2F-d1/2-2.5 最大值计算结果：向下取整 (d1/2+2.5≤XC≤A-2F-d1/2-2.5)'),(1691731617095360520,1022749,'20','let errmsg = nil;
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
if(YC != nil && d != nil && (JGKS=="2HL(2孔)" || JGKS=="4H(4孔)" || JGKS=="6H(6孔)" )){
    YC=decimal(YC);


    let newD=d/2+2.5M; 
    newD=decimal(math.ceil(newD));

    if(newD>YC){
      errmsg = "需满足公式 d/2+2.5≤YC≤B-G-d/2-2.5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：非2H型时 d/2+2.5≤YC 最小值计算结果：向上取整 (d/2+2.5≤YC≤B-G-d/2-2.5)'),(1691731617095360521,1022749,'20','let errmsg = nil;
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
if(YC != nil && B!=nil && G!=nil && d != nil && (JGKS=="2HL(2孔)" || JGKS=="4H(4孔)" || JGKS=="6H(6孔)" )){
    YC=decimal(YC);
    G=decimal(G);
    B=decimal(B);

    let newB=B-G-d/2-2.5M; 
    newB=decimal(math.floor(newB));

    if(YC>newB){
      errmsg = "需满足公式 d/2+2.5≤YC≤B-G-d/2-2.5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：非2H型时 YC≤B-G-d/2-2.5 最大值计算结果：向下取整 (d/2+2.5≤YC≤B-G-d/2-2.5)'),(1691731617095360522,1022749,'20','let errmsg = nil;
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
if(YC != nil && d1 != nil && (JGKS=="2HL(2孔)" || JGKS=="4H(4孔)" || JGKS=="6H(6孔)" )){
    YC=decimal(YC);


    let newD=d1/2+2.5M; 
    newD=decimal(math.ceil(newD));

    if(newD>YC){
      errmsg = "需满足公式 d1/2+2.5≤YC≤B-G-d1/2-2.5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：非2H型时 d1/2+2.5≤YC 最小值计算结果：向上取整 (d1/2+2.5≤YC≤B-G-d1/2-2.5)'),(1691731617095360523,1022749,'20','let errmsg = nil;
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
if(YC != nil && B!=nil && G!=nil && d1 != nil && (JGKS=="2HL(2孔)" || JGKS=="4H(4孔)" || JGKS=="6H(6孔)" )){
    YC=decimal(YC);
    G=decimal(G);
    B=decimal(B);

    let newB=B-G-d1/2-2.5M; 
    newB=decimal(math.floor(newB));

    if(YC>newB){
      errmsg = "需满足公式 d1/2+2.5≤YC≤B-G-d1/2-2.5";
      return errmsg;
   }
}
return true;
','0',now() ,'脚本：非2H型时 YC≤B-G-d1/2-2.5 最大值计算结果：向下取整 (d1/2+2.5≤YC≤B-G-d1/2-2.5)')