from django.urls import path
from . import views

app_name = 'gary'
urlpatterns = [
    path('',views.index,name = 'index'),
    path('login/', views.login,name='login'),
    path('comments',views.comments,name = 'comments'),
]