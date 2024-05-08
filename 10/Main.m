% Main.m
names = {'Александр', 'Андрей', 'Анастасия', 'Ирина', 'Наталья', 'Павел', 'Роман', 'Светлана', 'Сергей', 'Татьяна'};
peopleTypes = {@Formalist, @Informal, @Realist};
people = cell(1, 5);

% Создаем объекты людей
for i = 1:5
    name = names{randi(numel(names))};
    age = randi([20, 40]);
    typeConstructor = peopleTypes{randi(numel(peopleTypes))};
    people{i} = typeConstructor(name, age);
end

% Пусть все расскажут о себе
for i = 1:numel(people)
    disp(people{i}.introduce());
end

% Пусть все поздороваются друг с другом
for i = 1:numel(people)
    for j = i+1:numel(people)
        disp([people{i}.Name ': ' people{i}.greet(people{j})]);
        disp([people{j}.Name ': ' people{j}.greet(people{i})]);
    end
end