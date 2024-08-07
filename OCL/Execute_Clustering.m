% 
% compare the new idea with k-modes type algorithms

clear;
clc;

T=10; % set 10 runs of the experiment
CA_all = [];
CAStd = [];
AR = [];
ARStd = [];
NM = [];
NMStd = [];
seedfix=8;

%% Clustering for ZOO
load ZO;
X=ZO;
CA=zeros(T,1);
ARI=zeros(T,1);
NMI=zeros(T,1);
CPS=zeros(T,1);
NCC=zeros(T,1);
[Pm.Xlth,Pm.Xwd]=size(X);
XLable=X(:,Pm.Xwd);
Pm.Xwd=Pm.Xwd-1;
Pm.Owd=Pm.Xwd;
Pm.k=max(XLable);
Modes=zeros(Pm.k,Pm.Xwd);
rand( 'seed' ,seedfix );
for t=1:T
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
    [CA(t),ARI(t),NMI(t)] = OCL_main(X,Modes);
end

disp('clustering performance on ZO data set:');
AccMean=mean(CA);
ARIMean=mean(ARI);
NMIMean=mean(NMI);
ac_std=std(CA);
ari_Std=std(ARI);
CA_all = [ CA_all ; AccMean ];
CAStd = [ CAStd ; ac_std ];
AR = [ AR ; ARIMean];
nmi_Std=std(NMI);
ARStd = [ ARStd ; ari_Std ];
NM = [ NM ; NMIMean ];
NMStd = [ NMStd ; nmi_Std ];
AccMean
ARIMean
NMIMean

%% Clustering for Breath Cancer
load BC;
X=BC;
CA=zeros(T,1);
ARI=zeros(T,1);
NMI=zeros(T,1);
CPS=zeros(T,1);
NCC=zeros(T,1);
[Pm.Xlth,Pm.Xwd]=size(X);
XLable=X(:,Pm.Xwd);
Pm.Xwd=Pm.Xwd-1;
Pm.Owd=Pm.Xwd;
Pm.k=max(XLable);
Modes=zeros(Pm.k,Pm.Xwd);
rand( 'seed' ,seedfix );
for t=1:T
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
    [CA(t),ARI(t),NMI(t)] = OCL_main(X,Modes);
end

disp('clustering performance on BC data set:');
AccMean=mean(CA);
ARIMean=mean(ARI);
NMIMean=mean(NMI);
ac_std=std(CA);
ari_Std=std(ARI);
CA_all = [ CA_all ; AccMean ];
CAStd = [ CAStd ; ac_std ];
AR = [ AR ; ARIMean];
nmi_Std=std(NMI);
ARStd = [ ARStd ; ari_Std ];
NMStd = [ NMStd ; nmi_Std ];
NM = [ NM ; NMIMean ];
AccMean
ARIMean
NMIMean

%% Clustering for AC
load AT_c;
X=AT_c;
CA=zeros(T,1);
ARI=zeros(T,1);
NMI=zeros(T,1);
CPS=zeros(T,1);
NCC=zeros(T,1);
[Pm.Xlth,Pm.Xwd]=size(X);
XLable=X(:,Pm.Xwd);
Pm.Xwd=Pm.Xwd-1;
Pm.Owd=Pm.Xwd;
Pm.k=max(XLable);
Modes=zeros(Pm.k,Pm.Xwd);
rand( 'seed' ,seedfix );
for t=1:T
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
    [CA(t),ARI(t),NMI(t)] = OCL_main(X,Modes);
end

disp('clustering performance on AC data set:');
AccMean=mean(CA);
ARIMean=mean(ARI);
NMIMean=mean(NMI);
ac_std=std(CA);
ari_Std=std(ARI);
CA_all = [ CA_all ; AccMean ];
CAStd = [ CAStd ; ac_std ];
AR = [ AR ; ARIMean];
nmi_Std=std(NMI);
ARStd = [ ARStd ; ari_Std ];
NMStd = [ NMStd ; nmi_Std ];
NM = [ NM ; NMIMean ];
AccMean
ARIMean
NMIMean

%% Clustering for Congressional Voting
load VT;
X=VT;
CA=zeros(T,1);
ARI=zeros(T,1);
NMI=zeros(T,1);
CPS=zeros(T,1);
NCC=zeros(T,1);
[Pm.Xlth,Pm.Xwd]=size(X);
XLable=X(:,Pm.Xwd);
Pm.Xwd=Pm.Xwd-1;
Pm.Owd=Pm.Xwd;
Pm.k=max(XLable);
Modes=zeros(Pm.k,Pm.Xwd);
rand( 'seed' ,seedfix );
for t=1:T
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
    [CA(t),ARI(t),NMI(t)] = OCL_main(X,Modes);
end

disp('clustering performance on VT data set:');
AccMean=mean(CA);
ARIMean=mean(ARI);
NMIMean=mean(NMI);
ac_std=std(CA);
ari_Std=std(ARI);
CA_all = [ CA_all ; AccMean ];
CAStd = [ CAStd ; ac_std ];
AR = [ AR ; ARIMean];
nmi_Std=std(NMI);
NM = [ NM ; NMIMean ];
ARStd = [ ARStd ; ari_Std ];
NMStd = [ NMStd ; nmi_Std ];
AccMean
ARIMean
NMIMean


