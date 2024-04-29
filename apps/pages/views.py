from django.views.generic import TemplateView
from web_project import TemplateLayout
from django.db import models
from .models import License_data,Profile,Employment_Information,Address_Info,Academic_Information,Project_Application
from django.http import HttpResponse
from django.shortcuts import render, redirect,get_object_or_404
from django.shortcuts import render
from django.http import JsonResponse, HttpResponse
from django.shortcuts import get_object_or_404
# from .models import Employment

def view_post(request):
  applications =Project_Application.objects.all()  # Fetch all applications
#   applications = Project_Application.objects.raw("SELECT * FROM pages_project_application")
  print(applications)
  context = {'applications': applications}  # Add applications to context
  return render(request, 'pages_view_post.html', context)

def add_Project_Application(request):
  if request.method == 'POST':
    # Extract data from POST request
    project_title = request.POST.get('project_title')
    apply_for = request.POST.get('apply_for', '')  # Handle optional field
    last_date = request.POST.get('last_date')

    # Create a new ProjectApplication object and save it to the database
    new_application = Project_Application(
        project_title=project_title,
        apply_for=apply_for,
        last_date=last_date,
    )
    new_application.save()

    # Handle successful application (e.g., confirmation message)
    return HttpResponse('post added successfully')  # Replace with your success template

  else:
    # Render the application form
    return render(request, 'pages_student.html')


#------------------zain--------------------------


def Employment(request):
    if request.method == 'POST':
        # Extract data from POST request
        user_id = request.session.get('user_id')
        organization = request.POST.get('organization')
        designation = request.POST.get('designation')
        start_date = request.POST.get('start_date')
        end_date = request.POST.get('end_date')

        # Create a new License object and save it to the database
        new_Employment_Information = Employment_Information(
            user_id=user_id,
            organization_name=organization,
            designation=designation,
            start_date=start_date,
            end_date=end_date
        )
        new_Employment_Information.save()

        return HttpResponse('Employment added successfully') # You can customize the response as needed
    else:
        return render(request, 'add_license.html')

def edit_employment(request, employment_id):
    # Get the Employment Information object or return a 404 error if it doesn't exist
    employment_info = get_object_or_404(Employment_Information, id=employment_id)

    if request.method == 'POST':
        # Extract data from POST request
        organization = request.POST.get('organization')
        designation = request.POST.get('designation')
        start_date = request.POST.get('start_date')
        end_date = request.POST.get('end_date')

        # Update the employment information object
        employment_info.organization_name = organization
        employment_info.designation = designation
        employment_info.start_date = start_date
        employment_info.end_date = end_date
        employment_info.save()

        return HttpResponse('Employment information updated successfully')  # You can customize the response as needed
    else:
        return render(request, 'edit_employment.html', {'employment_info': employment_info})

def edit_academic_information(request, academic_info_id):
    # Retrieve the Academic_Information object or return a 404 error if it doesn't exist
    academic_info = get_object_or_404(Academic_Information, id=academic_info_id)

    if request.method == 'POST':
        # Extract data from POST request

        degree_title = request.POST.get('degree_title')
        degree = request.POST.get('degree')
        duration = request.POST.get('duration')
        passing_year = request.POST.get('passing_year')
        marks_type = request.POST.get('marks_type')
        obtained_marks = request.POST.get('obtained_marks')
        total_marks = request.POST.get('total_marks')
        percentage = request.POST.get('percentage')
        board_institute = request.POST.get('board_institute')
        subjects = request.POST.get('subjects')

        # Update the academic information object

        academic_info.degree_title = degree_title
        academic_info.degree = degree
        academic_info.duration = duration
        academic_info.passing_year = passing_year
        academic_info.marks_type = marks_type
        academic_info.obtained_marks = obtained_marks
        academic_info.total_marks = total_marks
        academic_info.percentage = percentage
        academic_info.board_institute = board_institute
        academic_info.subjects = subjects
        academic_info.save()

        return HttpResponse('Academic information updated successfully')  # You can customize the response as needed
    else:
        return render(request, 'edit_academic_information.html', {'academic_info': academic_info})


def add_license(request):
    if request.method == 'POST':
        # Extract data from POST request
        user_id = request.session.get('user_id')
        license_type = request.POST.get('license_type')
        license_number = request.POST.get('license_number')
        issue_date = request.POST.get('issue_date')
        valid_upto = request.POST.get('valid_upto')

        # Create a new License object and save it to the database
        new_license = License_data(
            user_id=user_id,
            license_type=license_type,
            license_number=license_number,
            issue_date=issue_date,
            valid_upto=valid_upto
        )
        new_license.save()

        return HttpResponse('License added successfully')  # You can customize the response as needed
    else:
        return render(request, 'add_license.html')

