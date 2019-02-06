from django.db import models
from django.core.validators import RegexValidator


# Create your models here.
class Division(models.Model):
    name_en = models.CharField(verbose_name="Division", max_length=100)
    name_bn = models.CharField(max_length=100)

    def __str__(self):
        return self.name_en

class District(models.Model):
    name_en = models.CharField(verbose_name="District", max_length=100)
    name_bn = models.CharField(max_length=100)
    division = models.ForeignKey(Division, on_delete=models.PROTECT)

    def __str__(self):
        return self.name_en
    
class Thana(models.Model):
    name_en = models.CharField(verbose_name="Thana", max_length=100)
    name_bn = models.CharField(max_length=100)
    district = models.ForeignKey(District, on_delete=models.PROTECT)

    def __str__(self):
        return self.name_en

class Person(models.Model):
    name = models.CharField(max_length=100)
    # email = models.EmailField(unique=True)
    profession = models.CharField(max_length=100)
    address = models.CharField(max_length=500)
    thana = models.ForeignKey(Thana, on_delete=models.PROTECT)
    created_on = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ['name']

    def __str__(self):
        return self.name

class Telephone(models.Model):
    number = models.CharField(max_length=20, validators=[RegexValidator(
        regex=r'[+]?\d+',
        message="Telephone number not valid. Must have only digits."
    )])
    person = models.ForeignKey(Person, on_delete=models.CASCADE)

    def __str__(self):
        return self.number

class Mobile(models.Model):
    number = models.CharField(max_length=14, validators=[RegexValidator(
        regex=r'[+]?\d{11,13}',
        message="Mobile number not valid. Must have only digits and minimum 11 digits."
    )])
    person = models.ForeignKey(Person, on_delete=models.CASCADE) 

    def __str__(self):
        return self.number



