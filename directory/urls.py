from django.conf.urls import url 
from . import views 

app_name = 'directory'

urlpatterns = [
	url(r'^$', views.index, name='index'),
	url(r'^atoz/$', views.alphabetical, name="alphabetical"),
	url(r'^letter/(?P<letter>[a-z])/$', views.letter_search, name="letter_search"),
	url(r'^search/$', views.search, name="search"),
]