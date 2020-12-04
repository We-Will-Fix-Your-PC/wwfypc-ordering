from django.urls import path
from . import views

app_name = "video_conversion"
urlpatterns = [
    path("price_widget/", views.price_widget, name="price_widget")
]
