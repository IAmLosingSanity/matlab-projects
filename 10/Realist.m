% Realist.m
classdef Realist < Person
    methods
        function greeting = greet(obj, other)
            if abs(obj.Age - other.Age) <= 5
                greeting = sprintf('Привет, %s!', other.Name);
            else
                greeting = sprintf('Здравствуй, %s', other.Name);
            end
        end
    end
end