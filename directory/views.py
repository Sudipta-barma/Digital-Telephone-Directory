import json
import bangla

from django.shortcuts import render
from django.core import serializers
from django.http import JsonResponse
from django.db.models import Q 
from .models import Person, Thana
from .forms import PersonForm
from .utils import paginate_result


# Create your views here.
def index(request):
	f = PersonForm()
	return render(request, 'directory/index.html', {'form': f}) 

def alphabetical(request):
	persons_list = Person.objects.all()
	persons = paginate_result(request, persons_list, 10)
	return render(request, 'directory/atoz.html', 
	{
		'persons_list': persons,
		'current_page': bangla.convert_english_digit_to_bangla_digit(persons.number),
		'total_pages': bangla.convert_english_digit_to_bangla_digit(persons.paginator.num_pages)
	})

def letter_search(request, letter):
	persons_list = Person.objects.filter(name__istartswith=letter)
	persons = paginate_result(request, persons_list, 10)
	return render(request, 'directory/atoz.html', {
		'persons_list': persons,
		'current_page': bangla.convert_english_digit_to_bangla_digit(persons.number),
		'total_pages': bangla.convert_english_digit_to_bangla_digit(persons.paginator.num_pages)
	})

def search(request):
	if request.method == 'POST':

		form = request.POST
		name = form['name']
		address = form['address']
		profession = form['profession']
		thana_pk = form['thana']
		persons_list = Person.objects.filter(name__icontains=name)
		if address != '':
			persons_list = persons_list.filter(address__icontains=address)
		if profession != '':
			persons_list = persons_list.filter(profession__icontains=profession)
		if thana_pk != '':
			persons_list = persons_list.filter(thana__id=thana_pk)

		f = PersonForm()
		persons = paginate_result(request, persons_list, 10)
		return render(request, 'directory/search.html', 
		{
			'persons_list': persons,
			'current_page': bangla.convert_english_digit_to_bangla_digit(persons.number),
			'total_pages': bangla.convert_english_digit_to_bangla_digit(persons.paginator.num_pages),
			'form': f
		})
	else:
		return render(request, 'directory/search.html', 
	{
		
		'form': f
	})