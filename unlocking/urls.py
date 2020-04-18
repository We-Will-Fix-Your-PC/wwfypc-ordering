from django.urls import path
from . import views

app_name = "unlocking"
urlpatterns = [
    path("order_widget/", views.order_widget, name="order_widget")
]
