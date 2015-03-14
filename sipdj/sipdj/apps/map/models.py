# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#     * Rearrange models' order
#     * Make sure each model has one field with primary_key=True
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [appname]'
# into your database.
from __future__ import unicode_literals

from django.contrib.gis.db import models


class BackLines(models.Model):
    gid = models.IntegerField(primary_key=True)
    id = models.IntegerField(null=True, blank=True)
    obj = models.CharField(max_length=6, blank=True)
    the_geom = models.LineStringField(null=True, blank=True)
    objects = models.GeoManager()
    class Meta:
        db_table = 'back_lines'


class Creste(models.Model):
    id = models.IntegerField(primary_key=True)
    gid = models.IntegerField(null=True, blank=True)
    cat = models.IntegerField(null=True, blank=True)
    elevation = models.FloatField(null=True, db_column='ELEVATION', blank=True) # Field name made lowercase.
    layer = models.CharField(max_length=80, db_column='LAYER', blank=True) # Field name made lowercase.
    id_0 = models.FloatField(null=True, db_column='ID', blank=True) # Field name made lowercase. Field renamed because of name conflict.
    n3 = models.CharField(max_length=80, db_column='N3', blank=True) # Field name made lowercase.
    the_geom = models.PolygonField(null=True, blank=True)
    objects = models.GeoManager()
    class Meta:
        db_table = 'creste'


class Modelli(models.Model):
    gid = models.IntegerField(primary_key=True)
    id = models.IntegerField(null=True, blank=True)
    filename = models.CharField(max_length=80, blank=True)
    name = models.CharField(max_length=80, blank=True)
    state = models.CharField(max_length=80, blank=True)
    desc = models.CharField(max_length=500, blank=True)
    mat = models.CharField(max_length=80, blank=True)
    from_field = models.CharField(max_length=80, db_column='from', blank=True) # Field renamed because it was a Python reserved word.
    the_geom = models.PointField(null=True, blank=True)
    objects = models.GeoManager()
    class Meta:
        managed = True
        db_table = 'models'


class Pano(models.Model):
    gid = models.IntegerField(primary_key=True)
    id = models.IntegerField(null=True, blank=True)
    the_geom = models.PointField(null=True, blank=True)
    title = models.TextField(blank=True)
    zoomin = models.IntegerField(null=True, db_column='zoomIn', blank=True) # Field name made lowercase.
    desc = models.TextField(blank=True)
    objects = models.GeoManager()
    class Meta:
        managed = True
        db_table = 'pano'


class Us(models.Model):
    gid = models.IntegerField(primary_key=True)
    cat = models.IntegerField(null=True, blank=True)
    layer = models.CharField(max_length=80, blank=True)
    n1 = models.FloatField(null=True, db_column='N1', blank=True) # Field name made lowercase.
    n13 = models.FloatField(null=True, blank=True)
    n2 = models.CharField(max_length=80, db_column='N2', blank=True) # Field name made lowercase.
    the_geom = models.PolygonField(null=True, blank=True)
    objects = models.GeoManager()
    class Meta:
        managed = True
        db_table = 'us'
