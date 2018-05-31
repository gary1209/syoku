from django.shortcuts import render,redirect
from .models import Member
from django.http import HttpResponse
import datetime

# from captcha.fields import CaptchaField

# Create your views here.
def index(request):  
    
    title = "會員管理"

    #todo 讀取會員資料傳給index.html
    members=Member.objects.all()
    
    return render(request,'member/index.html',locals())


def home(request):  
    return render(request,'member/home.html',locals())

def create(request):
    if request.method == 'POST':
        username = request.POST["username"]
        password = request.POST["password"]
        userphone = request.POST["userphone"]
        useremail = request.POST["useremail"]
        userbirth = request.POST["userbirth"]
        useraddress = request.POST["useraddress"]
        usergender = request.POST["usergender"]
        
        #todo 接收到的會員資料寫進資料庫
        Member.objects.create(username=username,password=password,userphone=userphone,useremail=useremail,userbirth=userbirth,useraddress=useraddress,usergender=usergender)
        
        
        #todo 新增完成後轉到http://localhost:8000/member
        # return redirect('/member')
        return redirect('/member/home')

    title = "會員新增" 
    return render(request,'member/create.html',locals())



def update(request,id):
    if request.method == 'POST':        
        username = request.POST["username"]      
        useremail = request.POST["useremail"]
        userbirth = request.POST["userbirth"]

        #todo 修改資料庫中的會員資料
        member = Member.objects.get(id=int(id))
        member.username = username
        member.usermail = useremail
        member.userbirth = userbirth
        member.save()

        #todo 修改完成後轉到http://localhost:8000/member
        return redirect('/member')

    title = "會員修改"
    #todo 根據會員編號取得會員資料傳給update.html
    member = Member.objects.get(id=int(id))
    return render(request,'member/update.html',locals())

def delete(request,id):
    #todo 根據會員編號刪除會員資料
    member = Member.objects.get(id=int(id))
    member.delete()

    #todo 刪除完成後轉到http://localhost:8000/member
    return redirect('/member')

def login(request):    
    title = "會員登入"
    if request.method == 'POST':
        email = request.POST['useremail']
        pwd = request.POST['userpassword']
        member = Member.objects.filter(useremail=email,password=pwd).values('username')
        if member:
            # print(member[0])
            response = HttpResponse("<script>alert('登入成功');location.href='/member/home' </script>")
            if 'rememberme'in request.POST:
                expiresdate = datetime.datetime.now() + datetime.timedelta(days=7)
                response.set_cookie("name",member[0]['username'],expires = expiresdate)
            else:
                response.set_cookie("name",member[0]['username'])
                
        else:
            # print("not found")
            response = HttpResponse("<script>alert('登入失敗');location.href='/member/login' </script>")
        return response
    

    return render(request,'member/login.html',locals())


def logout(request):
    response = HttpResponse("<script>alert('登入成功');location.href='/member/login'</script>")
    response.delete_cookie('name')
    return response
