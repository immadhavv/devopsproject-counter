from django.shortcuts import render


# Create your views here.
# click_counter_app/views.py
from django.shortcuts import render, redirect

def click_counter(request):
    if 'counter' not in request.session:
        request.session['counter'] = 0

    if request.method == 'POST':
        request.session['counter'] += 1

    return render(request, 'click_counter.html', {'counter': request.session['counter']})

