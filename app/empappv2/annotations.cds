using CatalogService as service from '../../srv/catalog-service';

annotate service.Employee with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'First Name',
            Value : Fname,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Last Name',
            Value : Lname,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Gender',
            Value : EmpGender,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Email Id',
            Value : EmpEmail,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Salary',
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
                Label : 'First Name',
                Value : Fname,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Last Name',
                Value : Lname,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Gender',
                Value : EmpGender,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Email Id',
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
                Label : 'City Name',
                Value : CityName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'City ID',
                Value : city_ID,
            },
        ],
    },
    UI.Facets : [
        {   
            $Type  : 'UI.CollectionFacet',
            Label  : 'Genral Information',
            ID     : 'GeneralInformation',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    ID : 'GeneratedFacet1',
                    Label : 'General Information',
                    Target : '@UI.FieldGroup#GeneratedGroup1',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    ID : 'GeneratedFacet2',
                    Label : 'Detail Information',
                    Target : '@UI.FieldGroup#GeneratedGroup1',
                }
            ]
        },
        {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'Multiple Facet',
            ID     : 'OrderItems',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        }
    ]
);
annotate service.Employee with @(
    //Shown filters for the given fields after opening the application
    UI.SelectionFields : [
        Fname
    ],
);
annotate service.WorkAssignments with @(
    //Shown filters for the given fields after opening the application
    UI.FieldGroup #GeneratedGroup2 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : Desc,
            },
        ],
    },
    UI.Facets : [
        {   
            $Type  : 'UI.CollectionFacet',
            Label  : 'Associated Work',
            ID     : 'AssociatedWork',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    ID : 'GeneratedFacet3',
                    Label : 'Associated Work',
                    Target : '@UI.FieldGroup#GeneratedGroup2',
                }
            ]
        }
    ]
);