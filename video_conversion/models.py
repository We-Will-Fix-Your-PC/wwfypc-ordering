from django.db import models


class OriginalFormat(models.Model):
    name = models.CharField(max_length=255)
    image = models.FileField(blank=True, null=True)
    singular_name = models.CharField(max_length=255)

    def __str__(self):
        return self.name


class OriginalFormatTier(models.Model):
    original_format = models.ForeignKey(OriginalFormat, on_delete=models.CASCADE)
    amount = models.PositiveSmallIntegerField(blank=True, null=True)
    price_per_item = models.DecimalField(max_digits=9, decimal_places=2)

    def __str__(self):
        return f"{self.original_format.name}: {self.amount}"


class OriginalFormatExtra(models.Model):
    original_format = models.ForeignKey(OriginalFormat, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    image = models.FileField(blank=True, null=True)
    price = models.DecimalField(max_digits=9, decimal_places=2)

    def __str__(self):
        return f"{self.original_format.name}: {self.name}"
