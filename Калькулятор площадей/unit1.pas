unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Math,
  LCLType, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button_Rectangle: TButton;
    Button_Square: TButton;
    Button_Triangle: TButton;
    Button_Circle: TButton;
    Button_Parallelogram: TButton;
    Button_Trapezoid: TButton;
    Rectangle_Length_Edit: TEdit;
    Side_Parallelogram_Edit: TEdit;
    Answer_Circle: TEdit;
    Height_Parallelogram_Edit: TEdit;
    Answer_Parallelogram: TEdit;
    StaticText: TStaticText;
    Upper_Side_Trapezoid_Edit: TEdit;
    Height_Trapezoid_Edit: TEdit;
    Answer_Trapezoid: TEdit;
    Lower_Side_Trapezoid_Edit: TEdit;
    Width_Rectangle_Edit: TEdit;
    Answer_Rectangle: TEdit;
    Side_Square_Edit: TEdit;
    Base_Triangle_Edit: TEdit;
    Answer_Square: TEdit;
    Height_Triangle_Edit: TEdit;
    Answer_Triangle: TEdit;
    Radius_Circle_Edit: TEdit;
    Answer1: TLabel;
    Answer2: TLabel;
    Answer3: TLabel;
    Answer4: TLabel;
    Answer5: TLabel;
    Answer6: TLabel;
    Text_Rectangle: TLabel;
    Radius_Text: TLabel;
    Parallelogram_Text: TLabel;
    Side_Parallelogram_Text: TLabel;
    Height_Parallelogram_Text: TLabel;
    Trapezoid_Text: TLabel;
    Upper_Side_Trapezoid_Text: TLabel;
    Height_Trapezoid_Text: TLabel;
    Lower_Side_Trapezoid_Text: TLabel;
    Length_Text: TLabel;
    Width_Text: TLabel;
    Square_Text: TLabel;
    Side_Square_Text: TLabel;
    Triangle_Text: TLabel;
    Base_Text: TLabel;
    Height_Text: TLabel;
    Circle_Text: TLabel;
    procedure Button_RectangleClick(Sender: TObject);
    procedure Button_RectangleKeyPress(Sender: TObject; var Key: char);
    procedure Button_SquareClick(Sender: TObject);
    procedure Button_TriangleClick(Sender: TObject);
    procedure Button_CircleClick(Sender: TObject);
    procedure Button_ParallelogramClick(Sender: TObject);
    procedure Button_TrapezoidClick(Sender: TObject);
    procedure Rectangle_Length_EditKeyPress(Sender: TObject; var Key: char);
    procedure Width_Rectangle_EditKeyPress(Sender: TObject; var Key: char);
    procedure Side_Square_EditKeyPress(Sender: TObject; var Key: char);
    procedure Base_Triangle_EditKeyPress(Sender: TObject; var Key: char);
    procedure Height_Triangle_EditKeyPress(Sender: TObject; var Key: char);
    procedure Radius_Circle_EditKeyPress(Sender: TObject; var Key: char);
    procedure Side_Parallelogram_EditKeyPress(Sender: TObject; var Key: char);
    procedure Height_Parallelogram_EditKeyPress(Sender: TObject; var Key: char);
    procedure Upper_Side_Trapezoid_EditKeyPress(Sender: TObject; var Key: char);
    procedure Height_Trapezoid_EditKeyPress(Sender: TObject; var Key: char);
    procedure Lower_Side_Trapezoid_EditKeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button_RectangleClick(Sender: TObject);
var
  LengthPr, WidthPr, AnswerPr: Float;
begin
  if (not TryStrToFloat(Rectangle_Length_Edit.Text, LengthPr)) or (not TryStrToFloat(Width_Rectangle_Edit.Text, WidthPr)) then
  begin
    ShowMessage('Пожалуйста, введите только числовые значения.');
    Exit;
  end;

  AnswerPr := LengthPr * WidthPr;
  Answer_Rectangle.Text := FloatToStr(AnswerPr);
end;

procedure TForm1.Button_RectangleKeyPress(Sender: TObject; var Key: char);
begin

end;

procedure TForm1.Button_SquareClick(Sender: TObject);
var
  SideKv, AnswerKv: Float;
begin
  if not TryStrToFloat(Side_Square_Edit.Text, SideKv) then
  begin
    ShowMessage('Пожалуйста, введите только числовые значения.');
    Exit;
  end;

  AnswerKv := Sqr(SideKv);
  Answer_Square.Text := FloatToStr(AnswerKv);
end;

procedure TForm1.Button_TriangleClick(Sender: TObject);
var
  FootingTr, HeightTr, AnswerTr: Float;
begin
  if (not TryStrToFloat(Base_Triangle_Edit.Text, FootingTr)) or (not TryStrToFloat(Height_Triangle_Edit.Text, HeightTr)) then
  begin
    ShowMessage('Пожалуйста, введите только числовые значения.');
    Exit;
  end;

  AnswerTr := (0.5 * FootingTr * HeightTr);
  Answer_Triangle.Text := FloatToStr(AnswerTr);
end;

procedure TForm1.Button_CircleClick(Sender: TObject);
var
  Radius: Float;
  AnswerKr: Double;
begin
  if not TryStrToFloat(Radius_Circle_Edit.Text, Radius) then
  begin
    ShowMessage('Пожалуйста, введите только числовые значения.');
    Exit;
  end;

  AnswerKr := Radius * Radius * Pi;
  Answer_Circle.Text := FormatFloat('0.000', AnswerKr);
end;

procedure TForm1.Button_ParallelogramClick(Sender: TObject);
var
  SidePr, HeightPr, AnswerPr: Float;
