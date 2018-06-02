from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.core.files.storage import FileSystemStorage
from .models import Company_data
from member.models import Member
import datetime


# Create your views here.

def index(request):

    companys = Company_data.objects.all()

    return render(request, 'jabor/index.html', locals())


def update(request, id):
    companys = Company_data.objects.get(id=int(id))

    if request.method == 'POST' and request.FILES["Company_photo"]:
        myFile = request.FILES["Company_photo"]
        fs = FileSystemStorage()
        fs.save(myFile.name, myFile)

        Company_name = request.POST["Company_name"]
        Company_email = request.POST["Company_email"]
        Company_tele = request.POST["Company_tele"]
        Company_address = request.POST["Company_address"]
        Company_open_time = request.POST["Company_open_time"]
        Company_close_time = request.POST["Company_close_time"]
        Company_photo = myFile.name

        Company_data.objects.filter(id=id).update(Company_name=Company_name, Company_email=Company_email, Company_photo=Company_photo, Company_tele=Company_tele,
                                                  Company_address=Company_address, Company_open_time=Company_open_time, Company_close_time=Company_close_time)

        return redirect('/gary')
    return render(request, 'jabor/update.html', locals())


def register(request):
    if request.method == 'POST' and request.FILES["Company_photo"]:
        myFile = request.FILES["Company_photo"]
        fs = FileSystemStorage()
        fs.save(myFile.name, myFile)

        Company_name = request.POST["Company_name"]
        Company_password = request.POST["Company_password"]
        Company_email = request.POST["Company_email"]
        Company_tele = request.POST["Company_tele"]
        Company_address = request.POST["Company_address"]
        Company_open_time = request.POST["Company_open_time"]
        Company_close_time = request.POST["Company_close_time"]
        Company_photo = myFile.name

        # todo 接收到的資料寫進資料庫
        Company_data.objects.create(Company_name=Company_name, Company_password=Company_password, Company_email=Company_email, Company_photo=Company_photo, Company_tele=Company_tele,
                                    Company_address=Company_address, Company_open_time=Company_open_time, Company_close_time=Company_close_time)

        return redirect('/gary')
    return render(request, 'jabor/register.html', locals())


def delete(request, id):

    companys = Company_data.objects.get(id=int(id))
    companys.delete()

    return redirect('/')


def login(request):
    companys_D = Company_data.objects.all()
    # print(companys_D[0].id)
    if request.method == "POST":
        if request.POST:
            Company_email = request.POST["Company_email"]
            Company_password = request.POST["Company_password"]

            company_correct = Company_data.objects.filter(
                Company_email=Company_email, Company_password=Company_password).values('Company_email')
            # print(company_correct[0]['Company_email'])
            if company_correct:
                for companys in companys_D:
                    if companys.Company_email == Company_email:
                        response = HttpResponse("<script>alert('登入成功');</script>")
                        a = 'http://localhost:8000/jabor/update/{}'.format(companys.id)
                        return redirect(a)

                if 'rememberme' in request.POST:
                    # print('123')
                    expiredate = datetime.datetime.now()+datetime.timedelta(days=5)

                    response.set_cookie(
                        "Company_email", company_correct[0]['Company_email'], expires=expiredate)

                else:
                    # print('456')
                    response.set_cookie(
                        "Company_email", company_correct[0]['Company_email'])
            else:
                # print("not found")
                response = HttpResponse(
                    "<script>alert('E-mail 或 密碼輸入錯誤 ');location.href='/jabor/login'</script>")
            return response
        else:
            logins(request)

    return render(request, 'jabor/login.html', locals())

def logout(request):

    response = HttpResponse(
        "<script>alert('登出成功');location.href='/login'</script>")
    response.delete_cookie('Company_email')

    return response

