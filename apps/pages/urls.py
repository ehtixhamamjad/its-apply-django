from django.urls import path
from .views import PagesView
from .views_misc import MiscPagesView
from django.contrib.auth.decorators import login_required
from .views import add_license,userInfo,Employment,create_Address_Info,education_create,add_Project_Application,edit_employment, edit_user,edit_address_info,edit_academic_information


urlpatterns = [
    path(
        "pages/profile/user/",
        login_required(PagesView.as_view(template_name="pages_profile_user.html")),
        name="pages-profile-user",
    ),
    #  path('employment/', EmploymentView.as_view(), name='employment-view'),
    path(
        "pages/profile/address/",
        login_required(PagesView.as_view(template_name="pages_profile_address.html")),
        name="pages-profile-address",
    ),
    path(
        "pages/profile/academic/",
        login_required(PagesView.as_view(template_name="pages_profile_academic.html")),
        name="pages-profile-academic",
    ),
        path(
        "pages/profile/academic-more/",
        login_required(PagesView.as_view(template_name="pages_profile_academic_more.html")),
        name="pages-profile-academic-more",
    ),
    path(
        "pages/profile/employment/",
        login_required(PagesView.as_view(template_name="pages_profile_employment.html")),
        name="pages-profile-employment",
    ),
     path(
        "pages/profile/personal_info/",
        login_required(PagesView.as_view(template_name="pages_profile_personals_info.html")),
        name="pages-profile-personal-info",
    ),
     path(
        "pages/profile/license_Info/",
        login_required(PagesView.as_view(template_name="pages_profile_license_Info.html")),
        name="pages-profile-license-Info",
    ),

      path('pages/profile/license_Info/add/', login_required(add_license), name='add_license'),
      path('pages/profile/employment/add/', login_required(Employment), name='Employment'),
       path('pages/profile/address/add/', create_Address_Info, name='create_address_info'),
       path('pages/profile/academic/add/', education_create, name='education_create'),
       path('pages/profile/user/add/', userInfo, name='userInfo'),
        path('pages/profile/employment/<int:employment_id>', edit_employment, name='edit_employment'),
          path('pages/profile/personal_info/<int:profile_id>', edit_user, name='edit_user'),
        path('pages/profile/address/<int:address_info_id>', edit_address_info, name='edit_address_info'),
        path('pages/profile/academic/<int:academic_info_id>', edit_academic_information, name='edit_academic_information'),
        #  path('pages/profile/academic-more', edit_academic_information, name='edit_academic_information'),

    path(
        "pages/account_settings/account/",
        login_required(PagesView.as_view(template_name="pages_account_settings_account.html")),
        name="pages-account-settings-account",
    ),
    path(
        "pages/account_settings/security/",
        login_required(PagesView.as_view(template_name="pages_account_settings_security.html")),
        name="pages-account-settings-security",
    ),
    path(
        "pages/account_settings/billing/",
        login_required(PagesView.as_view(template_name="pages_account_settings_billing.html")),
        name="pages-account-settings-billing",
    ),
    path(
        "pages/account_settings/notifications/",
        login_required(PagesView.as_view(template_name="pages_account_settings_notifications.html")),
        name="pages-account-settings-notifications",
    ),
    path(
        "pages/account_settings/connections/",
        login_required(PagesView.as_view(template_name="pages_account_settings_connections.html")),
        name="pages-account-settings-connections",
    ),

       path(
        "pages/pages_active_projects/",
        login_required(PagesView.as_view(template_name="pages_active_projects.html")),
        name="pages-active-projects",
    ),
     path(
        "pages/pages_profile/",
        login_required(PagesView.as_view(template_name="pages_profile.html")),
        name="pages-profile",
    ),
    path(
        "pages/pricing/",
        login_required(PagesView.as_view(template_name="pages_pricing.html")),
        name="pages-pricing",
    ),
      path(
        "pages/print_slip/",
        login_required(PagesView.as_view(template_name="pages_print_slip.html")),
        name="pages-print-slip",
    ),
    #  path(
    #     "pages/view_post/",
    #     view_post,
    #     name="pages-view-post",
    # ),
path(
        "pages/view_post/",
        login_required(PagesView.as_view(template_name="pages_view_post.html")),
        name="pages-view-post",
    ),
    #  path('pages/view_post/',view_post, name='pages-view-post'),
    path(
        "pages/pages_apply_progress_form/",
        login_required(PagesView.as_view(template_name="pages_apply_progress_form.html")),
        name="pages-apply-progress-form",
    ),
    path(
        "pages/pages_how_to_apply/",
        login_required(PagesView.as_view(template_name="pages_how_to_apply.html")),
        name="pages-how-to-apply",
    ),
     path(
        "pages/faq/",
        login_required(PagesView.as_view(template_name="pages_faq.html")),
        name="pages-faq",
    ),
     path(
        "pages/application/",
        login_required(PagesView.as_view(template_name="pages_applicaton.html")),
        name="pages-applicaton",
    ),
     path(
        "pages/pages_download_slip",
        login_required(PagesView.as_view(template_name="pages_download_slip.html")),
        name="pages-download-slip",
    ),
    path(
        "pages/pages_new_query",
        login_required(PagesView.as_view(template_name="pages_new_query.html")),
        name="pages-new-query",
    ),
      path(
        "pages/pages_student",
        login_required(PagesView.as_view(template_name="pages_student.html")),
        name="pages-student",
    ),

     path('pages/pages_student/add/', add_Project_Application, name='Project_Application'),

    path(
        "pages/misc/error/",
        MiscPagesView.as_view(template_name="pages_misc_error.html"),
        name="pages-misc-error",
    ),
    path(
        "pages/misc/under_maintenance/",
        MiscPagesView.as_view(template_name="pages_misc_under_maintenance.html"),
        name="pages-misc-under-maintenance",
    ),
    path(
        "pages/misc/comingsoon/",
        MiscPagesView.as_view(template_name="pages_misc_comingsoon.html"),
        name="pages-misc-comingsoon",
    ),
    path(
        "pages/misc/not_authorized/",
        MiscPagesView.as_view(template_name="pages_misc_not_authorized.html"),
        name="pages-misc-not-authorized",
    ),
]
