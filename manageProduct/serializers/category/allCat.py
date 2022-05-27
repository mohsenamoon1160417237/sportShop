from rest_framework import serializers

from manageProduct.models.productCategory import ProductCategory


class AllProdCatSz(serializers.ModelSerializer):

    class Meta:

        model = ProductCategory
        fields = ['id',
                  'title',
                  'description']

