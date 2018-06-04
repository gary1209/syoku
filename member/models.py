from django.db import models

# from captcha.fields import CaptchaField

# Create your models here.
class Member(models.Model):
    username = models.CharField(max_length=20,null=False)
    password = models.CharField(max_length=10,null=False)
    useremail = models.EmailField(max_length=100,blank=False)
    usergender = models.CharField(max_length=30)
    userbirth = models.DateField(null=False)
    useraddress = models.CharField(max_length=100)
    userphone = models.CharField(max_length=30,null=False)

    # captcha = CaptchaField()

    class Meta:
        db_table = "members"