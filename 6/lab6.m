%% Lab 6. Var 3
classdef lab6 < handle
    properties
        docks % логический массив, представляющий доки
    end
    
    methods
        % Конструктор
        function obj = lab6(size)
            obj.docks = true(1, size); % Инициализация всех доков как свободных
        end
        
        % Метод для запроса посадки
        function [permission] = requestLanding(obj, dockNumber)
            % Проверка существования дока и его состояния
            if dockNumber > length(obj.docks) || dockNumber < 1
                permission = false; % Док не существует
            elseif obj.docks(dockNumber) == false
                permission = false; % Док занят
            else
                obj.docks(dockNumber) = false; % Занять док
                permission = true; % Разрешение на посадку
            end
        end
        
        % Метод для запроса взлёта
        function [permission] = requestTakeoff(obj, dockNumber)
            % Проверка существования дока и его состояния
            if dockNumber > length(obj.docks) || dockNumber < 1
                permission = false; % Док не существует
            elseif obj.docks(dockNumber) == true
                permission = false; % Док свободен
            else
                obj.docks(dockNumber) = true; % Освободить док
                permission = true; % Разрешение на взлёт
            end
        end
    end
end