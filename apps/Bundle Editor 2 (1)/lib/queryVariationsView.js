const allProducts = getProductsInOneConfig.data;
const variations = getVariations.data;
const bundleIndex = stateBundleIndex.value;
const variationIndex = stateVariationIndex.value;

if (!allProducts || !variations || bundleIndex === null || variationIndex === null) return {};

const variation = variations[variationIndex];
const bundle = variation.bundles[bundleIndex];

const overlay = (kind) => 
  p => {
    const prod = bundle.products.find(bp => bp.name === p);
    if(prod){
      console.log('prod: ', prod);
    }
    return {
      id: prod?.id,
      name: p,
      amount: prod?.amount,
      isIncluded: prod?.isIncluded,
      children: prod?.children
    }
};

return {
  variationName: variation.name,
  variationId: variation.id,
  bundleName: bundle.name,
  bundleId: bundle.id,
  included: allProducts.map(overlay('included')),
  available: allProducts.map(overlay('available')),
};