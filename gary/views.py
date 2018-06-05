import requests

from django.shortcuts import render, redirect
from django.conf import settings
from django.contrib import messages
from django.http import HttpResponse
from .models import Comment,Plan
from .forms import CommentForm
from storemenu.models import Storemenu
from recipe.models import Recipe

# Create your views here.


def index(request):
    if request.method =='POST':
        if 'uid' in request.COOKIES:
            useremail = request.COOKIES["uid"]
            mon1 = request.POST["1-1"]
            mon2 = request.POST["1-2"]
            mon3 = request.POST["1-3"]
            tue1 = request.POST["2-1"]
            tue2 = request.POST["2-2"]
            tue3 = request.POST["2-3"]
            wed1 = request.POST["3-1"]
            wed2 = request.POST["3-2"]
            wed3 = request.POST["3-3"]
            thu1 = request.POST["4-1"]
            thu2 = request.POST["4-2"]
            thu3 = request.POST["4-3"]
            fri1 = request.POST["5-1"]
            fri2 = request.POST["5-2"]
            fri3 = request.POST["5-3"]
            sat1 = request.POST["6-1"]
            sat2 = request.POST["6-2"]
            sat3 = request.POST["6-3"]
            sun1 = request.POST["7-1"]
            sun2 = request.POST["7-2"]
            sun3 = request.POST["7-3"]
            title = request.POST["title"]
            
            # 新增資料進DB
            Plan.objects.create(
            useremail=useremail,
            title=title,
            mon1=mon1,mon2=mon2,mon3=mon3,
            tue1=tue1,tue2=tue2,tue3=tue3,
            wed1=wed1,wed2=wed2,wed3=wed3,
            thu1=thu1,thu2=thu2,thu3=thu3,
            fri1=fri1,fri2=fri2,fri3=fri3,
            sat1=sat1,sat2=sat2,sat3=sat3,
            sun1=sun1,sun2=sun2,sun3=sun3)
            response = HttpResponse("<script>alert('儲存成功');location.href='/'</script>")
            return response
        
        else:
            response = HttpResponse("<script>alert('請先登入');location.href='/member/login'</script>")
            return response

    storemenu = Storemenu.objects.all()
    recipes   = Recipe.objects.all()
    return render(request, 'gary/index.html', locals())


def comments(request):
    comments_list = Comment.objects.order_by('-created_at')

    if request.method == 'POST':
        form = CommentForm(request.POST)
        if form.is_valid():

            ''' Begin reCAPTCHA validation '''
            recaptcha_response = request.POST.get('g-recaptcha-response')
            data = {
                'secret': settings.GOOGLE_RECAPTCHA_SECRET_KEY,
                'response': recaptcha_response
            }
            r = requests.post(
                'https://www.google.com/recaptcha/api/siteverify', data=data)
            result = r.json()
            ''' End reCAPTCHA validation '''

            if result['success']:
                form.save()
                messages.success(request, 'New comment added with success!')
            else:
                messages.error(request, 'Invalid reCAPTCHA. Please try again.')

            return redirect('gary/comments')
    else:
        form = CommentForm()

    return render(request, 'gary/comments.html', {'comments': comments_list, 'form': form})


def login(request):
    return render(request, 'gary/login.html')
