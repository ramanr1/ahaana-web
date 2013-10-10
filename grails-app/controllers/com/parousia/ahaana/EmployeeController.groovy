package com.parousia.ahaana

class EmployeeController {

    def scaffold = Employee
    def index={
        def employee = Employee.list([sort:"lastName", order:"asc"])
        return [employee:employee]
    }
}
