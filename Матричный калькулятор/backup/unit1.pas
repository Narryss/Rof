unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    EditA11: TEdit;
    EditA12: TEdit;
    EditA21: TEdit;
    EditA22: TEdit;
    EditB11: TEdit;
    EditB12: TEdit;
    EditB21: TEdit;
    EditB22: TEdit;
    EditC11: TEdit;
    EditC12: TEdit;
    EditC21: TEdit;
    EditC22: TEdit;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  A, B, C: array[1..2, 1..2] of Integer;
  OperationIndex, DeterminantA, DeterminantB: Integer;
begin
  // Заполнение матриц A и B из полей ввода
  A[1, 1] := StrToInt(EditA11.Text);
  A[1, 2] := StrToInt(EditA12.Text);
  A[2, 1] := StrToInt(EditA21.Text);
  A[2, 2] := StrToInt(EditA22.Text);

  B[1, 1] := StrToInt(EditB11.Text);
  B[1, 2] := StrToInt(EditB12.Text);
  B[2, 1] := StrToInt(EditB21.Text);
  B[2, 2] := StrToInt(EditB22.Text);

  OperationIndex := ComboBox1.ItemIndex;

  case OperationIndex of
    0: // Сложение матриц A и B
    begin
      C[1, 1] := A[1, 1] + B[1, 1];
      C[1, 2] := A[1, 2] + B[1, 2];
      C[2, 1] := A[2, 1] + B[2, 1];
      C[2, 2] := A[2, 2] + B[2, 2];
      EditC11.Text:=IntToStr(C[1,1]);
      EditC12.Text:=IntToStr(C[1,2]);
      EditC21.Text:=IntToStr(C[2,1]);
      EditC22.Text:=IntToStr(C[2,2]);
    end;
    1: // Вычитание матриц A и B
    begin
      C[1, 1] := A[1, 1] - B[1, 1];
      C[1, 2] := A[1, 2] - B[1, 2];
      C[2, 1] := A[2, 1] - B[2, 1];
      C[2, 2] := A[2, 2] - B[2, 2];
      EditC11.Text:=IntToStr(C[1,1]);
      EditC12.Text:=IntToStr(C[1,2]);
      EditC21.Text:=IntToStr(C[2,1]);
      EditC22.Text:=IntToStr(C[2,2]);
    end;
    2: // Нахождение определителя матрицы A
    begin
      DeterminantA := (A[1, 1] * A[2, 2]) - (A[1, 2] * A[2, 1]);
      DeterminantB := (B[1, 1] * B[2, 2]) - (B[1, 2] * B[2, 1]);
      Memo1.Lines.Add('Определитель A = ' + IntToStr(DeterminantA));
      Memo1.Lines.Add('Определитель B = ' + IntToStr(DeterminantB));
    end;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Clear;
end;

end.



