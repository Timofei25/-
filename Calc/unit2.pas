unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  ExtCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2; g1,g2:integer; x:real;

implementation

{$R *.lfm}

uses Unit1,Unit3;
procedure TForm2.MenuItem2Click(Sender: TObject);
begin
Form2.Hide;
Form1.Show;
end;

procedure TForm2.MenuItem4Click(Sender: TObject);
begin
  Form2.Hide;
  Form3.Show;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);
  if (g1=0) or (g2=0) then Edit1.Text:='Ошибка' else if g1=g2 then Edit1.Text:=floattostr(x) else
  if (g1=1) and (g2=2) then begin x:=x/100; Edit1.Text:=floattostr(x); end else
  if (g1=1) and (g2=3) then begin x:=x/2.54; Edit1.Text:=floattostr(x); end else
  if (g1=1) and (g2=4) then begin x:=x/30.48; Edit1.Text:=floattostr(x); end else
  if (g1=1) and (g2=5) then begin x:=x/91.44; Edit1.Text:=floattostr(x); end else
  if (g1=2) and (g2=1) then begin x:=x*100; Edit1.Text:=floattostr(x); end else
  if (g1=2) and (g2=3) then begin x:=x/0.0254; Edit1.Text:=floattostr(x); end else
  if (g1=2) and (g2=4) then begin x:=x/0.3048; Edit1.Text:=floattostr(x); end else
  if (g1=2) and (g2=5) then begin x:=x/0.9144; Edit1.Text:=floattostr(x); end else
  if (g1=3) and (g2=1) then begin x:=x*2.54; Edit1.Text:=floattostr(x); end else
  if (g1=3) and (g2=2) then begin x:=x*0.0254; Edit1.Text:=floattostr(x); end else
  if (g1=3) and (g2=4) then begin x:=x/12; Edit1.Text:=floattostr(x); end else
  if (g1=3) and (g2=5) then begin x:=x/36; Edit1.Text:=floattostr(x); end else
  if (g1=4) and (g2=1) then begin x:=x*30.48; Edit1.Text:=floattostr(x); end else
  if (g1=4) and (g2=2) then begin x:=x*0.3048; Edit1.Text:=floattostr(x); end else
  if (g1=4) and (g2=3) then begin x:=x*12; Edit1.Text:=floattostr(x); end else
  if (g1=4) and (g2=5) then begin x:=x/3; Edit1.Text:=floattostr(x); end else
  if (g1=5) and (g2=1) then begin x:=x*91.44; Edit1.Text:=floattostr(x); end else
  if (g1=5) and (g2=2) then begin x:=x*0.9144; Edit1.Text:=floattostr(x); end else
  if (g1=5) and (g2=3) then begin x:=x*36; Edit1.Text:=floattostr(x); end else
  if (g1=5) and (g2=4) then begin x:=x*3; Edit1.Text:=floattostr(x); end else Edit1.Text:='Ошибка';
end;

procedure TForm2.MenuItem1Click(Sender: TObject);
begin

end;


procedure TForm2.MenuItem3Click(Sender: TObject);
var z: integer;
begin
z:= MessageDLG('Закрыть приложение? ', mtInformation, [mbOk,mbCancel],0);
  case z of
  mrOk: Form2.close;
  mrCancel: exit;
  end;
end;




procedure TForm2.RadioGroup1Click(Sender: TObject);
begin
  with Sender as TRadioGroup do
    case Items[ItemIndex] of
      'Сантиметр' : g1:=1;
      'Метр' : g1:=2;
      'Дюйм' : g1:=3;
      'Фут' : g1:=4;
      'Ярд' : g1:=5;
    end;
end;

procedure TForm2.RadioGroup2Click(Sender: TObject);
begin
 with Sender as TRadioGroup do
  case Items[ItemIndex] of
    'Сантиметр' : g2:=1;
    'Метр' : g2:=2;
    'Дюйм' : g2:=3;
    'Фут' : g2:=4;
    'Ярд' : g2:=5;
  end;
end;








end.

