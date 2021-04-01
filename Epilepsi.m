
%% Read ECG data
%Indsæt den filsti, hvor data er opbevaret
filepath = 'C:\Users\Bruger\OneDrive - Danmarks Tekniske Universitet\Personal portable health technologies\7 week projekt\ePatch data from Aarhus to Alabama\ePatch data from Aarhus to Alabama\Patients ePatch data';

files = dir(fullfile(filepath, '**/*.tdms'));
nfiles = length(files);
Patientdata  = cell(nfiles,2);
for i = 1 : nfiles
   Output = TDMS_getStruct(fullfile(files(i).folder,files(i).name));
   Patientdata{i,2} = Output.Untitled.EKG.data;
   Patientdata{i,1} = files(i).name;
end

 