#!/usr/bin/perl
use POSIX;
use Data::Dumper;

my ($version_cq,$bucket,$LSMOAM,$LSM, $IP, $user, $pass, $eNBName,$cascade,$mmbsoamip,$mmbssbip,$alphapci,$betapci,$gammapci,$alpharsi,$betarsi,$gammarsi,$tac,$cabinet,$alphaid,$betaid,$gammaid,$alphatilt,$betatilt,$gammatilt,$earfcn,$startear,$enbid,$ltm,$zero_cq,$pkg);
my ($secondcar,$divciq,$convert_long,$convert_lat,$tddsecondcar,$tdd3rdcar,$thirdcar);
my($now);
print "starting \n";

#open (HTMLFILE, ">C:\\3G_4G_TOOL_Scripts\\2.5\\Audit_2.5\\REPORT\\$cascade\_$eNBName\_AUDIT_$now\.html");
open  (HTMLFILE, ">C:\\Users\\Bhargava\\Desktop\\GUI\\$cascade\_$eNBName\_AUDIT_$now\.html");
print (HTMLFILE "<table width=100% cellspacing=0 cellpadding=5 border=0>\n");
print (HTMLFILE "<tr><td align=center><font size=+3>$cascade $eNBName AUDIT REPORT $now </font></td></tr>\n");
print (HTMLFILE "</table>\n");

print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
# print (HTMLFILE "<tr><td colspan=11 bgcolor=#EEEEEE><b>$cascade</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CASCADE ID</th><th align=center>eNB ID</th><th align=center>eNB NAME</th><th align=center>LSM</th><th align=center>SW</th><th align=center>BUCKET</th><th align=center>DIVERSITY</th><th align=center>ANTENNA</th><th align=center>ADID</th><th align=center>GP VER</th><th align=center>CIQ VER</th></tr>\n");

##############RTRV-MME-CONF

#if ($mme_assignment eq "San_Jose_Tacoma"){
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-MME-CONF</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>MME_INDEX</th><th align=center>MME_IPV4</th></tr>\n");

# foreach $_(@mme_ips){

# @_ = split (/,/,$_);

# if ($_[0] eq 0){

# if (($_[1] eq "10.156.11.12") || ($_[1] eq "10.156.3.12") || ($_[1] eq "10.156.11.172") || ($_[1] eq "10.156.3.172") || ($_[1] eq "10.156.11.188") || ($_[1] eq "10.156.3.188")){	     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");      
#                              }
# else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");      
#      }     

#                }


# if ($_[0] eq 1){

# if (($_[1] eq "10.156.11.12") || ($_[1] eq "10.156.3.12") || ($_[1] eq "10.156.11.172") || ($_[1] eq "10.156.3.172") || ($_[1] eq "10.156.11.188") || ($_[1] eq "10.156.3.188")){	     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");      
#                              }
# else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");      
#      }     

#                }

# if ($_[0] eq 2){

# if (($_[1] eq "10.156.11.12") || ($_[1] eq "10.156.3.12") || ($_[1] eq "10.156.11.172") || ($_[1] eq "10.156.3.172") || ($_[1] eq "10.156.11.188") || ($_[1] eq "10.156.3.188")){	     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");      
#                              }
# else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");      
#      }     

#                }

# if ($_[0] eq 3){

# if (($_[1] eq "10.156.11.12") || ($_[1] eq "10.156.3.12") || ($_[1] eq "10.156.11.172") || ($_[1] eq "10.156.3.172") || ($_[1] eq "10.156.11.188") || ($_[1] eq "10.156.3.188")){	     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");      
#                              }
# else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");      
#      }     

#                }

# if ($_[0] eq 4){

# if (($_[1] eq "10.156.11.12") || ($_[1] eq "10.156.3.12") || ($_[1] eq "10.156.11.172") || ($_[1] eq "10.156.3.172") || ($_[1] eq "10.156.11.188") || ($_[1] eq "10.156.3.188")){	     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");      
#                              }
# else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");      
#      }     

