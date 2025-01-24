from django.http import HttpResponse

def hello_world(request):
    return HttpResponse("Hello, World!")

def greet_user(request, name):
    return HttpResponse(f"Hello, {name}!")

def test_route(request):
    return HttpResponse("This is a test route!")
