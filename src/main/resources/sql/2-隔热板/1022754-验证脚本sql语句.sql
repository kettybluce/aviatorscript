DELETE FROM `goods_rule` WHERE spu='1022754' AND rule_type='20';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUES (1691749249764929536,1022754,'20','let errmsg = nil;
if((M!= nil && L!= nil)||(M== nil && L== nil)){
    return true;
} else {
   errmsg = "型号中需指定下述参数。(M L)";
   return errmsg;
}

','0',now() ,'脚本：M,L'),(1691749249764929537,1022754,'20','let errmsg = nil;
if(A != nil && B != nil){
    A=decimal(A);
    B=decimal(B);
    if(A<B){
      errmsg = "需满足公式 A≥B";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：A≥B'),(1691749249764929538,1022754,'20','let errmsg = nil;
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

','0',now() ,'脚本：选择2H、4H型时：d+5≤F'),(1691749249764929539,1022754,'20','let errmsg = nil;
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



','0',now() ,'脚本：选择2H、4H型时：d1+5≤F'),(1691749249764929540,1022754,'20','let errmsg = nil;
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

','0',now() ,'脚本：选择2H、4H型时：F≤A-d-5'),(1691749249764929541,1022754,'20','let errmsg = nil;
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

','0',now() ,'脚本：选择2H、4H型时：F≤A-d1-5'),(1691749249764929542,1022754,'20','let errmsg = nil;
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
if(d != nil && F!=nil && JGKS=="6H(6孔)"){
    F=decimal(F);

    let newD=d+5;

    if(newD>F){
      errmsg = "需满足公式 d+5≤F≤A-d-5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：选择6H时: d+5≤F'),(1691749249764929543,1022754,'20','let errmsg = nil;
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

    let newD=d1+5M;

    if(newD>F){
      errmsg = "需满足公式 d1+5≤F≤A-d1-5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：选择6H时: d1+5≤F'),(1691749249769123840,1022754,'20','let errmsg = nil;
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

','0',now() ,'脚本：选择6H时: F≤A/2-d/2-2.5'),(1691749249769123841,1022754,'20','let errmsg = nil;
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

','0',now() ,'脚本：选择6H时: F≤A/2-d1/2-2.5'),(1691749249769123842,1022754,'20','let errmsg = nil;
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

','0',now() ,'脚本：选择2H型时: d/2+2.5≤G'),(1691749249769123843,1022754,'20','let errmsg = nil;
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

','0',now() ,'脚本：选择2H型时: d1/2+2.5≤G'),(1691749249769123844,1022754,'20','let errmsg = nil;
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

','0',now() ,'脚本：选择2H型时: G≤B-d/2-2.5'),(1691749249769123845,1022754,'20','let errmsg = nil;
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

','0',now() ,'脚本：选择2H型时: G≤B-d1/2-2.5'),(1691749249769123846,1022754,'20','let errmsg = nil;
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

','0',now() ,'脚本：选择4H、6H型时: d+5≤G'),(1691749249769123847,1022754,'20','let errmsg = nil;
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

','0',now() ,'脚本：选择4H、6H型时: d1+5≤G'),(1691749249769123848,1022754,'20','let errmsg = nil;
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

','0',now() ,'脚本：选择4H、6H型时: G≤B-d-5'),(1691749249769123849,1022754,'20','let errmsg = nil;
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

','0',now() ,'脚本：选择4H、6H型时:G≤B-d1-5'),(1691749249769123850,1022754,'20','let errmsg = nil;
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

    if(newD>XC){
      errmsg = "需满足公式 d/2+2.5≤XC≤A-F-d/2-2.5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：2H·4H型 d/2+2.5≤XC'),(1691749249773318144,1022754,'20','let errmsg = nil;
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

    if(newD>XC){
      errmsg = "需满足公式 d1/2+2.5≤XC≤A-F-d1/2-2.5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：2H·4H型 d1/2+2.5≤XC'),(1691749249773318145,1022754,'20','let errmsg = nil;
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

    if(XC>newA){
      errmsg = "需满足公式 d/2+2.5≤XC≤A-F-d/2-2.5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：2H·4H型 XC≤A-F-d/2-2.5'),(1691749249773318146,1022754,'20','let errmsg = nil;
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

    if(XC>newA){
      errmsg = "需满足公式 d1/2+2.5≤XC≤A-F-d1/2-2.5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：2H·4H型 XC≤A-F-d1/2-2.5'),(1691749249773318147,1022754,'20','let errmsg = nil;
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

    if(newD>XC){
      errmsg = "需满足公式 d/2+2.5≤XC≤A-2F-d/2-2.5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：6H型 d/2+2.5≤XC'),(1691749249773318148,1022754,'20','let errmsg = nil;
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

    if(newD>XC){
      errmsg = "需满足公式 d1/2+2.5≤XC≤A-2F-d1/2-2.5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：6H型 d1/2+2.5≤XC'),(1691749249773318149,1022754,'20','let errmsg = nil;
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

    if(XC>newA){
      errmsg = "需满足公式 d/2+2.5≤XC≤A-2F-d/2-2.5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：6H型 XC≤A-2F-d/2-2.5'),(1691749249773318150,1022754,'20','let errmsg = nil;
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

    if(XC>newA){
      errmsg = "需满足公式 d1/2+2.5≤XC≤A-2F-d1/2-2.5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：6H型 XC≤A-2F-d1/2-2.5'),(1691749249773318151,1022754,'20','let errmsg = nil;
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
if(YC != nil && d != nil){
    YC=decimal(YC);


    let newD=d/2+2.5M;

    if(newD>YC){
      errmsg = "需满足公式 d/2+2.5≤YC≤B-G-d/2-2.5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：d/2+2.5≤YC'),(1691749249773318152,1022754,'20','let errmsg = nil;
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
if(YC != nil && d1 != nil){
    YC=decimal(YC);


    let newD=d1/2+2.5M;

    if(newD>YC){
      errmsg = "需满足公式 d1/2+2.5≤YC≤B-G-d1/2-2.5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：d1/2+2.5≤YC'),(1691749249773318153,1022754,'20','let errmsg = nil;
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
if(YC != nil && B!=nil && G!=nil && d != nil){
    YC=decimal(YC);
    G=decimal(G);
    B=decimal(B);

    let newB=B-G-d/2-2.5M;

    if(YC>newB){
      errmsg = "需满足公式 d/2+2.5≤YC≤B-G-d/2-2.5";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：YC≤B-G-d/2-2.5'),(1691749249773318154,1022754,'20','let errmsg = nil;
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
if(YC != nil && B!=nil && G!=nil && d1 != nil){
    YC=decimal(YC);
    G=decimal(G);
    B=decimal(B);

    let newB=B-G-d1/2-2.5M;

    if(YC>newB){
      errmsg = "需满足公式 d1/2+2.5≤YC≤B-G-d1/2-2.5";
      return errmsg;
   }
}
return true;


','0',now() ,'脚本：YC≤B-G-d1/2-2.5'),(1691749249773318155,1022754,'20','let errmsg = nil;
if(T==3 && M!=nil){
    errmsg = "T=3 M不可选";
    return errmsg;
}
return true;

','0',now() ,'脚本：T=3 M不可选'),(1691749249773318156,1022754,'20','let errmsg = nil;
if((T==3 || T==5)&& Z!=nil){
    errmsg = "T=3,5 Z不可选";
    return errmsg;
}
return true;

','0',now() ,'脚本：T=3,5 Z不可选'),(1691749249773318157,1022754,'20','let errmsg = nil;
if(XC!= nil){
   XC=decimal(XC);
   if(5<=XC && XC<=786){
       return true;
   }else{
       errmsg = "需满足公式 5≤XC≤786";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤XC≤786'),(1691749249773318158,1022754,'20','let errmsg = nil;
if(YC!= nil){
   YC=decimal(YC);
   if(5<=YC && YC<=586){
       return true;
   }else{
       errmsg = "需满足公式 5≤YC≤586";
       return errmsg;
   }
}
return true;

','0',now() ,'脚本：5≤YC≤586'),(1691749249773318159,1022754,'20','let errmsg = nil;
if(JGKS=="2H(2孔)" && YC!=nil){

    errmsg = "加工孔数 为2H型的时候不做YC追加工";
    return errmsg;

}
return true;

','0',now() ,'脚本："加工孔数"为2H型的时候不做YC追加工'),(1691749249773318160,1022754,'20','let errmsg = nil;
if(A != nil && B != nil){
    A=decimal(A);
    B=decimal(B);
    if(B>A){
      errmsg = "需满足公式 B≤A";
      return errmsg;
   }
}
return true;
','0',now() ,'脚本：B≤A')