from django.urls import path
from . import views

app_name = 'jabor'
urlpatterns = [
    path('',views.index,name="index"),
    path('register/',views.register,name="register"),
    path('update/',views.update,name="update"),
    path('delete/<int:id>', views.delete,name='delete'),
    path('login/', views.login,name='login'),
    path('logout/', views.logout,name='logout'),
    path('forget_p/',views.forget_p,name='forget_p')
]