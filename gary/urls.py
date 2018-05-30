from django.urls import path
from . import views

app_name = 'gary'
urlpatterns = [
    path('',views.index,name = 'index'),
]