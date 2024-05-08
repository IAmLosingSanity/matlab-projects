% Formalist.m
classdef Formalist < Person
    methods
        function greeting = greet(~, other)
            greeting = sprintf('Здравствуй, %s', other.Name);
        end
    end
end