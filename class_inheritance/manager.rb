require_relative "employee"
class Manager < Employee
    attr_reader :subordinates

    def initialize (name, title, salary, boss=nil)
        super
        @subordinates = []
    end

    def bonus(mulitplier)
        self.sub_sub_employees * mulitplier
    end


    def sub_sub_employees
        total = 0
        self.subordinates.each do |employee|
            if employee.is_a?(Manager)
                total += employee.sub_sub_employees + employee.salary
            else 
                total += employee.salary
            end
        end
        total
    end
end

p ned = Manager.new("Ned", "Founder", 1000000)
p darren = Manager.new("Darren", "TA Manger", 78000, ned )
p shawna = Employee.new("Shawna", "TA", 12000, darren)
p david = Employee.new("David", "TA", 10000, darren)


p ned.bonus(2)
