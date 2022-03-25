function varargout = HAC_PseudoF(varargin)
% HAC_PSEUDOF M-file for HAC_PseudoF.fig
%      HAC_PSEUDOF, by itself, creates a new HAC_PSEUDOF or raises the existing
%      singleton*.
%
%      H = HAC_PSEUDOF returns the handle to a new HAC_PSEUDOF or the handle to
%      the existing singleton*.
%
%      HAC_PSEUDOF('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HAC_PSEUDOF.M with the given input arguments.
%
%      HAC_PSEUDOF('Property','Value',...) creates a new HAC_PSEUDOF or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before HAC_PseudoF_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to HAC_PseudoF_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help HAC_PseudoF

% Last Modified by GUIDE v2.5 09-Oct-2009 23:10:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @HAC_PseudoF_OpeningFcn, ...
                   'gui_OutputFcn',  @HAC_PseudoF_OutputFcn, ...
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


% --- Executes just before HAC_PseudoF is made visible.
function HAC_PseudoF_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to HAC_PseudoF (see VARARGIN)

% Choose default command line output for HAC_PseudoF
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
axes(handles.undip);
imshow('E:/UNDIP/smt 7/Komstat Lanjut/undip.png');



% UIWAIT makes HAC_PseudoF wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = HAC_PseudoF_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in indikator.
function indikator_Callback(hObject, eventdata, handles)
% hObject    handle to indikator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.filename=uigetfile('*.xlsx');
guidata(hObject,handles);
filename=handles.filename;
indikator=xlsread(filename,1,'B1:J35');
handles.indikator=indikator;
guidata(hObject,handles);
indikator=handles.indikator;
set(handles.uitable1,'data',indikator);

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kmo_Callback(hObject, eventdata, handles)
% hObject    handle to kmo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kmo as text
%        str2double(get(hObject,'String')) returns contents of kmo as a double


% --- Executes during object creation, after setting all properties.
function kmo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kmo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function simpulankmo_Callback(hObject, eventdata, handles)
% hObject    handle to simpulankmo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of simpulankmo as text
%        str2double(get(hObject,'String')) returns contents of simpulankmo as a double


% --- Executes during object creation, after setting all properties.
function simpulankmo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to simpulankmo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bartlett_Callback(hObject, eventdata, handles)
% hObject    handle to bartlett (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bartlett as text
%        str2double(get(hObject,'String')) returns contents of bartlett as a double


% --- Executes during object creation, after setting all properties.
function bartlett_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bartlett (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function simpulanbartlett_Callback(hObject, eventdata, handles)
% hObject    handle to simpulanbartlett (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of simpulanbartlett as text
%        str2double(get(hObject,'String')) returns contents of simpulanbartlett as a double


% --- Executes during object creation, after setting all properties.
function simpulanbartlett_CreateFcn(hObject, eventdata, handles)
% hObject    handle to simpulanbartlett (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pseudof_Callback(hObject, eventdata, handles)
% hObject    handle to pseudof (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pseudof as text
%        str2double(get(hObject,'String')) returns contents of pseudof as a double


% --- Executes during object creation, after setting all properties.
function pseudof_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pseudof (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cekasumsi.
function cekasumsi_Callback(hObject, eventdata, handles)
% hObject    handle to cekasumsi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
indikator=handles.indikator;
if (get(handles.popupmenu1,'value')==1)
    indikator=zscore(indikator,0);
    X=indikator;
    X = corrcoef(X);
    iX = inv(X);
    S2 = diag(diag((iX.^-1)));
    AIS = S2*iX*S2; %anti-image covariance matrix
    IS = X+AIS-2*S2; %image covariance matrix
    Dai = diag(diag(sqrt(AIS)));
    IR = inv(Dai)*IS*inv(Dai); %image correlation matrix
    AIR = inv(Dai)*AIS*inv(Dai); %anti-image correlation matrix
    a = sum((AIR - diag(diag(AIR))).^2);
    AA = sum(a);
    b = sum((X - eye(size(X))).^2);
    BB = sum(b);
    MSA = b./(b+a); %measures of sampling adequacy
    AIR = AIR-eye(size(AIR))+diag(MSA);
    N = BB;
    D = AA+BB;
    kmo = N/D;
    set(handles.kmo,'string',kmo)
    if kmo>0.5
        set(handles.simpulankmo,'string','Asumsi Terpenuhi')
    else
        set(handles.simpulankmo,'string','Asumsi Tidak Terpenuhi')
    end
    [n p]=size(X);
    X2 = -1*[(n-1)-(1/6)*((2*p)+5)]*log(det(X));  %approximation to chi-square statistic
    v = (1/2)*(p^2-p);  %degrees of freeedom
    df = v;
    P = 1-chi2cdf(X2,v);  %Probability that null Ho: is true.
    set(handles.bartlett,'string',P)
    if P>0.05
        set(handles.simpulanbartlett,'string','Asumsi Terpenuhi')
    else
        set(handles.simpulanbartlett,'string','Asumsi Tidak Terpenuhi')
    end
end
if (get(handles.popupmenu1,'value')==2)
    X=indikator;
    X = corrcoef(X);
    iX = inv(X);
    S2 = diag(diag((iX.^-1)));
    AIS = S2*iX*S2; %anti-image covariance matrix
    IS = X+AIS-2*S2; %image covariance matrix
    Dai = diag(diag(sqrt(AIS)));
    IR = inv(Dai)*IS*inv(Dai); %image correlation matrix
    AIR = inv(Dai)*AIS*inv(Dai); %anti-image correlation matrix
    a = sum((AIR - diag(diag(AIR))).^2);
    AA = sum(a);
    b = sum((X - eye(size(X))).^2);
    BB = sum(b);
    MSA = b./(b+a); %measures of sampling adequacy
    AIR = AIR-eye(size(AIR))+diag(MSA);
    N = BB;
    D = AA+BB;
    kmo = N/D;
    set(handles.kmo,'string',kmo)
    if kmo>0.5
        set(handles.simpulankmo,'string','Asumsi Terpenuhi')
    else
        set(handles.simpulankmo,'string','Asumsi Tidak Terpenuhi')
    end
    [n p]=size(X);
    X2 = -1*[(n-1)-(1/6)*((2*p)+5)]*log(det(X));  %approximation to chi-square statistic
    v = (1/2)*(p^2-p);  %degrees of freeedom
    df = v;
    P = 1-chi2cdf(X2,v);  %Probability that null Ho: is true.
    set(handles.bartlett,'string',P)
    if P>0.05
        set(handles.simpulanbartlett,'string','Asumsi Terpenuhi')
    else
        set(handles.simpulanbartlett,'string','Asumsi Tidak Terpenuhi')
    end
end

% --- Executes on button press in cekhasil.
function cekhasil_Callback(hObject, eventdata, handles)
% hObject    handle to cekhasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
indikator=handles.indikator;
if (get(handles.popupmenu1,'value')==1)
    indikator=zscore(indikator,0);
    X=indikator;
    datanew=xlswrite('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',indikator,2,'A1:I35');
    jmlk=str2num(get(handles.jml,'string'));
if(get(handles.popupmenu2,'value')==1)
    jarak=pdist(X)
    hirarki=linkage(jarak,'single')
    hasil=cluster(hirarki,jmlk);
    datanew1=xlswrite('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',hasil,2,'J1:J35');
    klaster=xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',2,'J1:J35');
    set(handles.uitable2,'Data',klaster);
    axes(handles.dendogram)
    dendrogram(hirarki,'colorthreshold','default')
    title('Dendogram Metode Single Linkage')
    p= xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',2,'A1:J35');
    n=length(p);
        x=p(:,1:9);
        for j=1
            k=max(p(:,j+9));
            ssw=0;
            sst=0;
            for i=1:k
                anggota=[p(1:n,j+9)]==i;
                dataC=x(anggota,:);
                na=size(dataC,1);
                m=mean(x);
                rm=repmat(m,na,1);
                dm=(dataC-rm).^2;
                jum=sum(dm);
                sstotal=sum(jum);
                sst=sst+sstotal;
                rata=mean(dataC,1);
                kurang=(dataC-repmat(rata,na,1)).^2;
                total=sum(sum(kurang));
                ssw=ssw+total;
            end
            ssb=(sst-ssw);
            rsq=ssb/sst;
            msb=rsq/(k-1);
            msw=(1-rsq)/(n-k);
            pf=(msb/msw);
            set(handles.pseudof,'string',pf);
        end
end
if(get(handles.popupmenu2,'value')==2)
    jarak=pdist(X)
    hirarki=linkage(jarak,'complete')
    hasil=cluster(hirarki,jmlk);
    datanew1=xlswrite('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',hasil,2,'J1:J35');
    klaster=xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',2,'J1:J35');
    set(handles.uitable2,'Data',klaster);
    axes(handles.dendogram)
    dendrogram(hirarki,'colorthreshold','default')
    title('Dendogram Metode Complete Linkage')
    p= xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',2,'A1:J35');
    n=length(p);
        x=p(:,1:9);
        for j=1
            k=max(p(:,j+9));
            ssw=0;
            sst=0;
            for i=1:k
                anggota=[p(1:n,j+9)]==i;
                dataC=x(anggota,:);
                na=size(dataC,1);
                m=mean(x);
                rm=repmat(m,na,1);
                dm=(dataC-rm).^2;
                jum=sum(dm);
                sstotal=sum(jum);
                sst=sst+sstotal;
                rata=mean(dataC,1);
                kurang=(dataC-repmat(rata,na,1)).^2;
                total=sum(sum(kurang));
                ssw=ssw+total;
            end
            ssb=(sst-ssw);
            rsq=ssb/sst;
            msb=rsq/(k-1);
            msw=(1-rsq)/(n-k);
            pf=(msb/msw);
            set(handles.pseudof,'string',pf);
        end
end
if(get(handles.popupmenu2,'value')==3)
    jarak=pdist(X);
    hirarki=linkage(jarak,'average')
    hasil=cluster(hirarki,jmlk);
    datanew1=xlswrite('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',hasil,2,'J1:J35');
    klaster=xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',2,'J1:J35');
    set(handles.uitable2,'Data',klaster);
    axes(handles.dendogram)
    dendrogram(hirarki,'colorthreshold','default')
    title('Dendogram Metode Average Linkage')
    p= xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',2,'A1:J35');
    n=length(p);
        x=p(:,1:9);
        for j=1
            k=max(p(:,j+9));
            ssw=0;
            sst=0;
            for i=1:k
                anggota=[p(1:n,j+9)]==i;
                dataC=x(anggota,:);
                na=size(dataC,1);
                m=mean(x);
                rm=repmat(m,na,1);
                dm=(dataC-rm).^2;
                jum=sum(dm);
                sstotal=sum(jum);
                sst=sst+sstotal;
                rata=mean(dataC,1);
                kurang=(dataC-repmat(rata,na,1)).^2;
                total=sum(sum(kurang));
                ssw=ssw+total;
            end
            ssb=(sst-ssw);
            rsq=ssb/sst;
            msb=rsq/(k-1);
            msw=(1-rsq)/(n-k);
            pf=(msb/msw);
            set(handles.pseudof,'string',pf);
        end
end
if(get(handles.popupmenu2,'value')==4)
    jarak=pdist(X)
    hirarki=linkage(jarak,'centroid')
    hasil=cluster(hirarki,jmlk);
    datanew1=xlswrite('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',hasil,2,'J1:J35');
    klaster=xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',2,'J1:J35');
    set(handles.uitable2,'Data',klaster);
    axes(handles.dendogram)
    dendrogram(hirarki,'colorthreshold','default')
    title('Dendogram Metode Centroid')
    p= xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',2,'A1:J35');
    n=length(p);
        x=p(:,1:9);
        for j=1
            k=max(p(:,j+9));
            ssw=0;
            sst=0;
            for i=1:k
                anggota=[p(1:n,j+9)]==i;
                dataC=x(anggota,:);
                na=size(dataC,1);
                m=mean(x);
                rm=repmat(m,na,1);
                dm=(dataC-rm).^2;
                jum=sum(dm);
                sstotal=sum(jum);
                sst=sst+sstotal;
                rata=mean(dataC,1);
                kurang=(dataC-repmat(rata,na,1)).^2;
                total=sum(sum(kurang));
                ssw=ssw+total;
            end
            ssb=(sst-ssw);
            rsq=ssb/sst;
            msb=rsq/(k-1);
            msw=(1-rsq)/(n-k);
            pf=(msb/msw);
            set(handles.pseudof,'string',pf);
        end
end
if(get(handles.popupmenu2,'value')==5)
    jarak=pdist(X)
    hirarki=linkage(jarak,'ward')
    hasil=cluster(hirarki,jmlk);
    datanew1=xlswrite('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',hasil,2,'J1:J35');
    klaster=xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',2,'J1:J35');
    set(handles.uitable2,'Data',klaster);
    axes(handles.dendogram)
    dendrogram(hirarki,'colorthreshold','default')
    title('Dendogram Metode Ward')
    p= xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',2,'A1:J35');
    n=length(p);
        x=p(:,1:9);
        for j=1
            k=max(p(:,j+9));
            ssw=0;
            sst=0;
            for i=1:k
                anggota=[p(1:n,j+9)]==i;
                dataC=x(anggota,:);
                na=size(dataC,1);
                m=mean(x);
                rm=repmat(m,na,1);
                dm=(dataC-rm).^2;
                jum=sum(dm);
                sstotal=sum(jum);
                sst=sst+sstotal;
                rata=mean(dataC,1);
                kurang=(dataC-repmat(rata,na,1)).^2;
                total=sum(sum(kurang));
                ssw=ssw+total;
            end
            ssb=(sst-ssw);
            rsq=ssb/sst;
            msb=rsq/(k-1);
            msw=(1-rsq)/(n-k);
            pf=(msb/msw);
            set(handles.pseudof,'string',pf);
        end
end    
end
if (get(handles.popupmenu1,'value')==2)
    X=indikator;
    jmlk=str2num(get(handles.jml,'string'));
if(get(handles.popupmenu2,'value')==1)
    jarak=pdist(X)
    hirarki=linkage(jarak,'single')
    hasil=cluster(hirarki,jmlk);
    datanew1=xlswrite('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',hasil,1,'K1:K35');
    klaster=xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',1,'K1:K35');
    set(handles.uitable2,'Data',klaster);
    axes(handles.dendogram)
    dendrogram(hirarki,'colorthreshold','default')
    title('Dendogram Metode Single Linkage')
    p= xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',1,'B1:K35');
    n=length(p);
        x=p(:,1:9);
        for j=1
            k=max(p(:,j+9));
            ssw=0;
            sst=0;
            for i=1:k
                anggota=[p(1:n,j+9)]==i;
                dataC=x(anggota,:);
                na=size(dataC,1);
                m=mean(x);
                rm=repmat(m,na,1);
                dm=(dataC-rm).^2;
                jum=sum(dm);
                sstotal=sum(jum);
                sst=sst+sstotal;
                rata=mean(dataC,1);
                kurang=(dataC-repmat(rata,na,1)).^2;
                total=sum(sum(kurang));
                ssw=ssw+total;
            end
            ssb=(sst-ssw);
            rsq=ssb/sst;
            msb=rsq/(k-1);
            msw=(1-rsq)/(n-k);
            pf=(msb/msw);
            set(handles.pseudof,'string',pf);
        end
end
if(get(handles.popupmenu2,'value')==2)
    jarak=pdist(X)
    hirarki=linkage(jarak,'complete')
    hasil=cluster(hirarki,jmlk);
    datanew1=xlswrite('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',hasil,1,'K1:K35');
    klaster=xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',1,'K1:K35');
    set(handles.uitable2,'Data',klaster);
    axes(handles.dendogram)
    dendrogram(hirarki,'colorthreshold','default')
    title('Dendogram Metode Complete Linkage')
    p= xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',1,'B1:K35');
    n=length(p);
        x=p(:,1:9);
        for j=1
            k=max(p(:,j+9));
            ssw=0;
            sst=0;
            for i=1:k
                anggota=[p(1:n,j+9)]==i;
                dataC=x(anggota,:);
                na=size(dataC,1);
                m=mean(x);
                rm=repmat(m,na,1);
                dm=(dataC-rm).^2;
                jum=sum(dm);
                sstotal=sum(jum);
                sst=sst+sstotal;
                rata=mean(dataC,1);
                kurang=(dataC-repmat(rata,na,1)).^2;
                total=sum(sum(kurang));
                ssw=ssw+total;
            end
            ssb=(sst-ssw);
            rsq=ssb/sst;
            msb=rsq/(k-1);
            msw=(1-rsq)/(n-k);
            pf=(msb/msw);
            set(handles.pseudof,'string',pf);
        end
end
if(get(handles.popupmenu2,'value')==3)
    jarak=pdist(X)
    hirarki=linkage(jarak,'average')
    hasil=cluster(hirarki,jmlk);
    datanew1=xlswrite('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',hasil,1,'K1:K35');
    klaster=xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',1,'K1:K35');
    set(handles.uitable2,'Data',klaster);
    axes(handles.dendogram)
    dendrogram(hirarki,'colorthreshold','default')
    title('Dendogram Metode Average Linkage')
    p= xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',1,'B1:K35');
    n=length(p);
        x=p(:,1:9);
        for j=1
            k=max(p(:,j+9));
            ssw=0;
            sst=0;
            for i=1:k
                anggota=[p(1:n,j+9)]==i;
                dataC=x(anggota,:);
                na=size(dataC,1);
                m=mean(x);
                rm=repmat(m,na,1);
                dm=(dataC-rm).^2;
                jum=sum(dm);
                sstotal=sum(jum);
                sst=sst+sstotal;
                rata=mean(dataC,1);
                kurang=(dataC-repmat(rata,na,1)).^2;
                total=sum(sum(kurang));
                ssw=ssw+total;
            end
            ssb=(sst-ssw);
            rsq=ssb/sst;
            msb=rsq/(k-1);
            msw=(1-rsq)/(n-k);
            pf=(msb/msw);
            set(handles.pseudof,'string',pf);
        end
end
if(get(handles.popupmenu2,'value')==4)
    jarak=pdist(X)
    hirarki=linkage(jarak,'centroid')
    hasil=cluster(hirarki,jmlk);
    datanew1=xlswrite('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',hasil,1,'K1:K35');
    klaster=xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',1,'K1:K35');
    set(handles.uitable2,'Data',klaster);
    axes(handles.dendogram)
    dendrogram(hirarki,'colorthreshold','default')
    title('Dendogram Metode Centroid')
    p= xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',1,'B1:K35');
    n=length(p);
        x=p(:,1:9);
        for j=1
            k=max(p(:,j+9));
            ssw=0;
            sst=0;
            for i=1:k
                anggota=[p(1:n,j+9)]==i;
                dataC=x(anggota,:);
                na=size(dataC,1);
                m=mean(x);
                rm=repmat(m,na,1);
                dm=(dataC-rm).^2;
                jum=sum(dm);
                sstotal=sum(jum);
                sst=sst+sstotal;
                rata=mean(dataC,1);
                kurang=(dataC-repmat(rata,na,1)).^2;
                total=sum(sum(kurang));
                ssw=ssw+total;
            end
            ssb=(sst-ssw);
            rsq=ssb/sst;
            msb=rsq/(k-1);
            msw=(1-rsq)/(n-k);
            pf=(msb/msw);
            set(handles.pseudof,'string',pf);
        end
end
if(get(handles.popupmenu2,'value')==5)
    jarak=pdist(X)
    hirarki=linkage(jarak,'ward')
    hasil=cluster(hirarki,jmlk);
    datanew1=xlswrite('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',hasil,1,'K1:K35');
    klaster=xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',1,'K1:K35');
    set(handles.uitable2,'Data',klaster);
    axes(handles.dendogram)
    dendrogram(hirarki,'colorthreshold','default')
    title('Dendogram Metode Ward')
    p= xlsread('C:/Users/Acer/OneDrive/Documents/MATLAB/HIBAHFSM.xlsx',1,'B1:K35');
    n=length(p);
        x=p(:,1:9);
        for j=1
            k=max(p(:,j+9));
            ssw=0;
            sst=0;
            for i=1:k
                anggota=[p(1:n,j+9)]==i;
                dataC=x(anggota,:);
                na=size(dataC,1);
                m=mean(x);
                rm=repmat(m,na,1);
                dm=(dataC-rm).^2;
                jum=sum(dm);
                sstotal=sum(jum);
                sst=sst+sstotal;
                rata=mean(dataC,1);
                kurang=(dataC-repmat(rata,na,1)).^2;
                total=sum(sum(kurang));
                ssw=ssw+total;
            end
            ssb=(sst-ssw);
            rsq=ssb/sst;
            msb=rsq/(k-1);
            msw=(1-rsq)/(n-k);
            pf=(msb/msw);
            set(handles.pseudof,'string',pf);
        end
end    
end


function jml_Callback(hObject, eventdata, handles)
% hObject    handle to jml (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jml as text
%        str2double(get(hObject,'String')) returns contents of jml as a double


% --- Executes during object creation, after setting all properties.
function jml_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jml (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see UITABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on mouse press over figure background.
function figure1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to kmo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kmo as text
%        str2double(get(hObject,'String')) returns contents of kmo as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kmo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to simpulankmo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of simpulankmo as text
%        str2double(get(hObject,'String')) returns contents of simpulankmo as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to simpulankmo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to bartlett (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bartlett as text
%        str2double(get(hObject,'String')) returns contents of bartlett as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bartlett (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to simpulanbartlett (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of simpulanbartlett as text
%        str2double(get(hObject,'String')) returns contents of simpulanbartlett as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to simpulanbartlett (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object deletion, before destroying properties.
function text2_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
