<<<<<<< Updated upstream
# from django.db import models
# # Create your models here.
# class Student(models.Model):
#     name=models.CharField(max_length=100)
#     roll=models.CharField(max_length=100)
#     city=models.CharField(max_length=100)


# class Experience(models.Model):
#   organization = models.CharField(max_length=255)
#   designation = models.CharField(max_length=255)
#   start_date = models.DateField()
#   end_date = models.DateField(blank=True, null=True)  # Optional end date

#   # Add a foreign key relationship to your User model (if applicable)
#   # user = models.ForeignKey(User, on_delete=models.CASCADE)

#   def __str__(self):
#     return f"{self.organization} - {self.designation}"    
from django.db import models

class Student(models.Model):
  name = models.CharField(max_length=255)
  roll = models.CharField(max_length=255)
  city = models.CharField(max_length=255)

  def __str__(self):
    return self.name

class Experience(models.Model):
  organization = models.CharField(max_length=255)
  designation = models.CharField(max_length=255)
  start_date = models.DateField()
  end_date = models.DateField(blank=True, null=True)  # Optional end date

  # Add a foreign key relationship to your User model (if applicable)
  # user = models.ForeignKey(User, on_delete=models.CASCADE)

  def __str__(self):
    return f"{self.organization} - {self.designation}"


class Academic(models.Model):
    degree_title = models.CharField(max_length=255, blank=True)  # Optional degree title (e.g., Bachelor of Science)
    degree = models.CharField(max_length=10, blank=True)  # Optional degree abbreviation (e.g., B.Sc.)
    duration = models.CharField(max_length=255, blank=True)  # Optional duration (e.g., 4 years)
    passing_year = models.IntegerField(blank=True, null=True)  # Optional passing year
    marks_type = models.CharField(max_length=255, blank=True)  # Optional marks type (e.g., CGPA)
    obtained_marks = models.FloatField(blank=True, null=True)  # Optional obtained marks
    total_marks = models.FloatField(blank=True, null=True)  # Optional total marks
    percentage = models.CharField(max_length=10, blank=True)  # Optional percentage (e.g., 95%)
    board_institute = models.CharField(max_length=255)  # Board or institute name
    subjects = models.TextField(blank=True)  # Optional subjects (comma-separated or other format)

    # Consider adding a foreign key relationship to your User model (if applicable)
    # user = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return f"{self.degree} ({self.board_institute})"    
=======
from django.db import models
from django import forms
from django.views.generic import TemplateView

class License_data(models.Model):
    license_type = models.CharField(max_length=100)
    license_number = models.CharField(max_length=100)
    issue_date = models.DateField()
    valid_upto = models.DateField()

class Employment_Information(models.Model):
    organization_name= models.CharField(max_length=100)
    designation = models.CharField(max_length=100)
    start_date = models.DateField()
    end_date = models.DateField()

class Address_Info(models.Model):
    domicile_district = models.CharField(max_length=100)
    domicile_taluka = models.CharField(max_length=100)
    union_council = models.CharField(max_length=100)
    domicile_no = models.CharField(max_length=100)
    prc_d_no = models.CharField(max_length=100)
    domicile_issuance_date = models.DateField()
    prc_d_issuance_date = models.DateField()
    DOMICILE_CHOICES = [('urban', 'Urban'), ('rural', 'Rural')]
    domicile_urban_rural = models.CharField(max_length=10, choices=DOMICILE_CHOICES)
    DOMICILE_TYPE_CHOICES = [('original', 'Original'), ('duplicate', 'Duplicate')]
    domicile_original_duplicate = models.CharField(max_length=10, choices=DOMICILE_TYPE_CHOICES)
    current_address = models.TextField()
    postal_address = models.TextField()
    permanent_address = models.TextField()

class Profile(models.Model):
    full_name = models.CharField(max_length=100)
    cnic = models.CharField(max_length=15)  # Assuming CNIC format XXXXX-XXXXXXX-X
    mobile_number = models.CharField(max_length=12)  # Assuming mobile number format 03XX-XXXXXXX
    email = models.EmailField()
    father_or_husband_name = models.CharField(max_length=100)
    GENDER_CHOICES = [
        ('male', 'Male'),
        ('female', 'Female'),
        ('other', 'Other'),
    ]
    gender = models.CharField(max_length=10, choices=GENDER_CHOICES)
    MARITAL_STATUS_CHOICES = [
        ('single', 'Single'),
        ('married', 'Married'),
        ('divorced', 'Divorced'),
        ('widowed', 'Widowed'),
    ]
    marital_status = models.CharField(max_length=10, choices=MARITAL_STATUS_CHOICES)
    date_of_birth = models.DateField()
    religion = models.CharField(max_length=50)
    is_government_servant = models.CharField(max_length=10)
    has_disability = models.CharField(max_length=10)
    domicile_district = models.CharField(max_length=100)
    domicile_province = models.CharField(max_length=100)
    postal_address = models.TextField()

class Academic_Information(models.Model):
    degree_title = models.CharField(max_length=100)
    degree = models.CharField(max_length=50)
    duration = models.CharField(max_length=20)
    passing_year = models.IntegerField()
    marks_type = models.CharField(max_length=20)
    obtained_marks = models.DecimalField(max_digits=5, decimal_places=2)
    total_marks = models.DecimalField(max_digits=5, decimal_places=2)
    percentage = models.DecimalField(max_digits=5, decimal_places=2)
    board_institute = models.CharField(max_length=100)
    subjects = models.TextField()


class ProfileForm(forms.ModelForm):
    class Meta:
        model = Profile
        fields = '__all__'
>>>>>>> Stashed changes
