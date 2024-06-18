dataTable = readtable('C:\CSharp\AAU\ESD4\project\heterodyneMixing\improvmentOfMixerData\scope_158_500Hz.csv','NumHeaderLines',2); %Reading the data
dataTable = rmmissing(dataTable);

%disp(dataTable); % Displaying the data just to confirm

% Creating a path for the headers
x = categorical(dataTable.Var1); % Convert to categorical
dataTable.Var2 = str2double(dataTable.Var2);
y = table2array(dataTable(:,"Var2"));

bar(x,y);
ax = gca();
ax.XAxis.TickLabelRotation = 45; % <- or whatever angle you want