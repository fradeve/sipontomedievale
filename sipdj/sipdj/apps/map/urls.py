from django.conf.urls import url, patterns
from sipdj.apps.map import views


urlpatterns = patterns('',
    url(r'^$', views.out_word, name='map'),
    url(r'get_panos/$', views.get_panos, name='get_panos')
)