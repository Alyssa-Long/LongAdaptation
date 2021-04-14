% Process Data to show SLA figure

DataLocation='Y:\Alyssa\Test\Alyssa\New Session'; %Make sure that the output of the c3d2mat function is in your current folder 
cd(DataLocation)

files=what('./');
filesList=files.mat;
LocSubjectParam=find(endsWith(filesList,{'params.mat'})==1);
Subject=filesList(LocSubjectParam(1));

load(Subject{1})

params={'stepLengthAsym'}; %you can plot which ever parameter you are interested on check into the adaptData.data for labels
conditions={'Baseline'};
binwidth=5; %Window of the running average
trialMarkerFlag=0; %1 if you want to separete the time course by trial 0 to separece by condition 
indivFlag=0; %0 we are plotting one subject
indivSubs=0; %0 we are plotting one subject
colorOrder=[]; %Let the function take care of this at least you wanted in a specific set of color then by my guess and add the list here
biofeedback= 0; % At least that you are providing with biofeedback to the subject
removeBiasFlag=1; %if you want to remove bias 
labels=[]; 
filterFlag=[];
plotHandles=[];
alignEnd=0; %0 we are plotting one subject
alignIni=0; %0 we are plotting one subject
adaptationData.plotAvgTimeCourse(adaptData,params,conditions,binwidth,trialMarkerFlag,indivFlag,indivSubs,colorOrder,biofeedback,removeBiasFlag,labels,filterFlag,plotHandles,alignEnd,alignIni);



