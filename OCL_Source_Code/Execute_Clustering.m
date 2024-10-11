% 
% compare the new idea with k-modes type algorithms

clear;
clc;

seedfix=25;


%% Clustering for NS
load NS;
X=NS;
[Pm.Xlth,Pm.Xwd]=size(X);
XLable=X(:,Pm.Xwd);
Pm.Xwd=Pm.Xwd-1;
Pm.Owd=Pm.Xwd;
Pm.k=max(XLable);
Modes=zeros(Pm.k,Pm.Xwd);
rand( 'seed' ,seedfix );

Modes( 1 , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
no_initial_mode = 1;
while no_initial_mode ~= Pm.k
    no_initial_mode = no_initial_mode + 1;
    Modes( no_initial_mode , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
    if sum ( sum( Modes == Modes( no_initial_mode , : ) , 2 ) == Pm.Xwd ) ~= 1
        no_initial_mode = no_initial_mode - 1;
    end
end
%Modes=X(randperm(Pm.Xlth,Pm.k),1:Pm.Xwd);
[Acc,ARI,NMI] = OCL_main(X,Modes);
disp('clustering performance on NS data set:');
Acc
ARI
NMI

%% Clustering for AP
load AP;
X=AP_c;
[Pm.Xlth,Pm.Xwd]=size(X);
XLable=X(:,Pm.Xwd);
Pm.Xwd=Pm.Xwd-1;
Pm.Owd=Pm.Xwd;
Pm.k=max(XLable);
Modes=zeros(Pm.k,Pm.Xwd);
rand( 'seed' ,seedfix );

Modes( 1 , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
no_initial_mode = 1;
while no_initial_mode ~= Pm.k
    no_initial_mode = no_initial_mode + 1;
    Modes( no_initial_mode , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
    if sum ( sum( Modes == Modes( no_initial_mode , : ) , 2 ) == Pm.Xwd ) ~= 1
        no_initial_mode = no_initial_mode - 1;
    end
end
%Modes=X(randperm(Pm.Xlth,Pm.k),1:Pm.Xwd);
[Acc,ARI,NMI] = OCL_main(X,Modes);
disp('clustering performance on AP data set:');
Acc
ARI
NMI



%% Clustering for HR
load HR;
X=HR;
[Pm.Xlth,Pm.Xwd]=size(X);
XLable=X(:,Pm.Xwd);
Pm.Xwd=Pm.Xwd-1;
Pm.Owd=Pm.Xwd;
Pm.k=max(XLable);
Modes=zeros(Pm.k,Pm.Xwd);
rand( 'seed' ,seedfix );

Modes( 1 , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
no_initial_mode = 1;
while no_initial_mode ~= Pm.k
    no_initial_mode = no_initial_mode + 1;
    Modes( no_initial_mode , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
    if sum ( sum( Modes == Modes( no_initial_mode , : ) , 2 ) == Pm.Xwd ) ~= 1
        no_initial_mode = no_initial_mode - 1;
    end
end
%Modes=X(randperm(Pm.Xlth,Pm.k),1:Pm.Xwd);
[Acc,ARI,NMI] = OCL_main(X,Modes);


disp('clustering performance on HR data set:');
Acc
ARI
NMI


%% Clustering for LG
load LG;
X=LG;
[Pm.Xlth,Pm.Xwd]=size(X);
XLable=X(:,Pm.Xwd);
Pm.Xwd=Pm.Xwd-1;
Pm.Owd=Pm.Xwd;
Pm.k=max(XLable);
Modes=zeros(Pm.k,Pm.Xwd);
rand( 'seed' ,seedfix );

Modes( 1 , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
no_initial_mode = 1;
while no_initial_mode ~= Pm.k
    no_initial_mode = no_initial_mode + 1;
    Modes( no_initial_mode , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
    if sum ( sum( Modes == Modes( no_initial_mode , : ) , 2 ) == Pm.Xwd ) ~= 1
        no_initial_mode = no_initial_mode - 1;
    end
end
%Modes=X(randperm(Pm.Xlth,Pm.k),1:Pm.Xwd);
[Acc,ARI,NMI] = OCL_main(X,Modes);
disp('clustering performance on LG data set:');
Acc
ARI
NMI


%% Clustering for BC
load BC;
X=BC;
[Pm.Xlth,Pm.Xwd]=size(X);
XLable=X(:,Pm.Xwd);
Pm.Xwd=Pm.Xwd-1;
Pm.Owd=Pm.Xwd;
Pm.k=max(XLable);
Modes=zeros(Pm.k,Pm.Xwd);
rand( 'seed' ,seedfix );

Modes( 1 , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
no_initial_mode = 1;
while no_initial_mode ~= Pm.k
    no_initial_mode = no_initial_mode + 1;
    Modes( no_initial_mode , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
    if sum ( sum( Modes == Modes( no_initial_mode , : ) , 2 ) == Pm.Xwd ) ~= 1
        no_initial_mode = no_initial_mode - 1;
    end
end
%Modes=X(randperm(Pm.Xlth,Pm.k),1:Pm.Xwd);
[Acc,ARI,NMI] = OCL_main(X,Modes);
disp('clustering performance on BC data set:');
Acc
ARI
NMI


%% Clustering for VT
load VT;
X=VT;
[Pm.Xlth,Pm.Xwd]=size(X);
XLable=X(:,Pm.Xwd);
Pm.Xwd=Pm.Xwd-1;
Pm.Owd=Pm.Xwd;
Pm.k=max(XLable);
Modes=zeros(Pm.k,Pm.Xwd);
rand( 'seed' ,seedfix );

Modes( 1 , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
no_initial_mode = 1;
while no_initial_mode ~= Pm.k
    no_initial_mode = no_initial_mode + 1;
    Modes( no_initial_mode , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
    if sum ( sum( Modes == Modes( no_initial_mode , : ) , 2 ) == Pm.Xwd ) ~= 1
        no_initial_mode = no_initial_mode - 1;
    end
end
%Modes=X(randperm(Pm.Xlth,Pm.k),1:Pm.Xwd);
[Acc,ARI,NMI] = OCL_main(X,Modes);
disp('clustering performance on VT data set:');
Acc
ARI
NMI

%% Clustering for AC
load AC;
X=AC;
[Pm.Xlth,Pm.Xwd]=size(X);
XLable=X(:,Pm.Xwd);
Pm.Xwd=Pm.Xwd-1;
Pm.Owd=Pm.Xwd;
Pm.k=max(XLable);
Modes=zeros(Pm.k,Pm.Xwd);
rand( 'seed' ,seedfix );

Modes( 1 , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
no_initial_mode = 1;
while no_initial_mode ~= Pm.k
    no_initial_mode = no_initial_mode + 1;
    Modes( no_initial_mode , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
    if sum ( sum( Modes == Modes( no_initial_mode , : ) , 2 ) == Pm.Xwd ) ~= 1
        no_initial_mode = no_initial_mode - 1;
    end
end
%Modes=X(randperm(Pm.Xlth,Pm.k),1:Pm.Xwd);
[Acc,ARI,NMI] = OCL_main(X,Modes);
disp('clustering performance on AC data set:');
Acc
ARI
NMI

%% Clustering for SB
load SB;
X=SB;
[Pm.Xlth,Pm.Xwd]=size(X);
XLable=X(:,Pm.Xwd);
Pm.Xwd=Pm.Xwd-1;
Pm.Owd=Pm.Xwd;
Pm.k=max(XLable);
Modes=zeros(Pm.k,Pm.Xwd);
rand( 'seed' ,seedfix );

Modes( 1 , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
no_initial_mode = 1;
while no_initial_mode ~= Pm.k
    no_initial_mode = no_initial_mode + 1;
    Modes( no_initial_mode , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
    if sum ( sum( Modes == Modes( no_initial_mode , : ) , 2 ) == Pm.Xwd ) ~= 1
        no_initial_mode = no_initial_mode - 1;
    end
end
%Modes=X(randperm(Pm.Xlth,Pm.k),1:Pm.Xwd);
[Acc,ARI,NMI] = OCL_main(X,Modes);
disp('clustering performance on SB data set:');
Acc
ARI
NMI


%% Clustering for DS
load DS;
X=DS_c;
[Pm.Xlth,Pm.Xwd]=size(X);
XLable=X(:,Pm.Xwd);
Pm.Xwd=Pm.Xwd-1;
Pm.Owd=Pm.Xwd;
Pm.k=max(XLable);
Modes=zeros(Pm.k,Pm.Xwd);
rand( 'seed' ,seedfix );

Modes( 1 , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
no_initial_mode = 1;
while no_initial_mode ~= Pm.k
    no_initial_mode = no_initial_mode + 1;
    Modes( no_initial_mode , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
    if sum ( sum( Modes == Modes( no_initial_mode , : ) , 2 ) == Pm.Xwd ) ~= 1
        no_initial_mode = no_initial_mode - 1;
    end
end
%Modes=X(randperm(Pm.Xlth,Pm.k),1:Pm.Xwd);
[Acc,ARI,NMI] = OCL_main(X,Modes);
disp('clustering performance on DS data set:');
Acc
ARI
NMI

%% Clustering for TT
load TT;
X=TT;
[Pm.Xlth,Pm.Xwd]=size(X);
XLable=X(:,Pm.Xwd);
Pm.Xwd=Pm.Xwd-1;
Pm.Owd=Pm.Xwd;
Pm.k=max(XLable);
Modes=zeros(Pm.k,Pm.Xwd);
rand( 'seed' ,seedfix );

Modes( 1 , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
no_initial_mode = 1;
while no_initial_mode ~= Pm.k
    no_initial_mode = no_initial_mode + 1;
    Modes( no_initial_mode , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
    if sum ( sum( Modes == Modes( no_initial_mode , : ) , 2 ) == Pm.Xwd ) ~= 1
        no_initial_mode = no_initial_mode - 1;
    end
end
%Modes=X(randperm(Pm.Xlth,Pm.k),1:Pm.Xwd);
[Acc,ARI,NMI] = OCL_main(X,Modes);
disp('clustering performance on TT data set:');
Acc
ARI
NMI
%% Clustering for ZOO
load ZO;
X=ZO;
[Pm.Xlth,Pm.Xwd]=size(X);
XLable=X(:,Pm.Xwd);
Pm.Xwd=Pm.Xwd-1;
Pm.Owd=Pm.Xwd;
Pm.k=max(XLable);
Modes=zeros(Pm.k,Pm.Xwd);
rand( 'seed' ,seedfix );

Modes( 1 , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
no_initial_mode = 1;
while no_initial_mode ~= Pm.k
    no_initial_mode = no_initial_mode + 1;
    Modes( no_initial_mode , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
    if sum ( sum( Modes == Modes( no_initial_mode , : ) , 2 ) == Pm.Xwd ) ~= 1
        no_initial_mode = no_initial_mode - 1;
    end
end
%Modes=X(randperm(Pm.Xlth,Pm.k),1:Pm.Xwd);
[Acc,ARI,NMI] = OCL_main(X,Modes);
disp('clustering performance on ZO data set:');
Acc
ARI
NMI


%% Clustering for CS
load CS;
X=CS;
[Pm.Xlth,Pm.Xwd]=size(X);
XLable=X(:,Pm.Xwd);
Pm.Xwd=Pm.Xwd-1;
Pm.Owd=Pm.Xwd;
Pm.k=max(XLable);
Modes=zeros(Pm.k,Pm.Xwd);
rand( 'seed' ,seedfix );

Modes( 1 , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
no_initial_mode = 1;
while no_initial_mode ~= Pm.k
    no_initial_mode = no_initial_mode + 1;
    Modes( no_initial_mode , : ) = X( randperm( Pm.Xlth , 1 ) , 1 : Pm.Xwd );
    if sum ( sum( Modes == Modes( no_initial_mode , : ) , 2 ) == Pm.Xwd ) ~= 1
        no_initial_mode = no_initial_mode - 1;
    end
end
%Modes=X(randperm(Pm.Xlth,Pm.k),1:Pm.Xwd);
[Acc,ARI,NMI] = OCL_main(X,Modes);
disp('clustering performance on CS data set:');
Acc
ARI
NMI






