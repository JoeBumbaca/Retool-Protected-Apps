// Tip: assign your external references to variables instead of chaining off the curly brackets.

let ExpirationNr = {{ExpirationFilerRate.data.length}}

let TotalEPCrecord = {{EPCdatabaseConnect.data.length}}

let expirationrate = ExpirationNr / TotalEPCrecord * 100
  
return expirationrate