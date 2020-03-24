from django.contrib import admin
from . import models


class NetworkAlternativeNameInline(admin.TabularInline):
    model = models.NetworkAlternativeName


@admin.register(models.Network)
class NetworkAdmin(admin.ModelAdmin):
    inlines = [NetworkAlternativeNameInline]


admin.site.register(models.Brand)
admin.site.register(models.Model)
admin.site.register(models.PhoneUnlock)