#                }                                             

# if ($_[0] eq 5){

# if (($_[1] eq "10.156.11.12") || ($_[1] eq "10.156.3.12") || ($_[1] eq "10.156.11.172") || ($_[1] eq "10.156.3.172") || ($_[1] eq "10.156.11.188") || ($_[1] eq "10.156.3.188")){	     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");      
#                              }
# else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");      
#      }     

#                } 


# print (HTMLFILE "</td>\n");
# print (HTMLFILE "</tr>\n");


          
#                            }  


# print (HTMLFILE "</table>\n");
# } 

# if ($mme_assignment eq "Bayamon"){
# print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
# print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-MME-CONF</b></td></tr>\n");
# print (HTMLFILE "<tr><th align=center>MME_INDEX</th><th align=center>MME_IPV4</th></tr>\n");

# foreach $_(@mme_ips){

# @_ = split (/,/,$_);

# if ($_[0] eq 0){

# if (($_[1] eq "10.156.75.12") || ($_[1] eq "10.156.43.12")){	     
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");      
#                              }
# else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");      
#      }     

#                }


# if ($_[0] eq 1){

# if (($_[1] eq "10.156.75.12") || ($_[1] eq "10.156.43.12")){	     
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");      
#                              }
# else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");      
#      }     

#                }


#  print (HTMLFILE "</td>\n");
#  print (HTMLFILE "</tr>\n");


          
#                            }  

# print (HTMLFILE "</table>\n");
# } 
###################################

############### SYS CONF

print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>SYS-CONF</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>SYS_ID</th><th align=center>STATUS</th><th align=center>ADMINISTRATIVE_STATE</th><th align=center>TYPE</th><th align=center>SYS_TYPE</th></tr>\n");  
  
# foreach $_(@sys_conf){

# @_ = split (/,/,$_);


#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n");
    
#     if ($_[4] eq $cabinet){
#         print (HTMLFILE "<td align=center>$_[4]</td>\n");   
#     }
#     if ($_[4] ne $cabinet){
#         print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n");   
#     }

        
    
# print (HTMLFILE "</td>\n");
# print (HTMLFILE "</tr>\n");
#                     } 
                    
                    
print (HTMLFILE "</table>\n"); 

########################

#################vlan-conf



print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-VLAN-CONF</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>DB_INDEX</th><th align=center>VR_ID</th><th align=center>IF_NAME</th><th align=center>VLAN_ID</th><th align=center>ADMINISTRATIVE_STATE</th><th align=center>DESCRIPTION</th></tr>\n");  
  
# foreach $_(@vlan_conf){

# @_ = split (/,/,$_);


# if ($_[0] eq 0){

# if ($_[3] eq "34"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n");     
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");    
    
        
#                              }
# else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");     
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n");     
    
    
          
#      }  
     
     
#      }   
# if ($_[0] eq 1){

# if ($_[3] eq "42"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n");     
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");    
    
        
#                              }
# else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");     
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n");     
    
    
          
#      }    
#                } 
                              
               
# print (HTMLFILE "</td>\n");
# print (HTMLFILE "</tr>\n");
#}
                    
                    
print (HTMLFILE "</table>\n");     

##################  RTRV-IP-ADDR             
                      
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-IP-ADDR</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>DB_INDEX</th><th align=center>IF_NAME</th><th align=center>IP_ADDR</th><th align=center>IP_PFX_LEN</th><th align=center>OAM</th><th align=center>LTE_SIGNAL_S1</th><th align=center>LTE_SIGNAL_X2</th><th align=center>LTE_BEARER_S1</th><th align=center>LTE_BEARER_X2</th></tr>\n");  
  
# foreach $_(@ip_addr){

# @_ = split (/,/,$_);


# if ($_[0] eq 0){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n");     
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[6]</td>\n");
#     print (HTMLFILE "<td align=center>$_[7]</td>\n");     
#     print (HTMLFILE "<td align=center>$_[8]</td>\n");         
    
     
#      }   
# if ($_[0] eq 1){

