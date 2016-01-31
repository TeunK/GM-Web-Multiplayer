//inventory size = 0 - 79 (slots)
//quantities 0 - 149 (ID's)






if instance_exists(obj_Logout) && instance_exists(obj_INVslots)
{
    with (obj_INVslots)
    {
        for(i=0; i<80; i+=1)
        {
            itemID[i]=ds_list_find_value(inv,i);
        }
        for(i=0; i<150; i+=1)
        {
            itemQ[i]=ds_map_find_value(invQ,i);
        }
    
        obj_Logout.saveitem0=string(itemID[0])          //<-- this returns the ID of the item located in slot 0
        obj_Logout.saveqitem0=string(itemQ[0])    //<-- this is SUPPOSED to return the quantity of the item with the ID 0        itemQ[i]=itemQ[i])
            //ds_map_add(invQ,0,obj_Controller.saveqitem0);  itemQ[obj_Logout.saveitem0])itemQ[i])
        
        obj_Logout.saveitem1=string(itemID[1])
        obj_Logout.saveqitem1=string(itemQ[1])
        
        obj_Logout.saveitem2=string(itemID[2])
        obj_Logout.saveqitem2=string(itemQ[2])
        
        obj_Logout.saveitem3=string(itemID[3])
        obj_Logout.saveqitem3=string(itemQ[3])
        
        obj_Logout.saveitem4=string(itemID[4])
        obj_Logout.saveqitem4=string(itemQ[4])
        
        obj_Logout.saveitem5=string(itemID[5])
        obj_Logout.saveqitem5=string(itemQ[5])
        
        obj_Logout.saveitem6=string(itemID[6])
        obj_Logout.saveqitem6=string(itemQ[6])
        
        obj_Logout.saveitem7=string(itemID[7])
        obj_Logout.saveqitem7=string(itemQ[7])
        
        obj_Logout.saveitem8=string(itemID[8])
        obj_Logout.saveqitem8=string(itemQ[8])
        
        obj_Logout.saveitem9=string(itemID[9])
        obj_Logout.saveqitem9=string(itemQ[9])
        
        obj_Logout.saveitem10=string(itemID[10])
        obj_Logout.saveqitem10=string(itemQ[10])
        
        obj_Logout.saveitem11=string(itemID[11])
        obj_Logout.saveqitem11=string(itemQ[11])
        
        obj_Logout.saveitem12=string(itemID[12])
        obj_Logout.saveqitem12=string(itemQ[12])
        
        obj_Logout.saveitem13=string(itemID[13])
        obj_Logout.saveqitem13=string(itemQ[13])
        
        obj_Logout.saveitem14=string(itemID[14])
        obj_Logout.saveqitem14=string(itemQ[14])
        
        obj_Logout.saveitem15=string(itemID[15])
        obj_Logout.saveqitem15=string(itemQ[15])
        
        obj_Logout.saveitem16=string(itemID[16])
        obj_Logout.saveqitem16=string(itemQ[16])
        
        obj_Logout.saveitem17=string(itemID[17])
        obj_Logout.saveqitem17=string(itemQ[17])
        
        obj_Logout.saveitem18=string(itemID[18])
        obj_Logout.saveqitem18=string(itemQ[18])
        
        obj_Logout.saveitem19=string(itemID[19])
        obj_Logout.saveqitem19=string(itemQ[19])
        
        obj_Logout.saveitem20=string(itemID[20])
        obj_Logout.saveqitem20=string(itemQ[20])
        
        obj_Logout.saveitem21=string(itemID[21])
        obj_Logout.saveqitem21=string(itemQ[21])
        
        obj_Logout.saveitem22=string(itemID[22])
        obj_Logout.saveqitem22=string(itemQ[22])
        
        obj_Logout.saveitem23=string(itemID[23])
        obj_Logout.saveqitem23=string(itemQ[23])
        
        obj_Logout.saveitem24=string(itemID[24])
        obj_Logout.saveqitem24=string(itemQ[24])
        
        obj_Logout.saveitem25=string(itemID[25])
        obj_Logout.saveqitem25=string(itemQ[25])
        
        obj_Logout.saveitem26=string(itemID[26])
        obj_Logout.saveqitem26=string(itemQ[26])
        
        obj_Logout.saveitem27=string(itemID[27])
        obj_Logout.saveqitem27=string(itemQ[27])
        
        obj_Logout.saveitem28=string(itemID[28])
        obj_Logout.saveqitem28=string(itemQ[28])
        
        obj_Logout.saveitem29=string(itemID[29])
        obj_Logout.saveqitem29=string(itemQ[29])
        
        obj_Logout.saveitem30=string(itemID[30])
        obj_Logout.saveqitem30=string(itemQ[30])
        
        obj_Logout.saveitem31=string(itemID[31])
        obj_Logout.saveqitem31=string(itemQ[31])
        
        obj_Logout.saveitem32=string(itemID[32])
        obj_Logout.saveqitem32=string(itemQ[32])
        
        obj_Logout.saveitem33=string(itemID[33])
        obj_Logout.saveqitem33=string(itemQ[33])
        
        obj_Logout.saveitem34=string(itemID[34])
        obj_Logout.saveqitem34=string(itemQ[34])
        
        obj_Logout.saveitem35=string(itemID[35])
        obj_Logout.saveqitem35=string(itemQ[35])
        
        obj_Logout.saveitem36=string(itemID[36])
        obj_Logout.saveqitem36=string(itemQ[36])
        
        obj_Logout.saveitem37=string(itemID[37])
        obj_Logout.saveqitem37=string(itemQ[37])
        
        obj_Logout.saveitem38=string(itemID[38])
        obj_Logout.saveqitem38=string(itemQ[38])
        
        obj_Logout.saveitem39=string(itemID[39])
        obj_Logout.saveqitem39=string(itemQ[39])
        
        obj_Logout.saveitem40=string(itemID[40])
        obj_Logout.saveqitem40=string(itemQ[40])
        
        obj_Logout.saveitem41=string(itemID[41])
        obj_Logout.saveqitem41=string(itemQ[41])
        
        obj_Logout.saveitem42=string(itemID[42])
        obj_Logout.saveqitem42=string(itemQ[42])
        
        obj_Logout.saveitem43=string(itemID[43])
        obj_Logout.saveqitem43=string(itemQ[43])
        
        obj_Logout.saveitem44=string(itemID[44])
        obj_Logout.saveqitem44=string(itemQ[44])
        
        obj_Logout.saveitem45=string(itemID[45])
        obj_Logout.saveqitem45=string(itemQ[45])
        
        obj_Logout.saveitem46=string(itemID[46])
        obj_Logout.saveqitem46=string(itemQ[46])
        
        obj_Logout.saveitem47=string(itemID[47])
        obj_Logout.saveqitem47=string(itemQ[47])
        
        obj_Logout.saveitem48=string(itemID[48])
        obj_Logout.saveqitem48=string(itemQ[48])
        
        obj_Logout.saveitem49=string(itemID[49])
        obj_Logout.saveqitem49=string(itemQ[49])
        
        obj_Logout.saveitem50=string(itemID[50])
        obj_Logout.saveqitem50=string(itemQ[50])
        
        obj_Logout.saveitem51=string(itemID[51])
        obj_Logout.saveqitem51=string(itemQ[51])
        
        obj_Logout.saveitem52=string(itemID[52])
        obj_Logout.saveqitem52=string(itemQ[52])
        
        obj_Logout.saveitem53=string(itemID[53])
        obj_Logout.saveqitem53=string(itemQ[53])
        
        obj_Logout.saveitem54=string(itemID[54])
        obj_Logout.saveqitem54=string(itemQ[54])
        
        obj_Logout.saveitem55=string(itemID[55])
        obj_Logout.saveqitem55=string(itemQ[55])
        
        obj_Logout.saveitem56=string(itemID[56])
        obj_Logout.saveqitem56=string(itemQ[56])
        
        obj_Logout.saveitem57=string(itemID[57])
        obj_Logout.saveqitem57=string(itemQ[57])
        
        obj_Logout.saveitem58=string(itemID[58])
        obj_Logout.saveqitem58=string(itemQ[58])
        
        obj_Logout.saveitem59=string(itemID[59])
        obj_Logout.saveqitem59=string(itemQ[59])
        
        obj_Logout.saveitem60=string(itemID[60])
        obj_Logout.saveqitem60=string(itemQ[60])
        
        obj_Logout.saveitem61=string(itemID[61])
        obj_Logout.saveqitem61=string(itemQ[61])
        
        obj_Logout.saveitem62=string(itemID[62])
        obj_Logout.saveqitem62=string(itemQ[62])
        
        obj_Logout.saveitem63=string(itemID[63])
        obj_Logout.saveqitem63=string(itemQ[63])
        
        obj_Logout.saveitem64=string(itemID[64])
        obj_Logout.saveqitem64=string(itemQ[64])
        
        obj_Logout.saveitem65=string(itemID[65])
        obj_Logout.saveqitem65=string(itemQ[65])
        
        obj_Logout.saveitem66=string(itemID[66])
        obj_Logout.saveqitem66=string(itemQ[66])
        
        obj_Logout.saveitem67=string(itemID[67])
        obj_Logout.saveqitem67=string(itemQ[67])
        
        obj_Logout.saveitem68=string(itemID[68])
        obj_Logout.saveqitem68=string(itemQ[68])
        
        obj_Logout.saveitem69=string(itemID[69])
        obj_Logout.saveqitem69=string(itemQ[69])
        
        obj_Logout.saveitem70=string(itemID[70])
        obj_Logout.saveqitem70=string(itemQ[70])
        
        obj_Logout.saveitem71=string(itemID[71])
        obj_Logout.saveqitem71=string(itemQ[71])
        
        obj_Logout.saveitem72=string(itemID[72])
        obj_Logout.saveqitem72=string(itemQ[72])
        
        obj_Logout.saveitem73=string(itemID[73])
        obj_Logout.saveqitem73=string(itemQ[73])
        
        obj_Logout.saveitem74=string(itemID[74])
        obj_Logout.saveqitem74=string(itemQ[74])
        
        obj_Logout.saveitem75=string(itemID[75])
        obj_Logout.saveqitem75=string(itemQ[75])
        
        obj_Logout.saveitem76=string(itemID[76])
        obj_Logout.saveqitem76=string(itemQ[76])
        
        obj_Logout.saveitem77=string(itemID[77])
        obj_Logout.saveqitem77=string(itemQ[77])
        
        obj_Logout.saveitem78=string(itemID[78])
        obj_Logout.saveqitem78=string(itemQ[78])
        
        obj_Logout.saveitem79=string(itemID[79])
        obj_Logout.saveqitem79=string(itemQ[79])
        
        //Item Quantities for items above an ID of 80
        obj_Logout.saveqitem80=string(itemQ[80])
        obj_Logout.saveqitem81=string(itemQ[81])
        obj_Logout.saveqitem82=string(itemQ[82])
        obj_Logout.saveqitem83=string(itemQ[83])
        obj_Logout.saveqitem84=string(itemQ[84])
        obj_Logout.saveqitem85=string(itemQ[85])
        obj_Logout.saveqitem86=string(itemQ[86])
        obj_Logout.saveqitem87=string(itemQ[87])
        obj_Logout.saveqitem88=string(itemQ[88])
        obj_Logout.saveqitem89=string(itemQ[89])
        obj_Logout.saveqitem90=string(itemQ[90])
        obj_Logout.saveqitem91=string(itemQ[91])
        obj_Logout.saveqitem92=string(itemQ[92])
        obj_Logout.saveqitem93=string(itemQ[93])
        obj_Logout.saveqitem94=string(itemQ[94])
        obj_Logout.saveqitem95=string(itemQ[95])
        obj_Logout.saveqitem96=string(itemQ[96])
        obj_Logout.saveqitem97=string(itemQ[97])
        obj_Logout.saveqitem98=string(itemQ[98])
        obj_Logout.saveqitem99=string(itemQ[99])
        obj_Logout.saveqitem100=string(itemQ[100])
        obj_Logout.saveqitem101=string(itemQ[101])
        obj_Logout.saveqitem102=string(itemQ[102])
        obj_Logout.saveqitem103=string(itemQ[103])
        obj_Logout.saveqitem104=string(itemQ[104])
        obj_Logout.saveqitem105=string(itemQ[105])
        obj_Logout.saveqitem106=string(itemQ[106])
        obj_Logout.saveqitem107=string(itemQ[107])
        obj_Logout.saveqitem108=string(itemQ[108])
        obj_Logout.saveqitem109=string(itemQ[109])
        obj_Logout.saveqitem110=string(itemQ[110])
        obj_Logout.saveqitem111=string(itemQ[111])
        obj_Logout.saveqitem112=string(itemQ[112])
        obj_Logout.saveqitem113=string(itemQ[113])
        obj_Logout.saveqitem114=string(itemQ[114])
        obj_Logout.saveqitem115=string(itemQ[115])
        obj_Logout.saveqitem116=string(itemQ[116])
        obj_Logout.saveqitem117=string(itemQ[117])
        obj_Logout.saveqitem118=string(itemQ[118])
        obj_Logout.saveqitem119=string(itemQ[119])
        obj_Logout.saveqitem120=string(itemQ[120])
        obj_Logout.saveqitem121=string(itemQ[121])
        obj_Logout.saveqitem122=string(itemQ[122])
        obj_Logout.saveqitem123=string(itemQ[123])
        obj_Logout.saveqitem124=string(itemQ[124])
        obj_Logout.saveqitem125=string(itemQ[125])
        obj_Logout.saveqitem126=string(itemQ[126])
        obj_Logout.saveqitem127=string(itemQ[127])
        obj_Logout.saveqitem128=string(itemQ[128])
        obj_Logout.saveqitem129=string(itemQ[129])
        obj_Logout.saveqitem130=string(itemQ[130])
        obj_Logout.saveqitem131=string(itemQ[131])
        obj_Logout.saveqitem132=string(itemQ[132])
        obj_Logout.saveqitem133=string(itemQ[133])
        obj_Logout.saveqitem134=string(itemQ[134])
        obj_Logout.saveqitem135=string(itemQ[135])
        obj_Logout.saveqitem136=string(itemQ[136])
        obj_Logout.saveqitem137=string(itemQ[137])
        obj_Logout.saveqitem138=string(itemQ[138])
        obj_Logout.saveqitem139=string(itemQ[139])
        obj_Logout.saveqitem140=string(itemQ[140])
        obj_Logout.saveqitem141=string(itemQ[141])
        obj_Logout.saveqitem142=string(itemQ[142])
        obj_Logout.saveqitem143=string(itemQ[143])
        obj_Logout.saveqitem144=string(itemQ[144])
        obj_Logout.saveqitem145=string(itemQ[145])
        obj_Logout.saveqitem146=string(itemQ[146])
        obj_Logout.saveqitem147=string(itemQ[147])
        obj_Logout.saveqitem148=string(itemQ[148])
        obj_Logout.saveqitem149=string(itemQ[149])
        
    
    }

}
