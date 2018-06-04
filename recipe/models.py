from django.db import models


# Create your models here.
class Recipe(models.Model):
    recid = models.AutoField(primary_key=True)
    userid = models.CharField(max_length=20)
    recname = models.CharField(max_length=20)
    reccover = models.CharField(max_length=300)
    recdesc = models.CharField(max_length=200)
    rectime = models.IntegerField()
    recportion = models.IntegerField()
    reccal = models.IntegerField()
    recvegan = models.CharField(max_length=20)
    recfood = models.TextField()  # This field type is a guess.
    recstep = models.TextField()  # This field type is a guess. blank=True, null=True
    class Meta:
        # managed = False
        db_table = 'recipe'