def create_Address_Info(request):
    if request.method == 'POST':
        user_id = request.session.get('user_id')
        domicile_district = request.POST.get('domicile_district')
        domicile_taluka = request.POST.get('domicile_taluka')
        union_council = request.POST.get('union_council')
        domicile_no = request.POST.get('domicile_no')
        prc_d_no = request.POST.get('prc_d_no')
        domicile_issuance_date = request.POST.get('domicile_issuance_date')
        prc_d_issuance_date = request.POST.get('prc_d_issuance_date')
        domicile_urban_rural = request.POST.get('domicile_urban_rural')
        domicile_original_duplicate = request.POST.get('domicile_original_duplicate')
        current_address = request.POST.get('current_address')
        postal_address = request.POST.get('postal_address')
        permanent_address = request.POST.get('permanent_address')

        address_Info =Address_Info(
            user_id=user_id,
            domicile_district=domicile_district,
            domicile_taluka=domicile_taluka,
            union_council=union_council,
            domicile_no=domicile_no,
            prc_d_no=prc_d_no,
            domicile_issuance_date=domicile_issuance_date,
            prc_d_issuance_date=prc_d_issuance_date,
            domicile_urban_rural=domicile_urban_rural,
            domicile_original_duplicate=domicile_original_duplicate,
            current_address=current_address,
            postal_address=postal_address,
            permanent_address=permanent_address
        )
        address_Info.save()
        # Redirect to a success page or do something else
        return HttpResponse('Address added successfully')  # Replace 'profile_success' with your URL name

    return render(request, 'pages_profile_teams.html')
def edit_address_info(request, address_info_id):
    # Retrieve the existing address info object from the database
    address_info = Address_Info.objects.get(id=address_info_id)

    if request.method == 'POST':
        # Update the fields with the new values from the form
        address_info.domicile_district = request.POST.get('domicile_district')
        address_info.domicile_taluka = request.POST.get('domicile_taluka')
        address_info.union_council = request.POST.get('union_council')
        address_info.domicile_no = request.POST.get('domicile_no')
        address_info.prc_d_no = request.POST.get('prc_d_no')
        address_info.domicile_issuance_date = request.POST.get('domicile_issuance_date')
        address_info.prc_d_issuance_date = request.POST.get('prc_d_issuance_date')
        address_info.domicile_urban_rural = request.POST.get('domicile_urban_rural')
        address_info.domicile_original_duplicate = request.POST.get('domicile_original_duplicate')
        address_info.current_address = request.POST.get('current_address')
        address_info.postal_address = request.POST.get('postal_address')


        address_info.permanent_address = request.POST.get('permanent_address')

        # Save the updated address info object
        address_info.save()

        # Redirect to a success page or do something else
        return HttpResponse('Address info updated successfully')  # Replace with your URL or template name

    # Render the edit form with the existing data
    return render(request, 'edit_address_info.html', {'address_info': address_info})

"""
This file is a view controller for multiple pages as a module.
Here you can override the page view layout.
Refer to pages/urls.py file for more pages.
"""
# class PagesView(TemplateView):
#     # Predefined function
#     def get_context_data(self, **kwargs):
#         # A function to init the global layout. It is defined in web_project/__init__.py file
#         context = TemplateLayout.init(self, super().get_context_data(**kwargs))

#         return context
class PagesView(TemplateView):
    # Predefined function
    def get_context_data(self, **kwargs):
        context = TemplateLayout.init(self, super().get_context_data(**kwargs))

        # Add view_post functionality
        applications = Project_Application.objects.all()  # Fetch all applications
        context['applications'] = applications

        # Check if user is authenticated and get session ID
        if self.request.user.is_authenticated:
            session_id = self.request.session['user_id']

            # Fetch employment information based on session ID
            try:
                employment_info = Employment_Information.objects.get(user_id=session_id)
                context['employment_info'] = [employment_info]
            except Employment_Information.DoesNotExist:
                context['employment_info'] = None
            try:
                # Fetch address information based on session ID
                address_info = Address_Info.objects.get(user_id=session_id)

                context['address_info'] = [address_info]
            except Address_Info.DoesNotExist:
                context['address_info'] = None
            try:
                # Fetch address information based on session ID
                profile_info = Profile.objects.get(user_id=session_id)
                context['profile_info'] = [profile_info]
            except Profile.DoesNotExist:
                context['profile_info'] = None
            try:
                # Fetch address information based on session ID
                education_info = Academic_Information.objects.filter(user_id=session_id)
                context['education_info'] = education_info  # Wrap education_info in a list
            except Academic_Information.DoesNotExist:
                context['education_info'] = None  # Set education_info to None if the object doesn't exist
            return context


