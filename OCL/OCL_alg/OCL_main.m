 
% OCL Algorithm
function [ACC,ARI,NMI]= OCL_main(X,~)
[Pm.Xlth,Pm.Xwd]=size(X); 
XLable=(X(:,Pm.Xwd));
Pm.Xwd=Pm.Xwd-1;
Pm.Owd=Pm.Xwd;
Pm.Bwd=Pm.Owd;
X=X(:,1:Pm.Xwd);
Pm.k=max(XLable);
NumVal=zeros(1,Pm.Xwd);
Val_list=cell(1,Pm.Xwd); 
Val_count=cell(1,Pm.Xwd);
for i=1:Pm.Xwd
    NumVal(i)=length(unique(X(:,i)));
    [Val,count_list]=unique(X(:,i)); 
    Val_list{i}=transpose(Val);
    Val_count{i}=transpose(count_list/Pm.Xlth);
end
% Initialize P and Q
[Modes,LctRecFOld]=initialization(X,Pm,NumVal);
ModeMtx=cell(Pm.k,Pm.Xwd);
for i=1:Pm.k
    for j=1:Pm.Xwd
        ModeMtx{i,j}=zeros(1,NumVal(j));
        ModeMtx{i,j}(Modes(i,j))=1;
    end    
end
LctRecC=zeros(Pm.Xlth,1); 
node_importance_list_Oringinal=cell(1,Pm.Xwd);
for col =1:Pm.Xwd
    node_importance_list_Oringinal{col}=zeros(1,NumVal(col));
end
FChange=1;
LoopD=0;
Fi_order_list=Order_initial(LctRecC,ModeMtx,NumVal,Pm,Val_list);
X=Order_reset(Fi_order_list,Val_list,X);
% outLoop of OCL
while FChange==1 && LoopD<=50 
    LoopD=LoopD+1;
    [LctRecC,ModeMtx]=INOCL(X,ModeMtx,Pm.k,NumVal,LctRecC); 
    if  sum(LctRecFOld-LctRecC)==0 
        FChange=0;
    else 
        LctRecFOld=LctRecC; 
        % change data order
        Fi_order_list=Order_choose(LctRecC,ModeMtx,NumVal,Pm,Val_list);
        X=Order_reset(Fi_order_list,Val_list,X);
        
    end      
end
ACC=Eva_CA(LctRecC,XLable); % CA evaluation
ARI=Eva_ARI(LctRecC, XLable, 'adjusted'); % ARI evaluation
NMI=Eva_NMI(XLable, LctRecC); % NMI evaluation

end