# if (($_[4] eq "True") && ($_[5] eq "False") && ($_[6] eq "False") && ($_[7] eq "False") && ($_[8] eq "False") && ($_[2] eq $mmbsoamip)){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n");     
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[6]</td>\n");
#     print (HTMLFILE "<td align=center>$_[7]</td>\n");     
#     print (HTMLFILE "<td align=center>$_[8]</td>\n");     
    
        
#                              }
# else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");     
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n");     
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n");     
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");     
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[8]</td>\n");           
#      }    
#                } 
                              
# if ($_[0] eq 2){

# if (($_[4] eq "False") && ($_[5] eq "True") && ($_[6] eq "True") && ($_[7] eq "True") && ($_[8] eq "True") && ($_[2] eq $mmbssbip)){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n");     
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[6]</td>\n");
#     print (HTMLFILE "<td align=center>$_[7]</td>\n");     
#     print (HTMLFILE "<td align=center>$_[8]</td>\n");     
    
        
#                              }
# else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");     
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n");     
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n");     
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");     
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[8]</td>\n");     
    
    
          
#      }    
#                }                
# print (HTMLFILE "</td>\n");
# print (HTMLFILE "</tr>\n");




#                     } 
                    
                    
print (HTMLFILE "</table>\n");    

#################################RTRV-IP-ROUTE
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-IP-ROUTE</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>VR_ID</th><th align=center>DB_INDEX</th><th align=center>IP_PREFIX</th><th align=center>IP_PFX_LEN</th><th align=center>IP_GW</th><th align=center>DISTANCE</th></tr>\n");  
  
# foreach $_(@ip_route){

# @_ = split (/,/,$_);



    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n");     
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");           
    
# print (HTMLFILE "</td>\n");
# print (HTMLFILE "</tr>\n");




#                     } 
                    
                    
# print (HTMLFILE "</table>\n");     


# print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
# print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-IP-ROUTE</b></td></tr>\n");
# print (HTMLFILE "<tr><th align=center>VR_ID</th><th align=center>DB_INDEX</th><th align=center>IP_PREFIX</th><th align=center>IP_PFX_LEN</th><th align=center>IP_GW</th><th align=center>DISTANCE</th></tr>\n");  
  
# foreach $_(@ip_route){

# @_ = split (/,/,$_);



    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n");     
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");           
    
# print (HTMLFILE "</td>\n");
# print (HTMLFILE "</tr>\n");




#                     } 
                    
                    
print (HTMLFILE "</table>\n"); 

##################################RTRV-NTP-CONF 
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-NTP-CONF</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>SVR_TYPE</th><th align=center>NTP_IPV4</th></tr>\n");  
  
# foreach $_(@ntp){

# @_ = split (/,/,$_);


# if ($_[0] eq "PRIMARY_NTP_SERVER"){ 
# if ($_[1] eq "112.255.255.252"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
          
    
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");              
              
#          } 
         
#        }      

# if ($_[0] eq "SECONDARY_NTP_SERVER"){ 
# if ($_[1] eq "112.255.255.253"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
          
    
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");              
              
#          } 
         
#        }      
    
#     print (HTMLFILE "</td>\n");
#     print (HTMLFILE "</tr>\n");




#                     } 
                    
                    
print (HTMLFILE "</table>\n");      

####################################################      

###################CELL-INFO
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 bgcolor=#EEEEEE><b>CELL-INFO</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>CELL_SIZE</th><th align=center>HNB_NAME</th><th align=center>ADD_SPECTRUM_EMISSION</th><th align=center>TRACKING_AREA_CODE</th><th align=center>IMS_EMERGENCY_SUPPORT</th></tr>\n");                  


# foreach $_(@cellinfogp){

# @_ = split (/,/,$_);


# if ($_[0] <= "11") {


# print (HTMLFILE "<td align=center>$_[0]</td>\n");   
# print (HTMLFILE "<td align=center>$_[1]</td>\n");

