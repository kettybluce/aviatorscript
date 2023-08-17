DELETE FROM `goods_rule` WHERE spu='1022748' AND rule_type='20';
INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUES (1691695851283783680,1022748,'20','let errmsg = nil;
if(A != nil && B != nil){
    A=decimal(A);
    B=decimal(B);
    if(A<B){
      errmsg = "需满足公式 A≥B";
      return errmsg;
   }
}
return true;

','0',now() ,'脚本：A≥B'),(1691695851283783681,1022748,'20','let errmsg = nil;
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