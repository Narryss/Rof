unit Unit1;

{$mode objfpc}{$H+} // Указывает режим компилятора и использует управляемые строки.

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls; // Подключение необходимых библиотек.

type
  { TForm1 }
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ButtonStart: TButton;
    ButtonStop: TButton;
    ButtonReset: TButton;
    Label2: TLabel;
    Label4: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonStopClick(Sender: TObject);
    procedure ButtonResetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    PausedTime: TDateTime; // Время на момент паузы секундомера.
    StartTime: TDateTime;  // Время старта секундомера.
    bRunning: Boolean;     // Флаг, показывающий, работает ли секундомер.
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm} // Ссылка на файл формы Lazarus.

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  bRunning := False; // Инициализация флага работы секундомера.
  PausedTime := 0;   // Инициализация времени паузы.
  Label4.Caption := '00:00:00:000'; // Начальное значение для отображения времени секундомера.

  end;

procedure TForm1.Image1Click(Sender: TObject);
begin

end;


procedure TForm1.ButtonStartClick(Sender: TObject);
begin
  if not bRunning then
  begin
    if PausedTime = 0 then
      StartTime := Now // Запуск секундомера с текущего времени.
    else
      StartTime := Now - PausedTime; // Продолжение секундомера с времени паузы.
    Timer2.Enabled := True; // Включение таймера обновления времени секундомера.
    bRunning := True; // Установка флага работы секундомера.
  end;
end;

procedure TForm1.ButtonStopClick(Sender: TObject);
begin
  if bRunning then
  begin
    Timer2.Enabled := False; // Отключение таймера.
    PausedTime := Now - StartTime; // Запись времени с момента последнего запуска до паузы.
    bRunning := False; // Сброс флага работы секундомера.
  end;
end;

procedure TForm1.ButtonResetClick(Sender: TObject);
begin
  Timer2.Enabled := False; // Отключение таймера.
  PausedTime := 0; // Сброс времени паузы.
  StartTime := 0; // Сброс времени начала.
  bRunning := False; // Сброс флага работы секундомера.
  Label4.Caption := '00:00:00:000'; // Сброс отображаемого времени.
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Label2.Caption := TimeToStr(Time); // Обновление времени в Label2 каждую секунду.
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  if bRunning then
    Label4.Caption := FormatDateTime('hh:nn:ss:zzz', Now - StartTime); // Форматирование и отображение времени секундомера.
end;

end.

