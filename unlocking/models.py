from django.db import models


class Network(models.Model):
    name = models.CharField(max_length=255)

    def __str__(self):
        return self.name


class NetworkName(models.Model):
    network = models.ForeignKey(Network, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    display_name = models.CharField(max_length=255)
    image = models.ImageField()

    def __str__(self):
        return self.display_name


class Brand(models.Model):
    name = models.CharField(max_length=255)
    display_name = models.CharField(max_length=255)
    image = models.ImageField()

    def __str__(self):
        return self.display_name


class Model(models.Model):
    brand = models.ForeignKey(Brand, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    display_name = models.CharField(max_length=255)
    image = models.ImageField()

    def __str__(self):
        return self.display_name


class RepairType(models.Model):
    name = models.CharField(max_length=255)
    display_name = models.CharField(max_length=255)

    def __str__(self):
        return self.display_name


class PhoneUnlock(models.Model):
    brand = models.ForeignKey(Brand, on_delete=models.CASCADE)
    network = models.ForeignKey(Network, on_delete=models.CASCADE)
    device = models.ForeignKey(Model, blank=True, null=True, on_delete=models.CASCADE)
    price = models.DecimalField(decimal_places=2, max_digits=10)
    time = models.CharField(max_length=255)

    @property
    def device_name(self):
        return self.device if self.device else ""

    def __str__(self):
        return f"{self.brand} {self.device_name} on {self.network}"
