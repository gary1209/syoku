from django.shortcuts import render,redirect
from .models import Member
from django.http import HttpResponse
import datetime

from member import models

# Create your views here.
def index(request):  
    # title = "會員管理"
    # 會員資料傳給 index.html
    # members=Member.objects.all()
    # return render(request,'member/index.html',locals())

    if request.method == 'POST':
        useremail = request.POST['useremail']
        password = request.POST['password']
        member = Member.objects.filter(useremail=useremail)
        memberid=member[0].id

        return redirect("/member/update/%s" %(memberid))

   
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
        
        # 會員資料寫進資料庫
        Member.objects.create(username=username,password=password,userphone=userphone,useremail=useremail,userbirth=userbirth,useraddress=useraddress,usergender=usergender)
        
        return redirect('/memeber/login')

    # title = "會員新增" 
    return render(request,'member/create.html',locals())


def update(request,id):
    if request.method == 'POST':        
        username = request.POST["username"]      
        useremail = request.POST["useremail"]
        userbirth = request.POST["userbirth"]

        # 修改資料庫中的會員資料
        member = Member.objects.get(id=int(id))
        member.username = username
        member.usermail = useremail
        member.userbirth = userbirth
        member.save()

        # return redirect('/member/login')
        response = HttpResponse("<script>alert('修改完成');location.href='/'</script>")
        return response

    # title = "會員修改"
    # 根據會員編號取得會員資料傳給update.html
    member = Member.objects.get(id=int(id))
    return render(request,'member/update.html',locals())



def delete(request,id):
    # 會員編號刪除會員資料
    member = Member.objects.get(id=int(id))
    member.delete()

    return redirect('/member')


def login(request):    
    # title = "會員登入"
    if request.method == 'POST':
        email = request.POST['useremail']
        pwd = request.POST['userpassword']

        member = Member.objects.filter(useremail=email,password=pwd).values('username','useremail')
        if member:
            # print(member[0])
            response = HttpResponse("<script>alert('登入成功');location.href='/' </script>")
            response.set_cookie("uid",member[0]['useremail'])
                
            # if 'rememberme'in request.POST:
            #     expiresdate = datetime.datetime.now() + datetime.timedelta(days=7)
            #     response.set_cookie("name",member[0]['username'],expires = expiresdate)
            # else:
            #     response.set_cookie("name",member[0]['username'])
                
        else:
            # print("not found")
            response = HttpResponse("<script>alert('登入失敗');location.href='/member/login' </script>")
        return response

    return render(request,'member/login.html',locals())


def logout(request):
    response = HttpResponse("<script>alert('登出成功');location.href='/member/login'</script>")
    response.delete_cookie('uid')
    return response


def forgetpwd(request):
    if request.method == 'POST':
        email = request.POST['useremail']
        member = Member.objects.filter(useremail=email)
        memberid=member[0].id

        return redirect("/member/resetpwd/%s" %(memberid))

    return render(request,'member/forgetpwd.html',locals()) 


def resetpwd(request,id):
    if request.method == 'POST':

        password = request.POST["password"]      
        password2 = request.POST["password2"]

        if password == password2:        
            

        # 修改資料庫中的會員資料
            member = Member.objects.get(id=int(id))
            member.password = password
    
            member.save()

            return redirect('/member/login')
        else:
            response = HttpResponse("<script>alert('密碼不同');location.href='./%s' </script>" %(id))
            return response


    member = Member.objects.get(id=int(id))
    return render(request,'member/resetpwd.html',locals())


