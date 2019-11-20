#install.packages("fmsb")


library(fmsb)

agemen<-c("30 to 39"=7,"40 to 49"=30,"50 to 59"=45,"60 to 69"=55,"70 to 79"=44,"80 or more"=34)#only the available ages,each position is an interval

listacancer <- list(
  bexiga=c(0,0,1,1,1,1),
  boca=c(0,0,1,0,0,0),
  cerebro=c(0,4,0,1,2,0),
  colorretal=c(0,0,2,5,4,3),
  esofago=c(0,1,0,4,1,0),
  estomago=c(0,2,4,1,4,2),
  figado=c(1,1,4,3,2,3),
  garganta=c(0,0,2,0,0,0),
  laringe=c(0,0,0,5,2,0),
  leucemia=c(2,1,2,0,1,1),
  linfoma=c(1,1,1,1,1,1),
  linfomanhodg=c(1,1,0,0,1,0),
  lingua=c(0,0,2,0,1,0),
  mieloma=c(0,0,2,1,1,1),
  osso=c(0,1,1,1,0,0),
  pancreas=c(0,3,0,4,3,1),
  pele=c(0,2,1,2,0,0),
  prostata=c(0,0,1,8,10,10),
  pulmao=c(0,6,13,11,8,7),
  rim=c(0,2,2,2,1,1),
  tireoide=c(0,1,3,0,1,0),
  viasvesicula=c(1,1,0,2,0,1)
)
#lists down bellow

listaMORMEN=list(Listabexiga=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 Listaboca=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 Listacerebro=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 Listacolorretal=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 Listaesofago=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 Listaestomago=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 Listafigado=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 
                 Listagarganta=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 Listalaringe=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 Listaleucemia=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 Listalinfoma=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 Listalinfomanhodg=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 Listalingua=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 Listamieloma=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 Listaosso=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 Listapancreas=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 
                 Listapele=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 Listaprostata=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 Listapulmao=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 Listarim=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 Listatireoide=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                 
                 Listaviasvesicula=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)))



for(i in 1:length(listacancer)){
  for(j in 1:6){
    a=listacancer[[i]][j]
    c=agemen[j]-a
    b=sum(listacancer[[i]])-a
    expon=sum(listacancer[[i]])+c
    d=215-expon
    
    listaMORMEN[[i]][[j]]= oddsratio(a,b,c,d,conf.level = 0.95,p.calc.by.independence = T)  
  }
}

agewomen<-c("30 to 39"=3,"40 to 49"=9,"50 to 59"=12,"60 to 69"=7,"70 to 79"=6,"80 or more"=2)#only the available ages,each position is an interval

listacancerwomen <- list(cerebro=c(1,1,0,0,0,0),
                         colorretal=c(0,0,2,0,0,0),
                         duodenal=c(0,1,0,0,0,0),
                         endometrial=c(0,0,0,1,1,0),
                         estomago=c(0,0,2,0,0,0),
                         figado=c(0,1,1,0,0,0),
                         laringe=c(0,1,0,0,0,0),
                         leucemia=c(0,1,1,0,0,0),
                         linfoma=c(0,1,0,0,0,0),
                         linfomanhodg=c(0,1,0,0,0,0),
                         mama=c(2,2,2,3,0,0),
                         mieloma=c(0,0,0,0,1,0),
                         ovario=c(0,0,0,1,2,0),
                         pancreas=c(0,0,0,1,2,0),
                         pele=c(0,0,1,0,0,0),
                         pulmao=c(0,0,1,1,0,1),
                         viasvesicula=c(0,0,2,0,0,1))

#lists down bellow


listaMORWOMEN <- list(listacerebro=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                      listacolorretal=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                      listaduodenal=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                      listaendometrial=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                      listaestomago=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                      listafigado=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                      listalaringe=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                      listaleucemia=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                      listalinfoma=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                      listalinfomanhodg=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                      listamama=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                      listamieloma=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                      listaovario=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                      listapancreas=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                      listapele=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                      listapulmao=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                      listaviasvesicula=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)))



#for women
for(i in 1:length(listacancerwomen)){
  for(j in 1:6){
    a=listacancerwomen[[i]][j]
    c=agewomen[j]-a
    b=sum(listacancerwomen[[i]])-a
    expon=sum(listacancerwomen[[i]])+c
    d=39-expon
    
    listaMORWOMEN[[i]][[j]]= oddsratio(a,b,c,d,conf.level = 0.95,p.calc.by.independence = T)  
  }
}

#brazilian men

