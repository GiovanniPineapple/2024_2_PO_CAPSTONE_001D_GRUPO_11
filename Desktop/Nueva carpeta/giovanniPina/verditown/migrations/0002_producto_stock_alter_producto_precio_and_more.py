# Generated by Django 4.2.2 on 2023-06-18 01:07

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('verditown', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='producto',
            name='stock',
            field=models.IntegerField(blank=True, default=0, verbose_name='Stock'),
        ),
        migrations.AlterField(
            model_name='producto',
            name='precio',
            field=models.IntegerField(blank=True, validators=[django.core.validators.MinValueValidator(1), django.core.validators.MaxValueValidator(99999)], verbose_name='Precio'),
        ),
        migrations.AlterField(
            model_name='producto',
            name='sku',
            field=models.IntegerField(primary_key=True, serialize=False, verbose_name='SKU'),
        ),
    ]
