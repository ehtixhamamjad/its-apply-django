# from django.views.generic import TemplateView
# from web_project import TemplateLayout


# """
# This file is a view controller for multiple pages as a module.
# Here you can override the page view layout.
# Refer to pages/urls.py file for more pages.
# """


# class PagesView(TemplateView):
#     # Predefined function
#     def get_context_data(self, **kwargs):
#         # A function to init the global layout. It is defined in web_project/__init__.py file
#         context = TemplateLayout.init(self, super().get_context_data(**kwargs))

#         return context


#----------------------------class and fun------------------
# from django.shortcuts import render, redirect
# from django.views.generic import TemplateView
# from django.contrib.auth.decorators import login_required
# from web_project import TemplateLayout
# from .models import Student

# class PagesView(TemplateView):
#     # Predefined function
#     def get_context_data(self, **kwargs):
#         # A function to init the global layout. It is defined in web_project/__init__.py file
#         context = TemplateLayout.init(self, super().get_context_data(**kwargs))
#         return context

# def pages_student(request):
#     if request.method != 'POST':
#         return render(request, 'pages_student.html')
#     name = request.POST.get('name')
#     roll = request.POST.get('roll')
#     city = request.POST.get('city')
#     student = Student.objects.create(name=name, roll=roll, city=city)
#     student.save()
#     return redirect('/')
#----------------------gemni------------std
# from django.shortcuts import render, redirect
# from django.views.generic import TemplateView
# from django.contrib.auth.decorators import login_required
# from web_project import TemplateLayout
# from .models import Student
# from .models import Experience

# class PagesView(TemplateView):
#     def get_context_data(self, **kwargs):
#         context = TemplateLayout.init(self, super().get_context_data(**kwargs))
#         return context

#     def get(self, request, *args, **kwargs):
#         # Logic for handling GET requests (optional)
#         return super().get(request, *args, **kwargs)

#     def post(self, request, *args, **kwargs):
#         if request.method == 'POST':
#             name = request.POST.get('name')
#             roll = request.POST.get('roll')
#             city = request.POST.get('city')

#             # Add student logic
#             student = Student.objects.create(name=name, roll=roll, city=city)
#             student.save()

#             return redirect('/')  # Redirect to homepage after successful creation

#         return super().post(request, *args, **kwargs)


from django.shortcuts import render, redirect
from django.views.generic import TemplateView
from django.contrib.auth.decorators import login_required 
from web_project import TemplateLayout
from .models import Student, Experience

class PagesView(TemplateView):
    def get_context_data(self, **kwargs):
        context = TemplateLayout.init(self, super().get_context_data(**kwargs))
        return context

    def get(self, request, *args, **kwargs):
        # Logic for handling GET requests (optional)
        return super().get(request, *args, **kwargs)

    def post(self, request, *args, **kwargs):
        if request.method == 'POST':
            if 'name' in request.POST:  # Check for student data
                # Handle student form submission
                name = request.POST.get('name')
                roll = request.POST.get('roll')
                city = request.POST.get('city')

                student = Student.objects.create(name=name, roll=roll, city=city)
                student.save()

                # Redirect to appropriate page after student creation (optional)
                return redirect('/')  # Example redirect to homepage

            else:  # Check for experience data (assuming separate forms)
                # Handle experience form submission
                organization = request.POST.get('organization')
                designation = request.POST.get('designation')
                start_date = request.POST.get('start_date')
                end_date = request.POST.get('end_date')

                experience = Experience.objects.create(
                    organization=organization,
                    designation=designation,
                    start_date=start_date,
                    end_date=end_date if end_date else None,  # Handle optional end_date
                )
                experience.save()

                return redirect('pages-profile-user')  # Redirect to user profile (adjust URL name)

        return super().post(request, *args, **kwargs)