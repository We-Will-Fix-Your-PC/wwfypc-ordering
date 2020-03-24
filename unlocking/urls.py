from django.urls import path
from . import views

app_name = "unlocking"
urlpatterns = [
    path("form/<form_type>/<form_id>/", views.get_networks, name="networks")
]
