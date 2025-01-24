from django.urls import path
from . import views

urlpatterns = [
    path('hello/', views.hello_world, name='hello_world'),
    path('greet/<str:name>/', views.greet_user, name='greet_user'),
    path('test/', views.test_route, name='test_route'),
]
