# Generated by Django 5.0 on 2024-04-23 07:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pages', '0007_academic_information'),
    ]

    operations = [
        migrations.CreateModel(
            name='Project_Application',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('apply_for', models.CharField(blank=True, max_length=255)),
                ('project_title', models.CharField(max_length=255)),
                ('last_date', models.DateField()),
            ],
        ),
    ]
