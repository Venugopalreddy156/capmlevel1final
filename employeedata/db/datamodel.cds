namespace employeedb;

entity employeeregister{
    @title : 'ID'
    key Id :Integer;
    @title : 'Name'
    Employee_Name : String(50);
    @title : 'Phone Number'
    Phone_Number : Integer;
}

// view CH_Employee as select from employeeregister as dbemp{
//     dbemp.Id,
//     dbemp.Employee_Name,
//     dbemp.Phone_Number

// }
