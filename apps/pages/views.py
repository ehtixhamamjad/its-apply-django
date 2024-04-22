from django.views.generic import TemplateView
from web_project import TemplateLayout
from django.db import models
from .models import License_data,Profile,Employment_Information,Address_Info,Academic_Information
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.shortcuts import render
from django.http import JsonResponse, HttpResponse
from django.shortcuts import get_object_or_404
# from .models import Employment

def get_employment(request):
    if request.method == 'GET':
        # Retrieve session ID from request
        session_Id = request.GET.get('user_id')

        if not session_Id:
            return JsonResponse({'error': 'No session ID provided'}, status=400)

        # Retrieve employment information associated with session ID
        employment_info = Employment_Information.objects.filter(session_id=session_Id).first()

        # Check if employment information exists for the provided session ID
        if employment_info:
            # Serialize employment information into JSON format
            employment_data = {
                'organization_name': employment_info.organization_name,
                'designation': employment_info.designation,
                'start_date': employment_info.start_date.strftime('%Y-%m-%d') if employment_info.start_date else None,  # Assuming start_date is a DateField
                'end_date': employment_info.end_date.strftime('%Y-%m-%d') if employment_info.end_date else None,  # Assuming end_date is a DateField
            }

            return render(request, 'pages_profile_user.html', {'employment_info': employment_data})
        else:
            return JsonResponse({'error': 'No employment information found for the provided session ID'}, status=404)
    else:
        return JsonResponse({'error': 'Invalid request method'}, status=405)
#  for get value of emplyeement
def get_Address_Info(request):
    if request.method == 'GET':
        # Retrieve session ID from request
        session_id = request.GET.get('user_id')

        if not session_id:
            return JsonResponse({'error': 'No session ID provided'}, status=400)

        # Retrieve address information associated with the session ID
        address_info = Address_Info.objects.filter(session_id=session_id).first()

        if address_info:
            # Serialize address information into JSON format
            address_data = {
                'domicile_district': address_info.domicile_district,
                'domicile_taluka': address_info.domicile_taluka,
                'union_council': address_info.union_council,
                'domicile_no': address_info.domicile_no,
                'prc_d_no': address_info.prc_d_no,
                'domicile_issuance_date': address_info.domicile_issuance_date.strftime('%Y-%m-%d') if address_info.domicile_issuance_date else None,
                'prc_d_issuance_date': address_info.prc_d_issuance_date.strftime('%Y-%m-%d') if address_info.prc_d_issuance_date else None,
                'domicile_urban_rural': address_info.domicile_urban_rural,
                'domicile_original_duplicate': address_info.domicile_original_duplicate,
                'current_address': address_info.current_address,
                'postal_address': address_info.postal_address,
                'permanent_address': address_info.permanent_address,
            }

            return render(request, 'pages_profile_user.html', {'address_info': address_data})
        else:
            return JsonResponse({'error': 'No address information found for the provided session ID'}, status=404)
    else:
        return JsonResponse({'error': 'Invalid request method'}, status=405)

def Employment(request):
    if request.method == 'POST':
        # Extract data from POST request
        organization = request.POST.get('organization')
        designation = request.POST.get('designation')
        start_date = request.POST.get('start_date')
        end_date = request.POST.get('end_date')

        # Create a new License object and save it to the database
        new_Employment_Information = Employment_Information(
            organization_name=organization,
            designation=designation,
            start_date=start_date,
            end_date=end_date
        )
        new_Employment_Information.save()

        return HttpResponse('Employment added successfully') # You can customize the response as needed
    else:
        return render(request, 'add_license.html')
def get_education_data(request):
    if request.method == 'GET':
        # Retrieve session ID from request
        session_id = request.GET.get('session_id')

        if not session_id:
            return JsonResponse({'error': 'No session ID provided'}, status=400)

        # Retrieve education information associated with session ID
        education_data = Academic_Information.objects.filter(session_id=session_id).first()

        if education_data:
            # Prepare data to send as JSON response
            education_info = {
                'degree_title': education_data.degree_title,
                'degree': education_data.degree,
                'duration': education_data.duration,
                'passing_year': education_data.passing_year,
                'marks_type': education_data.marks_type,
                'obtained_marks': education_data.obtained_marks,
                'total_marks': education_data.total_marks,
                'percentage': education_data.percentage,
                'board_institute': education_data.board_institute,
                'subjects': education_data.subjects
            }
            return JsonResponse({'education_info': education_info})
        else:
            return JsonResponse({'error': 'No education information found for the provided session ID'}, status=404)
    else:
        return JsonResponse({'error': 'Invalid request method'}, status=405)

def add_license(request):
    if request.method == 'POST':
        # Extract data from POST request
        license_type = request.POST.get('license_type')
        license_number = request.POST.get('license_number')
        issue_date = request.POST.get('issue_date')
        valid_upto = request.POST.get('valid_upto')

        # Create a new License object and save it to the database
        new_license = License_data(
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
"""
This file is a view controller for multiple pages as a module.
Here you can override the page view layout.
Refer to pages/urls.py file for more pages.
"""
class PagesView(TemplateView):
    # Predefined function
    def get_context_data(self, **kwargs):
        # A function to init the global layout. It is defined in web_project/__init__.py file
        context = TemplateLayout.init(self, super().get_context_data(**kwargs))

        return context

def userInfo(request):
    if request.method == 'POST':
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
        dom= request.POST.get('dom')
        post = request.POST.get('post')


        if username:  # Ensure that username is not empty
          profile_data = Profile(full_name=username,
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
                          domicile_district=dom,
                          postal_address=post)
        profile_data.save()
            # Optionally, you can redirect to another page after form submission
            # return redirect('success_url')  # Replace with your success URL
        return HttpResponse('user added successfully')

        # return render(request, "pages_profile_personals_info.html")
def get_user_info(request):
    if request.method == 'GET':
        # Retrieve session ID from request
        session_id = request.GET.get('session_id')

        if not session_id:
            return JsonResponse({'error': 'No session ID provided'}, status=400)

        # Retrieve user information associated with session ID
        user_info = Profile.objects.filter(session_id=session_id).first()

        # Check if user information exists for the provided session ID
        if user_info:
            # Serialize user information into JSON format
            user_data = {
                'username': user_info.username,
                'cnic': user_info.cnic,
                'phonenum': user_info.phonenum,
                'email': user_info.email,
                'fname': user_info.fname,
                'gender': user_info.gender,
                'status': user_info.status,
                'religion': user_info.religion,
                'govt': user_info.govt,
                'dob': user_info.dob,
                'dis': user_info.dis,
                'dom': user_info.dom,
                'post': user_info.post,
            }

            return JsonResponse({'user_info': user_data})
        else:
            return JsonResponse({'error': 'No user information found for the provided session ID'}, status=404)
    else:
        return JsonResponse({'error': 'Invalid request method'}, status=405)
def education_create(request):
    if request.method == 'POST':
        # Retrieve form data from request.POST
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
