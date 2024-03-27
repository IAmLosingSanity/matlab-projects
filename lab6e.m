% Create a SpacePort object with 5 docks
% Создание объекта SpacePort с 5 доками
mySpacePort = lab6(5);

% Печать текущего статуса доков
disp('Initial dock status:');
disp(mySpacePort.docks);

% Попытка запросить посадку в док номер 3
landingPermission = mySpacePort.requestLanding(3);
disp(['Request landing at dock 3: ', num2str(landingPermission)]);

% Печать статуса доков после запроса на посадку
disp('Dock status after landing request:');
disp(mySpacePort.docks);

% Попытка запросить взлёт из дока номер 3
takeoffPermission = mySpacePort.requestTakeoff(3);
disp(['Request takeoff from dock 3: ', num2str(takeoffPermission)]);

% Печать статуса доков после запроса на взлёт
disp('Dock status after takeoff request:');
disp(mySpacePort.docks);

% Попытка запросить посадку в несуществующий док номер 6
landingPermission = mySpacePort.requestLanding(6);
disp(['Request landing at dock 6: ', num2str(landingPermission)]);

% Попытка запросить взлёт из свободного дока номер 2
takeoffPermission = mySpacePort.requestTakeoff(2);
disp(['Request takeoff from dock 2: ', num2str(takeoffPermission)]);