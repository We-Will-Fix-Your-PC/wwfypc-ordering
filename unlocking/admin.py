from django.contrib import admin
from . import models


class NetworkNameInline(admin.StackedInline):
    model = models.NetworkName


@admin.register(models.Network)
class NetworkAdmin(admin.ModelAdmin):
    inlines = [NetworkNameInline]


admin.site.register(models.Brand)
admin.site.register(models.Model)
admin.site.register(models.PhoneUnlock)
