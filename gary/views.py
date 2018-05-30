from django.shortcuts import render

# Create your views here.

def index(request):
	# return HttpResponse("<h2>Home about</h2>")
	return render(request,'gary/index.html')
