
# Register your models here.
from django.contrib import admin
from .models import Student
from .models import Experience
from .models import Academic

admin.site.register(Student)
admin.site.register(Experience)
admin.site.register(Academic)