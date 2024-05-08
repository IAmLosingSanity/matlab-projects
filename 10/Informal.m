% Informal.m
classdef Informal < Person
    methods
        function greeting = greet(~, other)
            greeting = sprintf('Привет, %s!', other.Name);
        end
    end
end