# if ($_[2] eq "SAMSUNG_LTE"){
# print (HTMLFILE "<td align=center>$_[2]</td>\n");   
    
# }       
# if ($_[2] ne "SAMSUNG_LTE"){
# print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");   
# $cellinfogp = "true";   
# }
# if ($_[3] eq "1"){
# print (HTMLFILE "<td align=center>$_[3]</td>\n");   
    
# }       
# if ($_[3] ne "1"){
# print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");   
# $cellinfogp = "true";   
# }
# if ($_[4] eq "H'$tac") {
# print (HTMLFILE "<td align=center>$_[4]</td>\n");
# }
# if ($_[4] ne "H'$tac") {
# print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n");
# $cellinfogp = "true";   
# }
# if ($_[5] eq "False"){
# print (HTMLFILE "<td align=center>$_[5]</td>\n");   
    
# }       
# if ($_[5] ne "False"){
# print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n");   
# $cellinfogp = "true";   
# }
#     print (HTMLFILE "</td>\n");
#     print (HTMLFILE "</tr>\n");          
# }

# }

print (HTMLFILE "</table>\n");  
 ##################################################  

 ######################## cell acs
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=13 align=center bgcolor=#EEEEEE><b>RTRV-CELL-ACS</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>CELL_BARRED</th><th align=center>INTRA_FREQ_CELL_RESELECT</th><th align=center>BARRING_CTR_USAGE</th><th align=center>HANDOVER_BARRING_STATUS</th></tr>\n");  

# foreach $_(@cell_bar){

# @_ = split (/,/,$_);

#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     if ($_[1] eq "notBarred"){
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");
#     }
#     if ($_[1] ne "notBarred"){
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");
#     }
#     if ($_[2] eq "NotAllowed"){
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");   
#     }
#     if ($_[2] ne "NotAllowed"){
#     print (HTMLFILE "<td bgcolor=#FF0000 td align=center>$_[2]</td>\n");    
#     }
#     if ($_[3] eq "cpuStatusCtrl"){
#     print (HTMLFILE "<td align=center>$_[3]</td>\n");   
#     }
#     if ($_[3] ne "cpuStatusCtrl"){
#     print (HTMLFILE "<td bgcolor=#FF0000 td align=center>$_[3]</td>\n");    
#     }
#     if ($_[4] eq "barringOff"){
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");   
#     }
#     if ($_[4] ne "barringOff"){
#     print (HTMLFILE "<td bgcolor=#FF0000 td align=center>$_[4]</td>\n");    
#     }
      
#     print (HTMLFILE "</td>\n");
#     print (HTMLFILE "</tr>\n");  
#     }                   
                       
                       
print (HTMLFILE "</table>\n");

######################## cell acs

###################################cellplmn-info




##############################cellplmn-info

##############################enbplmn-info


##############################enbplmn-info

#############################gps-invt


print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-GPS-INVT</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>UNIT_ID</th><th align=center>VERSION</th><th align=center>FW_VERSION</th><th align=center>SERIAL</th><th align=center>VENDOR</th></tr>\n");  
  
# foreach $_(@gps){

# @_ = split (/,/,$_);
# print (HTMLFILE "<td align=center>$_[0]</td>\n");   
      
# if ($_[4] eq "SAMSUNG"){
#      if ($_[1] eq "1.0.0.2"){
#            print (HTMLFILE "<td align=center>$_[1]</td>\n");                   
#                }     
#      if ($_[1] ne "1.0.0.2"){
#            print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                   
#                }
#      if ($_[2] eq "1.0.0.5"){
#            print (HTMLFILE "<td align=center>$_[2]</td>\n");                   
#                }     
#      if ($_[2] ne "1.0.0.5"){
#            print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");                   
#                }                 
                          
#           }
          
