unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  ExtCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
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
  Form3: TForm3; l1,l2:integer; x:Extended;

implementation

{$R *.lfm}

{ TForm3 }

uses Unit1,Unit2;


procedure TForm3.MenuItem2Click(Sender: TObject);
begin
  Form3.Hide;
  Form1.Show;
end;



procedure TForm3.MenuItem3Click(Sender: TObject);
var z: integer;
begin
z:= MessageDLG('Закрыть приложение? ', mtInformation, [mbOk,mbCancel],0);
  case z of
  mrOk: Form3.close;
  mrCancel: exit;
  end;
end;

procedure TForm3.MenuItem4Click(Sender: TObject);
begin
  Form3.Hide;
  Form2.Show;
end;


procedure TForm3.RadioGroup1Click(Sender: TObject);
begin
  with Sender as TRadioGroup do
    case Items[ItemIndex] of
      'Сантиметр³' : l1:=1;
      'Метр³' : l1:=2;
      'Дюйм³' : l1:=3;
      'Фут³' : l1:=4;
      'Ярд³' : l1:=5;
    end;
end;

procedure TForm3.RadioGroup2Click(Sender: TObject);
begin
 with Sender as TRadioGroup do
  case Items[ItemIndex] of
    'Сантиметр³' : l2:=1;
    'Метр³' : l2:=2;
    'Дюйм³' : l2:=3;
    'Фут³' : l2:=4;
    'Ярд³' : l2:=5;
  end;
end;


 procedure TForm3.Button1Click(Sender: TObject);
begin
 x:=strtofloat(Edit1.Text);
 if (l1=0) or (l2=0) then Edit1.Text:='Ошибка' else if l1=l2 then Edit1.Text:=floattostr(x) else
 if (l1=1) and (l2=2) then begin x:=x/1000000; Edit1.Text:=floattostr(x); end else
 if (l1=1) and (l2=3) then begin x:=x/16.387064; Edit1.Text:=floattostr(x); end else
 if (l1=1) and (l2=4) then begin x:=x/28316.846592; Edit1.Text:=floattostr(x); end else
 if (l1=1) and (l2=5) then begin x:=x/764554.857984; Edit1.Text:=floattostr(x); end else
 if (l1=2) and (l2=1) then begin x:=x*1000000; Edit1.Text:=floattostr(x); end else
 if (l1=2) and (l2=3) then begin x:=x/0.000016387064; Edit1.Text:=floattostr(x); end else
 if (l1=2) and (l2=4) then begin x:=x/0.028316846592; Edit1.Text:=floattostr(x); end else
 if (l1=2) and (l2=5) then begin x:=x/0.764554857984; Edit1.Text:=floattostr(x); end else
 if (l1=3) and (l2=1) then begin x:=x*16.387064; Edit1.Text:=floattostr(x); end else
 if (l1=3) and (l2=2) then begin x:=x*0.000016387064; Edit1.Text:=floattostr(x); end else
 if (l1=3) and (l2=4) then begin x:=x/1728; Edit1.Text:=floattostr(x); end else
 if (l1=3) and (l2=5) then begin x:=x/46656; Edit1.Text:=floattostr(x); end else
 if (l1=4) and (l2=1) then begin x:=x*28316.846592; Edit1.Text:=floattostr(x); end else
 if (l1=4) and (l2=2) then begin x:=x*0.028316846592; Edit1.Text:=floattostr(x); end else
 if (l1=4) and (l2=3) then begin x:=x*1728; Edit1.Text:=floattostr(x); end else
 if (l1=4) and (l2=5) then begin x:=x/27; Edit1.Text:=floattostr(x); end else
 if (l1=5) and (l2=1) then begin x:=x*764554.857984; Edit1.Text:=floattostr(x); end else
 if (l1=5) and (l2=2) then begin x:=x*0.764554857984; Edit1.Text:=floattostr(x); end else
 if (l1=5) and (l2=3) then begin x:=x*46656; Edit1.Text:=floattostr(x); end else
 if (l1=5) and (l2=4) then begin x:=x*27; Edit1.Text:=floattostr(x); end else Edit1.Text:='Ошибка';
end;

procedure TForm3.MenuItem1Click(Sender: TObject);
begin

end;


end.

