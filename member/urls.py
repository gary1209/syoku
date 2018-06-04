from django.urls import path
from . import views

app_name='member'

urlpatterns = [
    path('', views.index,name='index'),
    path('create/', views.create,name='create'),
    path('home/', views.home,name='home'),
    path('update/<int:id>', views.update,name='update'),
    path('delete/<int:id>', views.delete,name='delete'),
    path('login/', views.login,name='login'),
    path('logout/', views.logout,name='logout'),

    path('forgetpwd/', views.forgetpwd,name='forgetpwd'),
    path('resetpwd/<int:id>', views.resetpwd,name='resetpwd'),

    
    # path('captcha/',include('captcha.urls'))
]