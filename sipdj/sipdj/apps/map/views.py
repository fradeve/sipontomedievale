from django.shortcuts import render_to_response
from django.core import serializers
from django.http import HttpResponse, HttpResponseBadRequest, HttpResponseForbidden
from sipdj.apps.map.models import Pano

def out_word(request):
    word = 'dolphin'
    return render_to_response('map.html', {'nice_word': word})

def get_panos(request):
    if request.is_ajax():
        if request.method == ('GET'):
            objs = Pano.objects.all()
            json = serializers.serialize('json', objs)
            return HttpResponse(json)
        else:
                return HttpResponseBadRequest('Bad request')
    else:
        return HttpResponseForbidden()
