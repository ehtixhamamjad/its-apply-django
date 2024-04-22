# Generated by Django 5.0.4 on 2024-04-20 02:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pages', '0005_employment_information'),
    ]

    operations = [
        migrations.CreateModel(
            name='Address_Info',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('domicile_district', models.CharField(max_length=100)),
                ('domicile_taluka', models.CharField(max_length=100)),
                ('union_council', models.CharField(max_length=100)),
                ('domicile_no', models.CharField(max_length=100)),
                ('prc_d_no', models.CharField(max_length=100)),
                ('domicile_issuance_date', models.DateField()),
                ('prc_d_issuance_date', models.DateField()),
                ('domicile_urban_rural', models.CharField(choices=[('urban', 'Urban'), ('rural', 'Rural')], max_length=10)),
                ('domicile_original_duplicate', models.CharField(choices=[('original', 'Original'), ('duplicate', 'Duplicate')], max_length=10)),
                ('current_address', models.TextField()),
                ('postal_address', models.TextField()),
                ('permanent_address', models.TextField()),
            ],
        ),
    ]