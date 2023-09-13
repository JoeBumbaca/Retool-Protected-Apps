// Tip: assign your external references to variables instead of chaining off the curly brackets.


AVGEndEnergyValue = {{AVGenergyIntens.data['0']['AVG(NULLIF(end_energy_intesity_value,0))']}}


    var evaluation
    
let AplusValueUnder = {{EPClabelRatingIcon.data['0'].Criteria_value}} 
let A_Value  = {{EPClabelRatingIcon.data['1'].Criteria_value}} 
let B_Value  = {{EPClabelRatingIcon.data['2'].Criteria_value}} 
let C_Value  = {{EPClabelRatingIcon.data['3'].Criteria_value}}     
let D_Value  = {{EPClabelRatingIcon.data['4'].Criteria_value}}   
let E_Value  = {{EPClabelRatingIcon.data['5'].Criteria_value}}
let F_Value  = {{EPClabelRatingIcon.data['6'].Criteria_value}}
let G_Value  = {{EPClabelRatingIcon.data['7'].Criteria_value}} 
let H_Value  = {{EPClabelRatingIcon.data['8'].Criteria_value}}    
  
let AplusNAME= {{EPClabelRatingIcon.data['0'].Picture.url}}
let A_NAME = {{EPClabelRatingIcon.data['1'].Picture.url}}
let B_NAME = {{EPClabelRatingIcon.data['2'].Picture.url}}
let C_NAME = {{EPClabelRatingIcon.data['3'].Picture.url}}
let D_NAME = {{EPClabelRatingIcon.data['4'].Picture.url}}   
let E_NAME = {{EPClabelRatingIcon.data['5'].Picture.url}} 
let F_NAME = {{EPClabelRatingIcon.data['6'].Picture.url}}   
let G_NAME = {{EPClabelRatingIcon.data['7'].Picture.url}}     
let H_NAME = {{EPClabelRatingIcon.data['8'].Picture.url}}
  
if (AVGEndEnergyValue < AplusValueUnder ) 
evaluation = AplusNAME
else if (AVGEndEnergyValue >= AplusValueUnder && AVGEndEnergyValue < A_Value)
evaluation = A_NAME
else if (AVGEndEnergyValue >= A_Value && AVGEndEnergyValue < B_Value)  
evaluation = B_NAME 
else if (AVGEndEnergyValue >= B_Value && AVGEndEnergyValue < C_Value)    
evaluation = C_NAME  
else if (AVGEndEnergyValue >= C_Value  && AVGEndEnergyValue < D_Value)    
evaluation = D_NAME
else if (AVGEndEnergyValue >= D_Value && AVGEndEnergyValue < E_Value)    
evaluation = E_NAME         
else if (AVGEndEnergyValue >= E_Value && AVGEndEnergyValue < F_Value)    
evaluation = F_NAME         
else if (AVGEndEnergyValue >= F_Value && AVGEndEnergyValue < G_Value)    
evaluation = G_NAME
else if (AVGEndEnergyValue >= H_Value)    
evaluation = H_NAME        
  
  



return evaluation