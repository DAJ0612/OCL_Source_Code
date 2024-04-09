% inner loop of OCL Algorithm
function [LctRec,ModeMtx] = INOCL(X,ModeMtx,K,NumVal,LctRec)
[Pm.Xlth,Pm.Xwd]=size(X); 
Pm.k=K;
Change=1; 
Loop=0;
while Change==1 && Loop<=50 % iteratively assign data objects to appropriate clusters until convergence
    Change=0;
    Loop=Loop+1;
    for i=1:Pm.Xlth
        DistVec=zeros(Pm.k,1);
        for j=1:Pm.k
            SubDist=zeros(1,Pm.Xwd);        
            for h=1:Pm.Xwd
                mode_percent=ModeMtx{j,h};
                value_list=1:NumVal(h);
                xcv_dist=sum(((abs(value_list-X(i,h)))/(NumVal(h)-1)).*mode_percent);           
                SubDist(h)=xcv_dist; 
            end
            DistVec(j)=sum(SubDist)/Pm.Xwd;
        end
        [~,Winner]=min(DistVec);
        if LctRec(i)~=Winner
            Change=1;
            LctRec(i)=Winner;
        end
    end
    for i=1:Pm.k % update ModeMtx for the next loop
        ClusterLth=length(find(LctRec==i));
        if sum(LctRec==i)>0
            for j=1:Pm.Xwd
                for h=1:NumVal(j)
                    ModeMtx{i,j}(h)=length(find(X(LctRec==i,j)==h))/ClusterLth;
                end
            end
        end
    end
end

