from django import forms
from django.core.exceptions import ValidationError
from .models import Person

class PersonForm(forms.ModelForm):
    class Meta:
        model = Person
        exclude = ['created_on']
        labels = {
            'name': 'নাম*',
            'profession': 'পেশা',
            'address': 'ঠিকানা',
            'thana': 'থানা'
        }
        widgets = {
            'name': forms.TextInput(attrs={
                'id': 'name',                 
                'placeholder': 'নামের সাহায্যে খুঁজুন...',
                'class': 'form-control'
            }),
            'profession': forms.TextInput(attrs={
                'id': 'profession',                 
                'placeholder': 'পেশা নির্দিষ্ট করুন...',
                'class': 'form-control'
            }),
            'address': forms.TextInput(attrs={
                'id': 'address',                 
                'placeholder': 'ঠিকানার সাহায্যে খুঁজুন...',
                'class': 'form-control'
            }),
            'thana': forms.Select(attrs={
                'id': 'thana',                 
                'placeholder': 'থানা নির্দিষ্ট করুন...',
                'class': 'selectpicker form-control'
            }),
        }

    def __init__(self, *args, **kwargs):
        super(PersonForm, self).__init__(*args, **kwargs)
        self.fields['profession'].required = False
        self.fields['address'].required = False
        self.fields['thana'].required = False