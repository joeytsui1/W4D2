require_relative "employee"
class Manager < Employee
    attr_reader :subordinates

    def initialize (name, title, salary, boss=nil)
        super
        @subordinates = []
    end

    def bonus(mulitplier)
        total = sub_sub_employees(self)
    end


    def sub_sub_employees(person)
        total = 0
        person.subordinates.each do |sub_person|
            if sub_person.subordinates.empty?
                total += sub_person.salary
            else 
                total += sub_sub_employees(sub_person)
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
