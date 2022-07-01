from django.urls import path
from . import views

urlpatterns = [
    path('projeto', views.projeto_form, name = 'projeto_insert'),
    path('projeto/<int:id>/', views.projeto_form, name = 'projeto_update'),
    path('projeto/list/', views.projeto_list, name = 'projeto_list'),
    path('atividade', views.atividade_form, name = 'atividade_insert'),
    path('atividade/<int:id>/', views.atividade_form, name = 'atividade_update'),
    path('atividade/list/', views.atividade_list, name = 'atividade_list')
]