# if ($_[4] eq "Trimble-D"){
#      if ($_[1] eq "1.0.0.0"){
#            print (HTMLFILE "<td align=center>$_[1]</td>\n");                   
#                }     
#      if ($_[1] ne "1.0.0.0"){
#            print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                   
#                }
#      if ($_[2] eq "1.0.0.1"){
#            print (HTMLFILE "<td align=center>$_[2]</td>\n");                   
#                }     
#      if ($_[2] ne "1.0.0.1"){
#            print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");                   
#                }                 
                          
#           }          
          
# print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
# print (HTMLFILE "<td align=center>$_[4]</td>\n"); 

         
#     print (HTMLFILE "</td>\n");
#     print (HTMLFILE "</tr>\n");




#                     } 
                    
                    
print (HTMLFILE "</table>\n");    
#################################
###############################RRH-INVT

print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-RRH-INVT</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CONN_BD_ID</th><th align=center>CONN_PORT_ID</th><th align=center>UNIT_ID</th><th align=center>FAMILY_TYPE</th><th align=center>FW_VERSION</th><th align=center>SERIAL</th></tr>\n");  
  
# foreach $_(@rrh_invt){

# @_ = split (/,/,$_);

# if ($pkg =~ m/^3/) {
# if ($_[1] eq 6){ 
# if ($_[4] eq "1.0.6.1"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#          } 
         
#        }      

# if ($_[1] eq 8){ 
# if ($_[4] eq "1.0.6.1"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#          } 
         
#        } 
       
# if ($_[1] eq 10){ 
# if ($_[4] eq "1.0.6.1"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#          } 
         
#        }             
#                     }
# if ($pkg =~ m/^4/) {
# if ($_[1] eq 6){ 
# if ($_[4] eq "1.1.0.5"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#          } 
         
#        }      

# if ($_[1] eq 8){ 
# if ($_[4] eq "1.1.0.5"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#          } 
         
#        } 
       
# if ($_[1] eq 10){ 
# if ($_[4] eq "1.1.0.5"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#          } 
         
#        }         
#                    }
# if ($pkg =~ m/^5/) {
# if ($_[1] eq 6){ 
# if ($_[4] eq "1.2.0.1"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#          } 
         
#        }      

# if ($_[1] eq 8){ 
# if ($_[4] eq "1.2.0.1"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#          } 
         
#        } 
       
# if ($_[1] eq 10){ 
# if ($_[4] eq "1.2.0.1"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#          } 
         
#        }         
#                    }  
#     print (HTMLFILE "</td>\n");
#     print (HTMLFILE "</tr>\n");




#                     } 
                    
                    
print (HTMLFILE "</table>\n");    

##############################################################################                              

##########################################RRH-CONF:0,6

print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-RRH-CONF:0,6</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CONNECT_BOARD_ID</th><th align=center>CONNECT_PORT_ID</th><th align=center>POWER_BOOST</th><th align=center>NUM_OF_ALD</th><th align=center>DIGITAL_INPUT_LOW_ALARM_TH</th><th align=center>START_EARFCN1</th><th align=center>ANTENNA_PROFILE_ID</th><th align=center>CELL_NUM</th></tr>\n");  

# my ($boolEAR);

# $boolEAR = "false";
  
# @_ = split (/~/,$port6);
# if ($pkg eq "3.5.2"){
# if ($divciq eq "8T8R"){
# if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n"); 
#     if ($_[6] eq $alphaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           }
#     if ($_[6] ne $alphaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }     
                                                                 
#     if (($secondcar ne "true") && ($_[7] eq "0,-,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }        
#     if (($secondcar eq "true") && ($_[7] eq "0,3,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }
   
#     if (($secondcar ne "true") && ($_[7] ne "0,-,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           } 
#     if (($secondcar eq "true") && ($_[7] ne "0,3,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           }
                                                                                                 
#     $boolEAR = "true"; 
            
#     }
# }
# if ($divciq eq "4T4R"){
# if (($_[2] eq "3dB,3dB,3dB,3dB,3dB,3dB") && ($_[3] eq "0") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n"); 
#     if ($_[6] eq $alphaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           }
#     if ($_[6] ne $alphaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                                         
#     if (($secondcar4T ne "true") && ($_[7] eq "0,-,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }        
#     if (($secondcar4T eq "true") && ($_[7] eq "0,9,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }
   
