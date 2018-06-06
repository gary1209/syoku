from django.shortcuts import render,redirect
from django.core.files.storage import FileSystemStorage
from .models import Storemenu
from django.http import HttpResponse
from jabor.models import Company_data
from django.db.models import Q

def index(request):
    title = "菜單管理"
    storemenu = Storemenu.objects.all()
    
    # Company = Company_data.objects.get(Company_email=Company_email)
    return render(request,'storemenu/index.html',locals())

def search(request): 
    if request.method == 'GET':      
        key =  request.GET.get('search')     
        print(key)   
        try:
            storemenu = Storemenu.objects.filter(Q(cname__contains=key) | Q(cintroduction__contains=key)) 
            print("try")
            print(storemenu)  
        except: 
            print("except")
            storemenu=Storemenu.objects.all()
            return render(request,'storemenu/index.html',locals())
        else:
            print("else")
            return render(request,'storemenu/search.html',locals())

def create(request):
    if 'Company_email' in request.COOKIES:
        if request.method == 'POST' and request.FILES["cimg"]:
            myfile = request.FILES['cimg']
            fs = FileSystemStorage()
            fs.save(myfile.name,myfile)

            Company_email =request.COOKIES['Company_email']
            cimg = myfile.name
            # cimg = request.POST["cimg"] #美食圖片
            cname = request.POST["cname"] #美食名稱
            ctype = request.POST["ctype"] #美食類型
            ccal = request.POST["ccal"] #美食熱量
            cprice = request.POST["cprice"] #美食價錢
            cintroduction = request.POST["cintroduction"] #美食介紹

            Storemenu.objects.create(cname=cname,ctype=ctype,cimg=cimg,ccal=ccal,cprice=cprice,cintroduction=cintroduction,Company_email=Company_email)
            return redirect ("/storemenu/userindex")

        title = "菜單新增" 
        return render(request,'storemenu/create.html',locals())
    else:
        return HttpResponse ("<script>alert('請先登入');location.href='/jabor/login'</script>") 


def update(request,id):
    if 'Company_email' in request.COOKIES:
        if request.method == 'POST':        
            cname = request.POST["cname"] #美食名稱
            ctype = request.POST["ctype"] #美食類型
            ccal = request.POST["ccal"] #美食熱量
            cprice = request.POST["cprice"] #美食價錢
            cintroduction = request.POST["cintroduction"] #美食介紹
            # Company_email =request.COOKIES['Company_email']#廠商email

            storemenu = Storemenu.objects.get(id = int(id))
            try:
                request.FILES["cimg"]
            except:
                pass
            else:
                myfile = request.FILES['cimg']
                fs = FileSystemStorage()
                fs.save(myfile.name,myfile)
                # cimg = request.POST["cimg"] #美食圖片
                storemenu.cimg = (myfile.name)      

            storemenu.cname = cname
            storemenu.ctype = ctype
            storemenu.ccal = ccal
            storemenu.cprice = cprice
            storemenu.cintroduction = cintroduction 

            storemenu.save()
            return redirect('/storemenu/userindex')
        Company_email =request.COOKIES['Company_email']
        title = "菜單修改"
        storemenu = Storemenu.objects.filter(Company_email=Company_email,id = int(id)).values('id','cname','ctype','ccal','cprice','cintroduction','cimg')
        storemenu =storemenu[0]
        # storemenu = Storemenu.objects.get(id = int(id))
        # print(storemenu[0])
        return render(request,'storemenu/update.html',locals())
    else:
        return HttpResponse ("<script>alert('請先登入');location.href='/jabor/login'</script>") 
def delete(request,id):
    if 'Company_email' in request.COOKIES:
        Company_email =request.COOKIES['Company_email']
        storemenu = Storemenu.objects.filter(Company_email=Company_email,id = int(id))
        storemenu.delete()
        return redirect('/storemenu/userindex')
    else:
        return HttpResponse ("<script>alert('請先登入');location.href='/jabor/login'</script>") 

def userindex(request):
        # 如果cookie裡面沒有name的存在 就會跳回登入頁面  
    if 'Company_email' in request.COOKIES:
        title = "菜單管理"
        Company_email =request.COOKIES['Company_email']
        storemenu = Storemenu.objects.filter(Company_email=Company_email).values('id','cname','ctype','ccal','cprice','cintroduction','cimg')
        
        Company = Company_data.objects.get(Company_email=Company_email)

        # print(len(userall))
        # userall = Member.objects.all()
        return render(request,'storemenu/userindex.html',locals())
    else:
        return HttpResponse ("<script>alert('請先登入');location.href='/jabor/login'</script>") 
        # return redirect("/member/login")name

def cindex(request,id):
    
    Company = Company_data.objects.get(Company_email = id)
    Company_email = Company.Company_email
    storemenu = Storemenu.objects.filter(Company_email=Company_email)

    print(storemenu)
    # storemenu =storemenu[0]
    # storemenu = Storemenu.objects.get(id = int(id))
    # print(Company.Company_email)
    return render(request,'storemenu/cindex.html',locals())
