from django.conf.urls import patterns, include, url
from django.contrib.gis import admin
from django.views.generic import TemplateView
#from django.contrib import admin

admin.autodiscover()

urlpatterns = patterns('',
                       url(r'^admin/', include(admin.site.urls)),
                       url(r'^index/', TemplateView.as_view(template_name="index.html")),
                       url(r'^story/', TemplateView.as_view(template_name="story.html")),
                       url(r'^dig/', TemplateView.as_view(template_name="dig.html")),
                       url(r'^map/', include('sipdj.apps.map.urls')),
                       url(r'^webtour/', TemplateView.as_view(template_name="webtour.html")),
                       url(r'^download/', TemplateView.as_view(template_name="download.html")),
)
