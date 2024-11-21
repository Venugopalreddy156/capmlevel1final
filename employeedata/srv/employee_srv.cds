using {employeedb} from '../db/datamodel';

service EmployeeDetails {
    entity employee_contact as projection on employeedb.employeeregister;
}
@odata.draft.enabled
annotate employeedb.employeeregister with @(UI : { 
    HeaderInfo  : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Employee Details',
        TypeNamePlural : 'Employee Data',
    },
    SelectionFields  : [
        Id,
        Employee_Name,
        Phone_Number
        
    ],
    LineItem                : [
        {Value: Id},
        {Value: Employee_Name},
        {Value: Phone_Number}

    ],
    Facets                  : [{
        $Type : 'UI.CollectionFacet',
        ID    : '1',
        Label : 'Employee Registration Form',
        Facets: [{
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#EmployeeData'

        }

        ]
    }

    ],
FieldGroup #EmployeeData: {Data: [
        {Value: Id},
        {Value: Employee_Name},
        {Value: Phone_Number}
    ]


    },

    
 });