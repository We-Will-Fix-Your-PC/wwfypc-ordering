from django.shortcuts import render


def order_widget(request):
    return render(request, "unlocking/order_widget.html", {
        "accepts": request.META.get("HTTP_ACCEPT")
    })
