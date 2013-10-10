package com.parousia.ahaana

class Employee {

    String firstName;
    String lastName;

    static constraints = {
        firstName(blank: false)
        lastName(blank: false)
    }

    String toString(){
        return "${firstName} ${lastName}"
    }
}
