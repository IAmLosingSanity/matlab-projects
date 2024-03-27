%% Lab 6. Var 3
classdef lab6 < handle
    properties
        docks(1,1) = true % initialize all docks as free
    end

    methods
        function obj = lab6(size)
            obj.docks = ones(size, 1); % initialize all docks as free
        end

        function response = requestLanding(obj, dockNumber)
            if dockNumber > size(obj.docks, 1) || dockNumber <= 0
                response = false; % request is denied
            elseif ~obj.docks(dockNumber)
                response = false; % request is denied
            else
                obj.docks(dockNumber) = false; % mark the dock as occupied
                response = true; % request is approved
            end
        end

        function response = requestTakeoff(obj, dockNumber)
            if dockNumber > size(obj.docks, 1) || dockNumber <= 0
                response = false; % request is denied
            elseif obj.docks(dockNumber)
                response = false; % request is denied
            else
                obj.docks(dockNumber) = true; % mark the dock as free
                response = true; % request is approved
            end
        end
    end
end