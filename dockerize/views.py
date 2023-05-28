from django.http import HttpResponse


def home(request):
    return HttpResponse(f"Running on {request.META['SERVER_PORT']}")