begin
  if (not TryStrToFloat(Side_Parallelogram_Edit.Text, SidePr)) or (not TryStrToFloat(Height_Parallelogram_Edit.Text, HeightPr)) then
  begin
    ShowMessage('Пожалуйста, введите только числовые значения.');
    Exit;
  end;

  AnswerPr := SidePr * HeightPr;
  Answer_Parallelogram.Text := FloatToStr(AnswerPr);
end;

procedure TForm1.Button_TrapezoidClick(Sender: TObject);
var
  Upper_sideTra, HeightTra, Lower_sideTra, AnswerTra: Float;
begin
  if (not TryStrToFloat(Upper_Side_Trapezoid_Edit.Text, Upper_sideTra)) or (not TryStrToFloat(Height_Trapezoid_Edit.Text, HeightTra)) or
     (not TryStrToFloat(Lower_Side_Trapezoid_Edit.Text, Lower_sideTra)) then
  begin
    ShowMessage('Пожалуйста, введите только числовые значения.');
    Exit;
  end;

  AnswerTra := ((Upper_sideTra + Lower_sideTra) / 2) * HeightTra;
  Answer_Trapezoid.Text := FloatToStr(AnswerTra);
end;

procedure TForm1.Rectangle_Length_EditKeyPress(Sender: TObject; var Key: char);
begin
  if not (Key in ['0'..'9', '-', ',', #8, #13, #9]) then
    Key := #0;
  begin
    if (Key = '-') and ((Pos('-', Rectangle_Length_Edit.Text) > 0) or (Rectangle_Length_Edit.SelStart <> 0)) then
      Key := #0;
  end;
end;

procedure TForm1.Width_Rectangle_EditKeyPress(Sender: TObject; var Key: char);
begin
  if not (Key in ['0'..'9', '-', ',', #8, #13, #9]) then
    Key := #0;
  begin
    if (Key = '-') and ((Pos('-', Width_Rectangle_Edit.Text) > 0) or (Width_Rectangle_Edit.SelStart <> 0)) then
      Key := #0;
  end;
end;

procedure TForm1.Side_Square_EditKeyPress(Sender: TObject; var Key: char);
begin
  if not (Key in ['0'..'9', '-', ',', #8, #13, #9]) then
    Key := #0;
  begin
    if (Key = '-') and ((Pos('-', Side_Square_Edit.Text) > 0) or (Side_Square_Edit.SelStart <> 0)) then
      Key := #0;
  end;
end;

procedure TForm1.Base_Triangle_EditKeyPress(Sender: TObject; var Key: char);
begin
  if not (Key in ['0'..'9', '-', ',', #8, #13, #9]) then
    Key := #0;
  begin
    if (Key = '-') and ((Pos('-', Base_Triangle_Edit.Text) > 0) or (Base_Triangle_Edit.SelStart <> 0)) then
      Key := #0;
  end;
end;
procedure TForm1.Height_Triangle_EditKeyPress(Sender: TObject; var Key: char);
begin
  if not (Key in ['0'..'9', '-', ',', #8, #13, #9]) then
    Key := #0;
  begin
    if (Key = '-') and ((Pos('-', Height_Triangle_Edit.Text) > 0) or (Height_Triangle_Edit.SelStart <> 0)) then
      Key := #0;
  end;
end;

procedure TForm1.Radius_Circle_EditKeyPress(Sender: TObject; var Key: char);
begin
  if not (Key in ['0'..'9', '-', ',', #8, #13, #9]) then
    Key := #0;
  begin
    if (Key = '-') and ((Pos('-', Radius_Circle_Edit.Text) > 0) or (Radius_Circle_Edit.SelStart <> 0)) then
      Key := #0;
  end;
end;

procedure TForm1.Side_Parallelogram_EditKeyPress(Sender: TObject; var Key: char);
begin
  if not (Key in ['0'..'9', '-', ',', #8, #13, #9]) then
    Key := #0;
  begin
    if (Key = '-') and ((Pos('-', Side_Parallelogram_Edit.Text) > 0) or (Side_Parallelogram_Edit.SelStart <> 0)) then
      Key := #0;
  end;
end;

procedure TForm1.Height_Parallelogram_EditKeyPress(Sender: TObject; var Key: char);
begin
  if not (Key in ['0'..'9', '-', ',', #8, #13, #9]) then
    Key := #0;
  begin
    if (Key = '-') and ((Pos('-', Height_Parallelogram_Edit.Text) > 0) or (Height_Parallelogram_Edit.SelStart <> 0)) then
      Key := #0;
  end;
end;

procedure TForm1.Upper_Side_Trapezoid_EditKeyPress(Sender: TObject; var Key: char);
begin
  if not (Key in ['0'..'9', '-', ',', #8, #13, #9]) then
    Key := #0;
  begin
    if (Key = '-') and ((Pos('-', Upper_Side_Trapezoid_Edit.Text) > 0) or (Upper_Side_Trapezoid_Edit.SelStart <> 0)) then
      Key := #0;
  end;
end;

procedure TForm1.Height_Trapezoid_EditKeyPress(Sender: TObject; var Key: char);
begin
  if not (Key in ['0'..'9', '-', ',', #8, #13, #9]) then
    Key := #0;
  begin
    if (Key = '-') and ((Pos('-', Height_Trapezoid_Edit.Text) > 0) or (Height_Trapezoid_Edit.SelStart <> 0)) then
      Key := #0;
  end;
end;

procedure TForm1.Lower_Side_Trapezoid_EditKeyPress(Sender: TObject; var Key: char);
begin
  if not (Key in ['0'..'9', '-', ',', #8, #13, #9]) then
    Key := #0;
  begin
    if (Key = '-') and ((Pos('-', Lower_Side_Trapezoid_Edit.Text) > 0) or (Lower_Side_Trapezoid_Edit.SelStart <> 0)) then
      Key := #0;
  end;
end;

end.

