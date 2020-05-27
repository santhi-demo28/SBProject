xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://www.example.org";
(:: import schema at "Resources/Employee.xsd" ::)
declare namespace ns1="http://xmlns.oracle.com/pcbpel/adapter/db/top/dbReference";
(:: import schema at "dbReference_table.xsd" ::)

declare variable $request as element() (:: schema-element(ns1:EmployeesCollection) ::) external;

declare function local:func($request as element() (:: schema-element(ns1:EmployeesCollection) ::)) as element() (:: schema-element(ns2:EmployeesCollection) ::) {
    <ns2:EmployeesCollection>
        <ns2:Employees>
            <ns2:employeeId>{fn:data($request/ns1:Employees/ns1:employeeId)}</ns2:employeeId>
            {
                if ($request/ns1:Employees/ns1:firstName)
                then <ns2:firstName>{fn:data($request/ns1:Employees/ns1:firstName)}</ns2:firstName>
                else ()
            }
            {
                if ($request/ns1:Employees/ns1:lastName)
                then <ns2:lastName>{fn:data($request/ns1:Employees/ns1:lastName)}</ns2:lastName>
                else ()
            }
            {
                if ($request/ns1:Employees/ns1:email)
                then <ns2:email>{fn:data($request/ns1:Employees/ns1:email)}</ns2:email>
                else ()
            }
            {
                if ($request/ns1:Employees/ns1:phoneNumber)
                then <ns2:phoneNumber>{fn:data($request/ns1:Employees/ns1:phoneNumber)}</ns2:phoneNumber>
                else ()
            }
            {
                if ($request/ns1:Employees/ns1:hireDate)
                then <ns2:hireDate>{fn:data($request/ns1:Employees/ns1:hireDate)}</ns2:hireDate>
                else ()
            }
            {
                if ($request/ns1:Employees/ns1:jobId)
                then <ns2:jobId>{fn:data($request/ns1:Employees/ns1:jobId)}</ns2:jobId>
                else ()
            }
            {
                if ($request/ns1:Employees/ns1:salary)
                then <ns2:salary>{fn:data($request/ns1:Employees/ns1:salary)}</ns2:salary>
                else ()
            }
            {
                if ($request/ns1:Employees/ns1:commissionPct)
                then <ns2:commissionPct>{fn:data($request/ns1:Employees/ns1:commissionPct)}</ns2:commissionPct>
                else ()
            }
            <ns2:managerId></ns2:managerId>
            {
                if ($request/ns1:Employees/ns1:departmentId)
                then <ns2:departmentId>{fn:data($request/ns1:Employees/ns1:departmentId)}</ns2:departmentId>
                else ()
            }
            <ns2:poll></ns2:poll>
        </ns2:Employees>
    </ns2:EmployeesCollection>
};

local:func($request)
