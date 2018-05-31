from django.db import models

# Create your models here.
class Storemenu(models.Model):
    cname = models.CharField(max_length=50,null=False)
    ctype = models.CharField(max_length=10,null=False)
    ccal = models.FloatField(blank=True)
    cprice = models.FloatField(null=False)
    cintroduction = models.CharField(max_length=500,null=False)
    cimg = models.CharField(max_length=100,null=False)
    class Meta:
        db_table = "storemenu"