const isProductAvailable = checkbox_availableProduct[i].value;
const isProductIncluded = checkbox_includeProduct[i].value;
const productId = queryVariationsView.data.available[i].id;
const productName = queryVariationsView.data.available[i].name;
const productGroupId = urlparams.id;
const productVariationId = queryVariationsView.data.variationId;
const productAmount = checkbox_includeProduct[i].value ? currency_includedProductAmount[i].value : currency_includedProductAmount2.value;
const productBundleId = queryVariationsView.data.bundleId;

//if we have a product id, then this is an update
if ((productId !== undefined) && (isProductAvailable || isProductIncluded)) {
  console.log('!!!!!!! update product: ', productId);
  return queryUpdateIncludedAvailableInBundle.trigger({
    additionalScope: {
      productAmount,
      isProductIncluded,
      isProductAvailable,
      productGroupId,
      productVariationId,
      productBundleId,
      productId,
      productName
    }
  })
}

//first time creating a product
if (!productId && isProductAvailable || isProductIncluded) {
  console.log('!!!!!!! create new product');
  return queryCreateProduct.trigger({
    additionalScope: {
      productAmount,
      isProductIncluded,
      isProductAvailable,
      productGroupId,
      productVariationId,
      productBundleId,
      productName
    }
  })
}

//we want to remove a product
if (productId && !isProductAvailable && !isProductIncluded) {
  console.log('!!!!!!! delete product: ', productId);
  return queryDeleteProduct.trigger({
    additionalScope: {
      productId
    }
  })
}

queryVariationsView.trigger();
return Promise.reject("Invalid Operation. Please select include or available");