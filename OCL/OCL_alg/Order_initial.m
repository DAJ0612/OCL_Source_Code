%initial order with no order information
function [Fi_order_list]=Order_initial(LctRecC,ModeMtx,NumVal,Pm,Val_list)
        Len_List=zeros(1,Pm.k);
        count_list=zeros(1,Pm.k);
        for i=1:Pm.k
           C_len=length(find(LctRecC==i)); 
           Len_List(i)=C_len/Pm.Xlth; 
           count_list(i)=C_len;
        end
        Order_List=cell(1,Pm.Xwd);
        for col =1:Pm.Xwd
            Order_col=cell(1,Pm.k);
            for k =1:Pm.k
                co_significance=zeros(1,NumVal(col));
                for v=1:NumVal(col)
                    co_significance(v)=ModeMtx{k,col}(v);
                end
                [~,index]=sort(co_significance, 'descend'); 
                sorted_node=Val_list{col}(index);
              
                new_order_value_list=sorted_node;
                middle_index=ceil(NumVal(col)/2);
                new_order_value_list(middle_index) = sorted_node(1);
                for i = 1:(NumVal(col)-1)/2           
                    new_order_value_list(middle_index - i) = sorted_node(i*2);
                    new_order_value_list(middle_index + i) = sorted_node(i*2 + 1);
                end
                rank_order=zeros(1,NumVal(col));
                for rank=1:NumVal(col)
                    rank_order(new_order_value_list(rank))=rank;
                end
                Order_col{k}=rank_order;
                
            end
            Order_List{col}=Order_col;
            
        end
        Fi_order_list=cell(1,Pm.Xwd);
        for c=1:Pm.Xwd
            Order_tempc=zeros(1,NumVal(c));
            for i=1:Pm.k
                Order_tempc=Order_tempc+(Len_List(i).*Order_List{c}{i}); 
            end

            [~,index_tempc]=sort(Order_tempc);
            Order_final_c=Val_list{c}(index_tempc);
            Fi_order_list{c}=Order_final_c;
        end
      
end