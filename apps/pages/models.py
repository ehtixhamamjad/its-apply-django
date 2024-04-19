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