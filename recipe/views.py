from django.shortcuts import render,redirect
from django.core.files.storage import FileSystemStorage
from .models import Recipe
from django.http import HttpResponse
import datetime
import json
import random
import string
from django.db.models import Q

# Create your views here.

def index(request):

    recipes=Recipe.objects.all()
    return render(request,'recipe/index.html',locals())

def search(request): 
    if request.method == 'GET':      
        srhkey =  request.GET.get('search')     
        print(srhkey)   
        try:
            recipes = Recipe.objects.filter(Q(recfood__contains=srhkey) | Q(recname__contains=srhkey)) 
            print("try")
            print(recipes)  
        except: 
            print("except")
            recipes=Recipe.objects.all()
            return render(request,'recipe/index.html',locals())
        else:
            print("else")
            return render(request,'recipe/search.html',locals())

def userrecipe(request):
    
    if 'uid' in request.COOKIES:
        user = request.COOKIES['uid']

        recipes=Recipe.objects.filter(userid=user)
    else:
        return redirect('/member/login') 
    return render(request,'recipe/userrecipe.html',locals())

def showrecipe(request,id):


    #todo 根據會員編號取得會員資料傳給update.html
    recipe=Recipe.objects.get(recid=int(id))
    fodlist = json.loads(recipe.recfood)
    stplist = json.loads(recipe.recstep)


    return render(request,'recipe/showrecipe.html',locals())

def create(request):

    if 'uid' in request.COOKIES:
        user = request.COOKIES['uid']
    
        cooktimelist = [10,20,30,45,60,90]
        portionlist = [1,2,3,4,5,6,7,8,9,10]
        
        if request.method == 'POST' and request.FILES['recCover']:

            userId = user
            recName = request.POST["recName"]

            myfile = request.FILES['recCover']
            fs = FileSystemStorage()
            filename = userId[0:3]
            rd = str(random.randint(0,9999))
            recCoverName="rec_"+filename+"_"+recName+rd+".jpg"
            fs.save(recCoverName,myfile)
                        
            recDesc = request.POST["recDesc"]
            recTime = request.POST["recTime"]
            recPortion = request.POST["recPortion"]
            recCal = request.POST["recCal"]
            recVegan = request.POST["recVegan"]
            recFood = request.POST["recFood"]
            recStep = request.POST["recStep"]
                 
            Recipe.objects.create(userid=userId,recname=recName,reccover=recCoverName,recdesc=recDesc,rectime=recTime,recportion=recPortion,reccal=recCal,recvegan=recVegan,recfood=recFood,recstep=recStep)
         
            return redirect('/recipe/userrecipe')
        
        return render(request,'recipe/create.html',locals())
    
    else:
        return redirect('/member/login')

def update(request,id):

    if 'uid' in request.COOKIES:
        
        user = request.COOKIES['uid']
        # recipes=Recipe.objects.filter(userid=user)
        
        cooktimelist = [10,20,30,45,60,90]
        portionlist = [1,2,3,4,5,6,7,8,9,10]
        veganlist = ["葷食","蛋奶素","素食"]
        #todo 根據會員編號取得會員資料傳給update.html
        recipe=Recipe.objects.get(recid=int(id))
        fodlist = json.loads(recipe.recfood)
        stplist = json.loads(recipe.recstep)
        

        if request.method == 'POST':  
            userId = user      
            recName = request.POST["recName"]  
            
            try:
                request.FILES['recCover']
            except:
                pass
            else:
                myfile = request.FILES['recCover']        
                fs = FileSystemStorage()
                filename = userId[0:3]
                rd = str(random.randint(0,9999))
                recCoverName="rec_"+filename+"_"+recName+rd+".jpg"
                fs.save(recCoverName,myfile)
                recipe.reccover=recCoverName
                

            recDesc = request.POST["recDesc"]
            recTime = request.POST["recTime"]
            recPortion = request.POST["recPortion"]
            recCal = request.POST["recCal"]
            recVegan = request.POST["recVegan"]
            recFood = request.POST["recFood"]
            recStep = request.POST["recStep"]    

            recipe.recname=recName
            
            recipe.recdesc=recDesc
            recipe.rectime=recTime
            recipe.recportion=recPortion
            recipe.reccal=recCal
            recipe.recvegan=recVegan
            recipe.recfood=recFood
            recipe.recstep=recStep

            recipe.save()
            return redirect('/recipe/userrecipe')
            
        return render(request,'recipe/update.html',locals())

    else:
        return redirect('/member/login')
    
    

def delete(request,id):

    if 'uid' in request.COOKIES:
        user = request.COOKIES['uid']
        recipes=Recipe.objects.filter(userid=user)

        recipe=Recipe.objects.get(recid=int(id))
        recipe.delete()
        #todo 刪除完成後轉到http://localhost:8000/member
        return redirect('/recipe/userrecipe')
    
    else:
        return redirect('/member/login')