listacancerbr<- list(
  bexiga=c(297,1300,4247,9880,14111,10701),
  cerebro=c(5401,8361	,11639,12164,8421,2902),
  colorretal=c(3787,8403,16508,24980,26386,14985),
  esofago=c(1895,14407,32021,34544,23419,10204),
  estomago=c(5366,17860,38885,58412,55034,27165),
  figado=c(2515,7398,16177,21985,19224,9179),
  
  laringe=c(920,8102,18763,19642,12558,4873),
  leucemia=c(5693,5992,7403,9516,10392,6374),
  linfoma=c(1165,1037,1121,1061,828,328),
  linfomanhodg=c(3142,4620,6681,8273,7439,3334),
  lingua=c(589,3837,6811,5518,2962,1120),
  mieloma=c(337,1566,4046,5695,4761	,1985),
  osso=c(1107,1767,3090,3493,2931,1416),
  pancreas=c(1440,5585,12760,18578,17531,8645),
  pele=c(1328,2288,3185,3299,2868,1605),
  prostata=c(220,1456,10583,41000,79708,77108),
  pulmao=c(3701,18610,55156,90351,78646,30495),
  rim=c(718,2247,5200,6732,5692,2592),
  tireoide=c(139,397,785,1.095,991,485),
  viasvesicula=c(431,1419,3252,5250,5599,3256)
)
#lists down bellow


agemenbr<-c("30 to 39"=54023	,"40 to 49"=154898,"50 to 59"=329983,"60 to 69"=464865,"70 to 79"=451280,"80 or more"=261030)#only the available ages,each position is an interval

listaMORMENbr=list(Listabexiga=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                   
                   Listacerebro=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                   
                   Listacolorretal=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                   
                   Listaesofago=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                   
                   Listaestomago=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                   
                   Listafigado=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                   
                   Listalaringe=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                   
                   Listaleucemia=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                   
                   Listalinfoma=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                   
                   Listalinfomanhodg=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                   
                   Listalingua=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                   
                   Listamieloma=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                   
                   Listaosso=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                   
                   Listapancreas=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                   
                   
                   Listapele=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                   
                   Listaprostata=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                   
                   Listapulmao=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                   
                   Listarim=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                   
                   Listatireoide=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                   
                   Listaviasvesicula=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)))


library(fmsb)

for(i in 1:length(listacancerbr)){
  for(j in 1:6){
    a=listacancerbr[[i]][j]
    c=agemenbr[j]-a
    b=sum(listacancerbr[[i]])-a
    expon=sum(listacancerbr[[i]])+c
    d=1716079-expon
    
    listaMORMENbr[[i]][[j]]= oddsratio(a,b,c,d,conf.level = 0.95,p.calc.by.independence = T)  
  }
}

#brazilian women

agewomenbr<-c("30 to 39"=80729,"40 to 49"=181710,"50 to 59"=283330,"60 to 69"=343289,"70 to 79"=335692,"80 or more"=238582)#only the available ages,each position is an interval
agewomenbr



listacancerwomenbr <- list(cerebro=c(4196	,6733	,9344	,10384	,8443	,4078),
                           colorretal=c(4235	,9753	,16933	,23825	,28317	,23454),
                           
                           endometrial=c(314	,1083	,3000	,5538,	5218	,2783),
                           estomago=c(4640,	9611	,15688	,24058	,28586	,22213),
                           figado=c(1906,	5438	,10719	,15861	,17195	,11553),
                           laringe=c(193	,896	,1981	,2434	,2125	,1293),
                           leucemia=c(4945	,5530	,6585	,8184	,8901	,6722),
                           linfoma=c(725,	553,	621,	754,	684,	398),
                           linfomanhodg=c(1940	,2858	,4485	,6644	,6897	,4354),
                           mama=c(17639	,44216	,57695	,49706	,37387	,25289),
                           mieloma=c(253	,1313	,3472	,5515	,5084	,2508),
                           ovario=c(2887,	7535	,12126	,13394	,10589	,5484),
                           pancreas=c(982	,3797	,9331	,15712	,18467	,13541),
                           pele=c(1394	,2308	,3014	,3611	,4365	,6404),
                           pulmao=c(3067	,12079	,26428	,36055	,33381	,18696),
                           viasvesicula=c(688	,2813	,7207	,11320	,11943	,7795))

#lists down bellow


listaMORWOMENBR<- list(listacerebro=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                       listacolorretal=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                       listaendometrial=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                       listaestomago=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                       listafigado=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                       listalaringe=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                       listaleucemia=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                       listalinfoma=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                       listalinfomanhodg=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                       listamama=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                       listamieloma=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                       listaovario=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                       listapancreas=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                       listapele=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                       listapulmao=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)),
                       listaviasvesicula=list("30 to 39"=list(NULL),"40 to 49"=list(NULL),"50 to 59"=list(NULL),"60 to 69"=list(NULL),"70 to 79"=list(NULL),"80 or more"=list(NULL)))



#for women
for(i in 1:length(listacancerwomenbr)){
  for(j in 1:6){
    a=listacancerwomenbr[[i]][j]
    c=agewomenbr[j]-a
    b=sum(listacancerwomenbr[[i]])-a
    expon=sum(listacancerwomenbr[[i]])+c
    d=1463332-expon
    
    listaMORWOMENBR[[i]][[j]]= oddsratio(a,b,c,d,conf.level = 0.95,p.calc.by.independence = T)  
  }
}
