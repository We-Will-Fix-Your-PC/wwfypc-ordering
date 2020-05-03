from django.shortcuts import render
from django.views.decorators.clickjacking import xframe_options_exempt


@xframe_options_exempt
def order_widget(request):
    return render(request, "unlocking/order_widget.html", {
        "accepts": request.META.get("HTTP_ACCEPT")
    })
