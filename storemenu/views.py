from django.shortcuts import render,redirect
from django.core.files.storage import FileSystemStorage
from .models import Storemenu


# Create your views here.
def index(request):
    title = "菜單管理"
    #todo 讀取會員資料傳給index.html
    storemenu = Storemenu.objects.all()
    return render(request,'storemenu/index.html',locals())

def create(request):
    if request.method == 'POST' and request.FILES["cimg"]:
        myfile = request.FILES['cimg']
        fs = FileSystemStorage()
        fs.save(myfile.name,myfile)

        cimg = myfile.name
        # cimg = request.POST["cimg"] #美食圖片
        cname = request.POST["cname"] #美食名稱
        ctype = request.POST["ctype"] #美食類型
        ccal = request.POST["ccal"] #美食熱量
        cprice = request.POST["cprice"] #美食價錢
        cintroduction = request.POST["cintroduction"] #美食介紹

        Storemenu.objects.create(cname=cname,ctype=ctype,cimg=cimg,ccal=ccal,cprice=cprice,cintroduction=cintroduction)
        return redirect ("/storemenu")

    title = "菜單新增" 
    return render(request,'storemenu/create.html',locals())

def update(request,id):
    if request.method == 'POST':        
        cname = request.POST["cname"] #美食名稱
        ctype = request.POST["ctype"] #美食類型
        ccal = request.POST["ccal"] #美食熱量
        cprice = request.POST["cprice"] #美食價錢
        cintroduction = request.POST["cintroduction"] #美食介紹

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
        return redirect('/storemenu')
    title = "菜單修改"
    storemenu = Storemenu.objects.get(id = int(id))
    return render(request,'storemenu/update.html',locals())

def delete(request,id):
    storemenu = Storemenu.objects.get(id = int(id))
    storemenu.delete()
    return redirect('/storemenu')

