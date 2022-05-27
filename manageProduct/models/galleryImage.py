from django.db import models

from .defineProduct import DefineProduct


class GalleryImage(models.Model):

    product = models.ForeignKey(DefineProduct,
                                on_delete=models.CASCADE)
    image = models.ImageField(upload_to='product_images')
    height = models.PositiveIntegerField(null=True,
                                         blank=True)
    width = models.PositiveIntegerField(null=True,
                                        blank=True)
    size = models.PositiveIntegerField(null=True,
                                       blank=True)
    format = models.CharField(max_length=30,
                              null=True,
                              blank=True)
