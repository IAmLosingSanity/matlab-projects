% Person.m
classdef (Abstract, HandleCompatible) Person < handle & matlab.mixin.Heterogeneous
    properties
        Name
        Age
    end
    
    methods
        function obj = Person(name, age)
            obj.Name = name;
            obj.Age = age;
        end
        
        function introduction = introduce(obj)
            introduction = sprintf('Меня зовут %s, мой возраст %d лет, я %s', ...
                                   obj.Name, obj.Age, class(obj));
        end
    end
    
    methods (Abstract)
        greet(obj, other)
    end
end