from django.urls import path
from core import views

urlpatterns = [
    path("", views.home, name="home"),
    path("execute/", views.execute_query, name="execute_query"),
    path("base-de-dados/", views.dados, name="base-dados"),
]
