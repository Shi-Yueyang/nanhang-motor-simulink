classdef toggle_system < matlab.System
    % untitled Add summary here
    %
    % This template includes the minimum set of functions required
    % to define a System object with discrete state.

    % Public, tunable properties
    properties
        
    end

    properties (DiscreteState)
        state;
        target;
    end

    % Pre-computed constants
    properties (Access = private)

    end

    methods (Access = protected)
        function setupImpl(obj)
            % Perform one-time calculations, such as computing constants
            
        end

        function toggle = stepImpl(obj,range,d,margin)
            % Implement algorithm. Calculate y as a function of input u and
            % discrete states.
            d = d/range;
            if abs(d-obj.target)<margin
                obj.state = -obj.state;
                obj.target = -obj.target;
            end
            toggle = obj.state;
        end

        function resetImpl(obj)
            % Initialize / reset discrete-state properties
            obj.state = 1;
            obj.target = 1;
        end
    end
end
