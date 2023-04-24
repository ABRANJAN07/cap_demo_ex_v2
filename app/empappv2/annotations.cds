using CatalogService as service from '../../srv/catalog-service';

annotate service.Employee with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Fname',
            Value : Fname,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Lname',
            Value : Lname,
        },
        {
            $Type : 'UI.DataField',
            Label : 'EmpGender',
            Value : EmpGender,
        },
        {
            $Type : 'UI.DataField',
            Label : 'EmpEmail',
            Value : EmpEmail,
        },
        {
            $Type : 'UI.DataField',
            Label : 'EmpSalary',
            Value : EmpSalary,
        },
    ]
);
annotate service.Employee with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Fname',
                Value : Fname,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Lname',
                Value : Lname,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EmpGender',
                Value : EmpGender,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EmpEmail',
                Value : EmpEmail,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EmpSalary',
                Value : EmpSalary,
            },
            {
                $Type : 'UI.DataField',
                Value : Currency_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CityName',
                Value : CityName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'city_ID',
                Value : city_ID,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
