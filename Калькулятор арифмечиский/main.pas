unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    back: TButton;
    b6: TButton;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    equalss: TBitBtn;
    btn_sqr: TButton;
    TitleImage: TImage;
    Main_label: TLabel;
    prod: TButton;
    minus: TButton;
    plus: TButton;
    b0: TButton;
    ce: TButton;
    clr: TButton;
    b7: TButton;
    b8: TButton;
    b9: TButton;
    b4: TButton;
    b5: TButton;
    calc_field: TEdit;

    procedure backClick(Sender: TObject);
    procedure clrClick(Sender: TObject);
    procedure ceClick(Sender: TObject);
    procedure Click(Sender: TObject);
    procedure ClickAction(Sender: TObject);


    procedure equalssClick(Sender: TObject);
    procedure btn_sqrClick(Sender: TObject);
    procedure Main_labelClick(Sender: TObject);
    procedure Memo1Change(Sender: TObject);

    procedure minusClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  a, b, c: integer;
  actionn: string;

implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.clrClick(Sender: TObject);
begin
calc_field.text := '';
  a:=0;
  b:=0;
  c:=0;
end;


procedure TForm1.Click(Sender: TObject);
begin
  calc_field.text := calc_field.text + (sender as TButton).caption
end;

procedure TForm1.ClickAction(Sender: TObject);
begin
  if (calc_field.text <> '') and (calc_field.text <> '-') then begin
  a := StrToInt(calc_field.Text);
  calc_field.Clear;
  actionn :=(sender as TButton).caption;
  end;
end;



procedure TForm1.equalssClick(Sender: TObject);
begin
  if (a <> null) and (calc_field.text <> '') and (calc_field.text <> '-') then begin
  b := StrToInt(calc_field.Text);
  if (actionn = '/') and (b = 0) then
  begin
    ShowMessage('Деление на ноль невозможно.');
    calc_field.Clear;
  end
  else
  begin
  calc_field.Clear;
  case actionn of
  '+' : c := a+b;
  '-' : c := a-b;
  '*' : c := a*b;
  end;

  calc_field.Text:= FloatToStr(c);
  end;
  end;
end;


procedure TForm1.minusClick(Sender: TObject);
begin
  if calc_field.text = '' then
    calc_field.text := '-'
  else if calc_field.text <> '-' then
  begin
    a := StrToInt(calc_field.Text);
    calc_field.Clear;
    actionn :=(sender as TButton).caption;
  end;
end;

procedure TForm1.backClick(Sender: TObject);
  var s:string;
begin
   s:=calc_field.text;
    if s <> '' then
    delete(s, length(s),1);
    calc_field.text:=s;
end;

procedure TForm1.ceClick(Sender:TObject);
begin
    calc_field.clear;
end;


procedure TForm1.btn_sqrClick(Sender: TObject);
begin
  if calc_field.text <> '' then begin
   a := StrToInt(calc_field.Text);
   a := sqr(a);
   calc_field.Text:=FloatToStr(a);
   a := 0;
  end;
end;

procedure TForm1.Main_labelClick(Sender: TObject);
begin

end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

end.

