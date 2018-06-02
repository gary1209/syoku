from django.db import models

# Create your models here.
class Company_data(models.Model):
    Company_name = models.CharField(max_length=100,null=False)
    Company_password = models.CharField(max_length=100,null=False)
    Company_email = models.EmailField(max_length=100,null=False,unique=True)
    Company_tele = models.CharField(max_length=10,null=False)
    Company_address = models.CharField(max_length=150,null=False)
    Company_photo = models.CharField(max_length=80,null=False)
    Company_open_time = models.TimeField(max_length=20,null=False)
    Company_close_time = models.TimeField(max_length=20,null=False)

    
    class Meta:
        db_table = "Company_data"