#     if (($secondcar4T ne "true") && ($_[7] ne "0,-,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           } 
#     if (($secondcar4T eq "true") && ($_[7] ne "0,9,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           }                                                                                        
#     $boolEAR = "true"; 
            
#     }
# }      
# # if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     # print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     # print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     # if ($_[6] eq $alphaid){
#        # print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           # }
#     # $boolEAR = "true";    
#     # }    
    
    
#     if ($boolEAR eq "false") {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");
#          } 
# }                   


# if (($pkg eq "4.0.2")||($pkg eq "5.0.2")){
# if ($divciq eq "8T8R"){
# if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36,36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n"); 
#     if ($_[6] eq $alphaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           }
#     if ($_[6] ne $alphaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                                            
                                                                                        
#     $boolEAR = "true"; 
            
#     }
#     print (HTMLFILE "<td align=center>$_[7]</td>\n");
# }
# if ($divciq eq "4T4R"){
# if (($_[2] eq "3dB,3dB,3dB,3dB,3dB,3dB") && ($_[3] eq "0") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n"); 
#     if ($_[6] eq $alphaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           }
#     if ($_[6] ne $alphaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                                         


                                                                                        
#     $boolEAR = "true"; 
            
#     }
#     print (HTMLFILE "<td align=center>$_[7]</td>\n");
# }      
# # if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     # print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     # print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     # if ($_[6] eq $alphaid){
#        # print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           # }
#     # $boolEAR = "true";    
#     # }    
    
    
#     if ($boolEAR eq "false") {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");
#          } 
# }                               
print (HTMLFILE "</table>\n");   

#########################################RRH-CONF:0,8
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-RRH-CONF:0,8</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CONNECT_BOARD_ID</th><th align=center>CONNECT_PORT_ID</th><th align=center>POWER_BOOST</th><th align=center>NUM_OF_ALD</th><th align=center>DIGITAL_INPUT_LOW_ALARM_TH</th><th align=center>START_EARFCN1</th><th align=center>ANTENNA_PROFILE_ID</th><th align=center>CELL_NUM</th></tr>\n");  
  
# @_ = split (/~/,$port8);

# if ($pkg eq "3.5.2"){
# if ($divciq eq "8T8R"){
# if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     if ($_[6] eq $betaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           } 
#     if ($_[6] ne $betaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                                
#     if (($secondcar ne "true") && ($_[7] eq "1,-,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }        
#     if (($secondcar eq "true") && ($_[7] eq "1,4,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }
   
#     if (($secondcar ne "true") && ($_[7] ne "1,-,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           } 
#     if (($secondcar eq "true") && ($_[7] ne "1,4,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           }
#     $boolEAR = "true";        
#     }
#  }

# if ($divciq eq "4T4R"){
# if (($_[2] eq "3dB,3dB,3dB,3dB,3dB,3dB") && ($_[3] eq "0") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     if ($_[6] eq $betaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           } 
#     if ($_[6] ne $betaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                                

#     if (($secondcar4T ne "true") && ($_[7] eq "1,-,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }        
#     if (($secondcar4T eq "true") && ($_[7] eq "1,10,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }
   
#     if (($secondcar4T ne "true") && ($_[7] ne "1,-,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           } 
#     if (($secondcar4T eq "true") && ($_[7] ne "1,10,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           }

#     $boolEAR = "true";        
#     }
#  }     
# # if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     # print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     # print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[4]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[5]</td>\n");  
#     # if ($_[6] eq $betaid){
#        # print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           # }      
#     # $boolEAR = "true";    
#     # }    
    
#     if ($boolEAR eq "false") {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");
#          } 
# }                    
# if (($pkg eq "4.0.2")||($pkg eq "5.0.2")){
# if ($divciq eq "8T8R"){
# if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36,36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     if ($_[6] eq $betaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           } 
#     if ($_[6] ne $betaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                                
#     $boolEAR = "true";        
#     }
#     print (HTMLFILE "<td align=center>$_[7]</td>\n");
#  }

