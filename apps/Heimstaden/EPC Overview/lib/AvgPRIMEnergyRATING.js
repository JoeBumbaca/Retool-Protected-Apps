// Tip: assign your external references to variables instead of chaining off the curly brackets.

let EndEnergyValue = {{AVGenergyIntens.data['0']['AVG(end_energy_intesity_value)']}}

    var evaluation
    
let AplusValueUnder = {{SettingsEnergyRatings.data['8'].Criteria_value}} 
let A_Value  = {{SettingsEnergyRatings.data['0'].Criteria_value}} 
let B_Value  = {{SettingsEnergyRatings.data['1'].Criteria_value}} 
let C_Value  = {{SettingsEnergyRatings.data['2'].Criteria_value}}     
let D_Value  = {{SettingsEnergyRatings.data['3'].Criteria_value}}   
let E_Value  = {{SettingsEnergyRatings.data['4'].Criteria_value}}
let F_Value  = {{SettingsEnergyRatings.data['5'].Criteria_value}}
let G_Value  = {{SettingsEnergyRatings.data['6'].Criteria_value}} 
let H_Value  = {{SettingsEnergyRatings.data['7'].Criteria_value}}    
  
let AplusNAME= {{SettingsEnergyRatings.data['8'].Category}}
let A_NAME = {{SettingsEnergyRatings.data['0'].Category}}  
let B_NAME = {{SettingsEnergyRatings.data['1'].Category}} 
let C_NAME = {{SettingsEnergyRatings.data['2'].Category}} 
let D_NAME = {{SettingsEnergyRatings.data['3'].Category}}   
let E_NAME = {{SettingsEnergyRatings.data['4'].Category}} 
let F_NAME = {{SettingsEnergyRatings.data['5'].Category}}   
let G_NAME = {{SettingsEnergyRatings.data['6'].Category}}     
let H_NAME = {{SettingsEnergyRatings.data['7'].Category}}    
  
if (EndEnergyValue < AplusValueUnder ) 
evaluation = AplusNAME
else if (EndEnergyValue >= AplusValueUnder && EndEnergyValue < A_Value)
evaluation = A_NAME
else if (EndEnergyValue >= A_Value && EndEnergyValue < B_Value)  
evaluation = B_NAME 
else if (EndEnergyValue >= B_Value && EndEnergyValue < C_Value)    
evaluation = C_NAME  
else if (EndEnergyValue >= C_Value  && EndEnergyValue < D_Value)    
evaluation = D_NAME
else if (EndEnergyValue >= D_Value && EndEnergyValue < E_Value)    
evaluation = E_NAME         
else if (EndEnergyValue >= E_Value && EndEnergyValue < F_Value)    
evaluation = F_NAME         
else if (EndEnergyValue >= F_Value && EndEnergyValue < G_Value)    
evaluation = G_NAME
else if (EndEnergyValue >= H_Value)    
evaluation = H_NAME         
         
//EndEnergyRating.value = evaluation }}        
         
         
return evaluation