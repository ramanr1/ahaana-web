import com.parousia.ahaana.Employee

class BootStrap {

    def init = { servletContext ->
        if(!Employee.count()) {
            def bhuvana = new Employee( firstName: "Bhuvaneswari", lastName: "Krishnan").save(failOnError: true)
        }
    }
    def destroy = {
    }
}
