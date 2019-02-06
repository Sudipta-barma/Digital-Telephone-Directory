from django.contrib import admin
from .models import Person, Telephone, Mobile, Thana, District, Division

# Register your models here.

class MobileInline(admin.TabularInline):
    model = Mobile

class TelephoneInline(admin.TabularInline):
    model = Telephone

@admin.register(Person)
class PersonAdmin(admin.ModelAdmin):
    list_display = ['name', 'profession', 'address', 'thana', 'mobile_display', 'telephone_display','created_on']
    search_fields = ['name', 'profession', 'address', 'thana__name_en']
    ordering = ['name']
    list_filter = ['created_on', 'thana__name_en', 'profession']
    date_hierarchy = 'created_on'
    inlines = [
        MobileInline,
        TelephoneInline
    ]
    def mobile_display(self, obj):
        return ", ".join([
            mobile.number for mobile in obj.mobile_set.all()
        ])

    def telephone_display(self, obj):
        return ", ".join([
            telephone.number for telephone in obj.telephone_set.all()
        ])
    
    mobile_display.short_description = "Moblies"
    telephone_display.short_description = "Telephones"



@admin.register(Telephone)
class TelephoneAdmin(admin.ModelAdmin):
    list_display = ['number', 'person']
    search_fields = ['number', 'person']

@admin.register(Mobile)
class MobileAdmin(admin.ModelAdmin):
    list_display = ['number', 'person']
    search_fields = ['number', 'person']
    
@admin.register(Thana)
class ThanaAdmin(admin.ModelAdmin):
    list_display = ['name_en', 'name_bn', 'district']
    search_fields = ['name_en', 'name_bn', 'district']
    ordering = ['name_en']
    list_filter = ['name_en', 'name_bn', 'district__name_en']
    
@admin.register(District)
class DistrictAdmin(admin.ModelAdmin):
    list_display = ['name_en', 'name_bn', 'division']
    search_fields = ['name_en', 'name_bn', 'division']
    ordering = ['name_en']
    list_filter = ['name_en', 'name_bn', 'division__name_en']

@admin.register(Division)
class DivisionAdmin(admin.ModelAdmin):
    list_display = ['name_en', 'name_bn']
    search_fields = ['name_en', 'name_bn']
    ordering = ['name_en']
    list_filter = ['name_en', 'name_bn']

