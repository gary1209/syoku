
from __future__ import unicode_literals

from django.db import models

from storemenu.models import Storemenu
from recipe.models import Recipe


class Comment(models.Model):
    text = models.TextField(max_length=1000)
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name = 'comment'
        verbose_name_plural = 'comments'

class Plan(models.Model):
    useremail = models.EmailField(max_length=100,blank=False)
    title = models.CharField(max_length=50,null=True)
    mon1 = models.CharField(max_length=50,null=True)
    mon2 = models.CharField(max_length=50,null=True)
    mon3 = models.CharField(max_length=50,null=True)
    tue1 = models.CharField(max_length=50,null=True)
    tue2 = models.CharField(max_length=50,null=True)
    tue3 = models.CharField(max_length=50,null=True)
    wed1 = models.CharField(max_length=50,null=True)
    wed2 = models.CharField(max_length=50,null=True)
    wed3 = models.CharField(max_length=50,null=True)
    thu1 = models.CharField(max_length=50,null=True)
    thu2 = models.CharField(max_length=50,null=True)
    thu3 = models.CharField(max_length=50,null=True)
    fri1 = models.CharField(max_length=50,null=True)
    fri2 = models.CharField(max_length=50,null=True)
    fri3 = models.CharField(max_length=50,null=True)
    sat1 = models.CharField(max_length=50,null=True)
    sat2 = models.CharField(max_length=50,null=True)
    sat3 = models.CharField(max_length=50,null=True)
    sun1 = models.CharField(max_length=50,null=True)
    sun2 = models.CharField(max_length=50,null=True)
    sun3 = models.CharField(max_length=50,null=True)
    class Meta:
        db_table = "plan"