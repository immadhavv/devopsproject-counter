# click_counter_app/urls.py
from django.urls import path
from . import views

urlpatterns = [
    path('', views.click_counter, name='click_counter'),
]

