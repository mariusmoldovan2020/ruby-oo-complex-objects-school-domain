# code here!

require 'pry'

class School
    attr_accessor :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, student_grade)
        if !roster.has_key?(student_grade)
            roster[student_grade] = []
        end
        roster[student_grade] << student_name
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.map {|key, value| [key, value.sort]}.to_h
    end

end
