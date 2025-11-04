function varargout = CitraAppfig(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CitraAppfig_OpeningFcn, ...
                   'gui_OutputFcn',  @CitraAppfig_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before CitraAppfig is made visible.
function CitraAppfig_OpeningFcn(hObject, eventdata, handles, varargin)
set(handles.axes3, 'Visible', 'off');
set(handles.togglebutton2, 'Visible', 'of'); 
set(handles.togglebutton4, 'Visible', 'of'); 
set(handles.axes2, 'XTick', [], 'YTick', []);
set(handles.axes2, 'XColor', 'none', 'YColor', 'none'); 
box(handles.axes2, 'off');
set(handles.axes1, 'XTick', [], 'YTick', []);
set(handles.axes1, 'XColor', 'none', 'YColor', 'none'); 
box(handles.axes1, 'off'); 


% UIWAIT makes CitraAppfig wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CitraAppfig_OutputFcn(hObject, eventdata, handles) 
% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)



% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
 set(handles.axes1, 'Visible', 'off');
    set(handles.axes2, 'Visible', 'off');
    set(handles.axes3, 'Visible', 'on');
set(handles.axes3, 'XTick', [], 'YTick', []);
set(handles.axes3, 'XColor', 'none', 'YColor', 'none'); 
box(handles.axes3, 'off'); 
set(handles.togglebutton2, 'Visible', 'on'); 
set(handles.togglebutton4, 'Visible', 'on'); 


guidata(hObject, handles);
movegui(handles.figure1, 'center'); 
[nama_file,nama_path] = uigetfile({'*.jpg';'*.bmp';'*.png';'*.tif'},...
    'Buka Citra');
if ~isequal(nama_file,0)
    handles.data1 = imread(fullfile(nama_path,nama_file));
    guidata(hObject,handles);
    axes(handles.axes3)
    imshow(handles.data1);
    title('Preview Citra');
    set(handles.togglebutton1, 'Visible', 'off'); 
    set(handles.uipanel1, 'Visible', 'off');
else
    return
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
set(handles.radiobutton2,'value',0);
set(handles.radiobutton3,'value',0);
set(handles.radiobutton4,'value',0);
set(handles.radiobutton5,'value',0);
citra = handles.data1;
IR = citra(:,:,1);
IG = citra(:,:,2);
IB = citra(:,:,3);
axes(handles.axes1)
imshow(cat(3,IR,IG.*0,IB.*0));
title('Kanal Merah');
axes(handles.axes2)
imhist(IR);
title('Histogram Kanal Merah');


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
set(handles.radiobutton1,'value',0);
set(handles.radiobutton3,'value',0);
set(handles.radiobutton4,'value',0);
set(handles.radiobutton5,'value',0);
citra = handles.data1;
IR = citra(:,:,1);
IG = citra(:,:,2);
IB = citra(:,:,3);
axes(handles.axes1)
imshow(cat(3,IR.*0,IG,IB.*0));
title('Kanal Hijau');
axes(handles.axes2)
imhist(IG);
title('Histogram Kanal Hijau');



% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
set(handles.radiobutton1,'value',0);
set(handles.radiobutton2,'value',0);
set(handles.radiobutton4,'value',0);
set(handles.radiobutton5,'value',0);
citra = handles.data1;
IR = citra(:,:,1);
IG = citra(:,:,2);
IB = citra(:,:,3);
axes(handles.axes1)
imshow(cat(3,IR.*0,IG.*0,IB));
title('Kanal Biru');
axes(handles.axes2)
imhist(IB);
title('Histogram Kanal Biru');



% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
set(handles.radiobutton1,'value',0);
set(handles.radiobutton2,'value',0);
set(handles.radiobutton3,'value',0);
set(handles.radiobutton5,'value',0);
citra = handles.data1;
gray = rgb2gray(citra);
axes(handles.axes1)
imshow(gray);
title('Kanal Grayscale');
axes(handles.axes2)
imhist(gray);
title('Histogram Grayscale');



% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
set(handles.radiobutton1,'value',0);
set(handles.radiobutton2,'value',0);
set(handles.radiobutton3,'value',0);
set(handles.radiobutton4,'value',0);
citra = handles.data1;
greyScale = rgb2gray(citra);
biner = imbinarize(greyScale);
axes(handles.axes1)
imshow(biner);
title('Kanal Biner');
axes(handles.axes2)
imhist(biner);
title('Histogram Biner');



% --- Executes during object creation, after setting all properties.
function uipanel5_CreateFcn(hObject, eventdata, handles)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in togglebutton2.
function togglebutton2_Callback(hObject, eventdata, handles)
set(handles.axes1, 'Visible', 'on');
    set(handles.axes2, 'Visible', 'on');
    set(handles.axes3, 'Visible', 'of');
    cla(handles.axes3);
    set(handles.axes3, 'Visible', 'off');
title(handles.axes3, ''); 
set(handles.togglebutton2, 'Visible', 'off');  
set(handles.togglebutton4, 'Visible', 'off'); 
set(handles.togglebutton1, 'Visible', 'on'); 
set(handles.uipanel1, 'Visible', 'on'); 

function togglebutton4_Callback(hObject, eventdata, handles)
 axes(handles.axes3);
    frame = getframe(handles.axes3);      
    img = frame.cdata;                    
    axes(handles.axes1);
    imshow(img, 'Parent', handles.axes1);
    title(handles.axes1, 'Citra Asli');
    cla(handles.axes3);
    set(handles.axes3, 'Visible', 'off');
    title(handles.axes3, '');
    set(handles.togglebutton4, 'Visible', 'off');
    set(handles.togglebutton2, 'Visible', 'off');
    set(handles.togglebutton1, 'Visible', 'on'); 
    set(handles.uipanel1, 'Visible', 'on'); 
    handles.data1 = img;
    guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function text4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function uipanel1_Callback(hObject, eventdata, handles)
