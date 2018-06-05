from django.urls import path
from . import views
app_name='recipe'
urlpatterns = [
    path('', views.index,name='index'),
    path('userrecipe/', views.userrecipe,name='userrecipe'),
    path('showrecipe/<int:id>', views.showrecipe,name='showrecipe'),
    path('create/', views.create,name='create'),
    path('update/<int:id>', views.update,name='update'),
    path('delete/<int:id>', views.delete,name='delete'),
    path('search/', views.search,name='search'),
]