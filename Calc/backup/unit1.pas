unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1; x,y,z:real; l:byte;

implementation

{$R *.lfm}

{ TForm1 }

uses Unit2,Unit3;
procedure TForm1.MenuItem4Click(Sender: TObject);
begin
Form1.Hide;
Form2.Show;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
Form1.Hide;
Form3.Show;
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
var z: integer;
begin
z:= MessageDLG('Закрыть приложение? ', mtInformation, [mbOk,mbCancel],0);
  case z of
  mrOk: Form1.close;
  mrCancel: exit;
  end;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'0';
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
   x:=strtofloat(Edit1.Text);
   x:=-x; Edit1.Text:=floattostr(x);
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+',';
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
x:=strtofloat(Edit1.Text);
L:=1;
Edit1.Clear;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
x:=strtofloat(Edit1.Text);
L:=2;
Edit1.Clear;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
x:=strtofloat(Edit1.Text);
L:=3;
Edit1.Clear;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
x:=strtofloat(Edit1.Text);
L:=4;
Edit1.Clear;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
x:=strtofloat(Edit1.Text);
L:=5;
Edit1.Clear;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
x:=strtofloat(Edit1.Text);
l:=6;
Edit1.Clear;
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
case l of
1: begin y:=strtofloat(Edit1.Text); z:=x+y; Edit1.Text:=floattostr(z); end;
2: begin y:=strtofloat(Edit1.Text); z:=x-y; Edit1.Text:=floattostr(z); end;
3: begin y:=strtofloat(Edit1.Text); z:=x*y; Edit1.Text:=floattostr(z); end;
4: begin y:=strtofloat(Edit1.Text); z:=x/y; Edit1.Text:=floattostr(z); end;
5: begin y:=strtofloat(Edit1.Text); z:=exp(ln(x)*y); Edit1.Text:=floattostr(z); end;
6: begin y:=strtofloat(Edit1.Text); z:=exp(ln(x)/y); Edit1.Text:=floattostr(z); end
else Edit1.Text:='Ошибка';
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'1';
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
  Edit1.Clear;
x:=0; y:=0; z:=0;
end;

procedure TForm1.Button21Click(Sender: TObject);
var l:byte;
s:string;
begin
s:=Edit1.Text;
l:=length(s);
delete(s,l,1);
Edit1.Text:=s;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'2';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'3';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'4';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'5';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'6';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'7';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'8';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'9';
end;






end.

