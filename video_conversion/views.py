from django.shortcuts import render
from django.views.decorators.clickjacking import xframe_options_exempt


@xframe_options_exempt
def price_widget(request):
    return render(request, "video_conversion/price_widget.html")