# if ($divciq eq "4T4R"){
# if (($_[2] eq "3dB,3dB,3dB,3dB,3dB,3dB") && ($_[3] eq "0") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     if ($_[6] eq $betaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           } 
#     if ($_[6] ne $betaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                                
#     $boolEAR = "true";        
#     }
#     print (HTMLFILE "<td align=center>$_[7]</td>\n");
#  }     
# # if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     # print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     # print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[4]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[5]</td>\n");  
#     # if ($_[6] eq $betaid){
#        # print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           # }      
#     # $boolEAR = "true";    
#     # }    
    
#     if ($boolEAR eq "false") {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");
#          } 
# }                      
print (HTMLFILE "</table>\n");   


 #################RRH-CONF:0,10
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-RRH-CONF:0,10</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CONNECT_BOARD_ID</th><th align=center>CONNECT_PORT_ID</th><th align=center>POWER_BOOST</th><th align=center>NUM_OF_ALD</th><th align=center>DIGITAL_INPUT_LOW_ALARM_TH</th><th align=center>START_EARFCN1</th><th align=center>ANTENNA_PROFILE_ID</th><th align=center>CELL_NUM</th></tr>\n");  
  
# @_ = split (/~/,$port10);
# if ($pkg eq "3.5.2"){
# if ($divciq eq "8T8R"){
# if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     if ($_[6] eq $gammaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           } 
#     if ($_[6] ne $gammaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                               
#     if (($secondcar ne "true") && ($_[7] eq "2,-,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }        
#     if (($secondcar eq "true") && ($_[7] eq "2,5,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }
   
#     if (($secondcar ne "true") && ($_[7] ne "2,-,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           } 
#     if (($secondcar eq "true") && ($_[7] ne "2,5,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           }
#     $boolEAR = "true";          
#     }
#  }
# if ($divciq eq "4T4R"){
# if (($_[2] eq "3dB,3dB,3dB,3dB,3dB,3dB") && ($_[3] eq "0") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     if ($_[6] eq $gammaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           } 
#     if ($_[6] ne $gammaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                               
#     if (($secondcar4T ne "true") && ($_[7] eq "2,-,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }        
#     if (($secondcar4T eq "true") && ($_[7] eq "2,11,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }
   
#     if (($secondcar4T ne "true") && ($_[7] ne "2,-,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           } 
#     if (($secondcar4T eq "true") && ($_[7] ne "2,11,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           }
#     $boolEAR = "true";          
#     }
#  }
# # if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     # print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     # print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[4]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     # if ($_[6] eq $gammaid){
#        # print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           # }    
#     # $boolEAR = "true";        
#     # }       
    
#     if ($boolEAR eq "false") {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");
#          } 
# }                    
# if (($pkg eq "4.0.2")||($pkg eq "5.0.2")){
# if ($divciq eq "8T8R"){
# if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36,36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     if ($_[6] eq $gammaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           } 
#     if ($_[6] ne $gammaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                               
#     $boolEAR = "true";          
#     }
#     print (HTMLFILE "<td align=center>$_[7]</td>\n");
#  }
# if ($divciq eq "4T4R"){
# if (($_[2] eq "3dB,3dB,3dB,3dB,3dB,3dB") && ($_[3] eq "0") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     if ($_[6] eq $gammaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           } 
#     if ($_[6] ne $gammaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                               
#     $boolEAR = "true";          
#     }
#     print (HTMLFILE "<td align=center>$_[7]</td>\n");
#  }
# # if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     # print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     # print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[4]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     # if ($_[6] eq $gammaid){
#        # print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           # }    
#     # $boolEAR = "true";        
#     # }       
    
#     if ($boolEAR eq "false") {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");
#          } 
# }                     
print (HTMLFILE "</table>\n");                       
                                      




                         

print "ending \n";