from django.contrib import admin
from . import models


class OriginalFormatTierInline(admin.TabularInline):
    model = models.OriginalFormatTier


class OriginalFormatExtraInline(admin.TabularInline):
    model = models.OriginalFormatExtra


@admin.register(models.OriginalFormat)
class OriginalFormatAdmin(admin.ModelAdmin):
    inlines = [OriginalFormatTierInline, OriginalFormatExtraInline]