def userInfo(request):
    if request.method == 'POST':
        user_id = request.session.get('user_id')
        username = request.POST.get('username')
        cnic = request.POST.get('cnic')
        phonenum = request.POST.get('phonenum')
        email = request.POST.get('email')
        fname = request.POST.get('fname')
        gender = request.POST.get('gender')
        status = request.POST.get('status')
        religion = request.POST.get('religion')
        govt = request.POST.get('govt')
        dob = request.POST.get('dob')
        dis= request.POST.get('dis')
        domicile_province=request.Post.get('domicile_province')
        dom= request.POST.get('dom')
        post = request.POST.get('post')


        if username:  # Ensure that username is not empty
          profile_data = Profile(
                         user_id=user_id,
                        full_name=username,
                          cnic=cnic,
                          mobile_number=phonenum,
                          email=email ,
                          father_or_husband_name=fname,
                          gender=gender,
                          marital_status=status,
                          date_of_birth=dob,
                          religion=religion,
                          is_government_servant=govt,
                          has_disability=dis,
                          domicile_province=domicile_province,
                          domicile_district=dom,
                          postal_address=post)
        profile_data.save()
            # Optionally, you can redirect to another page after form submission
            # return redirect('success_url')  # Replace with your success URL
        return HttpResponse('user added successfully')
       # return render(request, "pages_profile_personals_info.html")
def edit_user(request, profile_id):
    # Get the Profile object to edit or return 404 if not found
    profile_data = get_object_or_404(Profile, id=profile_id)

    if request.method == 'POST':
        # Get form data
        username = request.POST.get('username')
        cnic = request.POST.get('cnic')
        phonenum = request.POST.get('phonenum')
        email = request.POST.get('email')
        fname = request.POST.get('fname')
        gender = request.POST.get('gender')
        status = request.POST.get('status')
        religion = request.POST.get('religion')
        govt = request.POST.get('govt')
        dob = request.POST.get('dob')
        dis = request.POST.get('dis')
        dom = request.POST.get('dom')
        post = request.POST.get('post')
        domicile_province = request.POST.get('domicile_province')
        # Perform validation
        if username and cnic and phonenum and email and fname and gender and status and dob and religion and dom and post:
            # Convert checkbox values to boolean
            govt = govt == 'on'
            dis = dis == 'on'

            # Update Profile object
            profile_data.full_name = username
            profile_data.cnic = cnic
            profile_data.mobile_number = phonenum
            profile_data.email = email
            profile_data.father_or_husband_name = fname
            profile_data.gender = gender
            profile_data.marital_status = status
            profile_data.date_of_birth = dob
            profile_data.religion = religion
            profile_data.is_government_servant = govt
            profile_data.has_disability = dis
            profile_data.domicile_district = dom
            profile_data.postal_address = post
            profile_data.domicile_province = domicile_province

            # Save updated Profile data
            profile_data.save()

            # Redirect to success URL or return success message
            # return redirect('success_url')  # Replace with your success URL
            return HttpResponse('User information updated successfully')
        else:
            # Handle invalid form data
            return HttpResponse('Please fill in all required fields')

    # Render the edit form with existing profile data
    return render(request, 'edit_user.html', {'profile_data': profile_data})

def education_create(request):
    if request.method == 'POST':
        # Retrieve form data from request.POST
        user_id = request.session.get('user_id')
        degree_title = request.POST.get('degree_title')
        degree = request.POST.get('degree')
        duration = request.POST.get('duration')
        passing_year = request.POST.get('passing_year')
        marks_type = request.POST.get('marks_type')
        obtained_marks = request.POST.get('obtained_marks')
        total_marks = request.POST.get('total_marks')
        percentage_str = request.POST.get('percentage')  # Get percentage as string
        board_institute = request.POST.get('board_institute')
        subjects = request.POST.get('subjects')

        # Convert percentage string to decimal number
        percentage = float(percentage_str.strip('%')) / 100

        # Create and save Education object
        new_Education=Academic_Information(
            user_id=user_id,
            degree_title=degree_title,
            degree=degree,
            duration=duration,
            passing_year=passing_year,
            marks_type=marks_type,
            obtained_marks=obtained_marks,
            total_marks=total_marks,
            percentage=percentage,
            board_institute=board_institute,
            subjects=subjects
        )
        new_Education.save()
        # Redirect to profile page upon successful form submission
        return HttpResponse("added successfully")
    else:
        return HttpResponse("Method not allowed")

def education_create_more(request):
    if request.method == 'POST':
        # Retrieve form data from request.POST
        user_id = request.session.get('user_id')
        degree_title = request.POST.get('degree_title')
        degree = request.POST.get('degree')
        duration = request.POST.get('duration')
        passing_year = request.POST.get('passing_year')
        marks_type = request.POST.get('marks_type')
        obtained_marks = request.POST.get('obtained_marks')
        total_marks = request.POST.get('total_marks')
        percentage_str = request.POST.get('percentage')  # Get percentage as string
        board_institute = request.POST.get('board_institute')
        subjects = request.POST.get('subjects')

        # Convert percentage string to decimal number
        percentage = float(percentage_str.strip('%')) / 100

        # Create and save Education object
        new_Education=Academic_Information(
            user_id=user_id,
            degree_title=degree_title,
            degree=degree,
            duration=duration,
            passing_year=passing_year,
            marks_type=marks_type,
            obtained_marks=obtained_marks,
            total_marks=total_marks,
            percentage=percentage,
            board_institute=board_institute,
            subjects=subjects
        )
        new_Education.save()
        # Redirect to profile page upon successful form submission
        return HttpResponse("added successfully")
    else:
        return HttpResponse("Method not allowed")
