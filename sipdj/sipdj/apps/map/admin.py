from django.contrib.gis import admin
from sipdj.apps.map.models import Creste, Modelli, Pano, Us

admin.site.register(Pano, admin.GeoModelAdmin)
admin.site.register(Creste, admin.GeoModelAdmin)
admin.site.register(Modelli, admin.GeoModelAdmin)
admin.site.register(Us, admin.GeoModelAdmin)
