# Generated by Django 2.1.3 on 2018-12-10 12:04

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('directory', '0002_auto_20181108_1425'),
    ]

    operations = [
        migrations.AlterField(
            model_name='mobile',
            name='number',
            field=models.CharField(max_length=14, validators=[django.core.validators.RegexValidator(message='Mobile number not valid. Must have only digits and minimum 11 digits.', regex='[+]?\\d{11,13}')]),
        ),
        migrations.AlterField(
            model_name='telephone',
            name='number',
            field=models.CharField(max_length=20, validators=[django.core.validators.RegexValidator(message='Telephone number not valid. Must have only digits.', regex='[+]?\\d+')]),
        ),
    ]