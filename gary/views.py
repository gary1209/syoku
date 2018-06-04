import requests

from django.shortcuts import render, redirect
from django.conf import settings
from django.contrib import messages

from .models import Comment
from .forms import CommentForm
from storemenu.models import Storemenu
from recipe.models import Recipe

# Create your views here.


def index(request):
        # return HttpResponse("<h2>Home about</h2>")
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
