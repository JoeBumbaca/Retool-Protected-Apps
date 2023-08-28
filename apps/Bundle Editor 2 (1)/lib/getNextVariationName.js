//need better logic for this
//problem: need to enforce 'v1, v2, .. vn' naming for getVariations.data

const variations = getVariations.data;

if(variations.length === 0){
  return 'v1';
}
const currentVariation = variations[variations.length - 1];
const currentVariationName = currentVariation.name;
const currentVariationNumber = +currentVariationName.substring(1);
const nextNumber = currentVariationNumber+1;
return 'v' + nextNumber;

// const variations = getVariations.data;
// const nextNumber = variations.length + 1;
// return 'v' + nextNumber;