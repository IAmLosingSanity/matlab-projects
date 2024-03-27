% Create a SpacePort object with 5 docks
spacePort = lab6(5);

% Request landing at dock 3
landingResponse = spacePort.requestLanding(3);
if landingResponse
    disp('Landing approved at dock 3');
else
    disp('Landing denied at dock 3');
end

% Request takeoff from dock 3
takeoffResponse = spacePort.requestTakeoff(3);
if takeoffResponse
    disp('Takeoff approved from dock 3');
else
    disp('Takeoff denied from dock 3');
end