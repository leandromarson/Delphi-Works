unit U_cronometro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.MPlayer, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  Tfrm_timer = class(TForm)
    Timer1: TTimer;
    lbl_segundos: TLabel;
    Label1: TLabel;
    lbl_minutos: TLabel;
    MediaPlayer1: TMediaPlayer;
    btn_inicial: TSpeedButton;
    btn_abrir: TButton;
    OpenDialog1: TOpenDialog;
    txt_tempo: TEdit;
    procedure Timer1Timer(Sender: TObject);
    procedure btn_inicialClick(Sender: TObject);
    procedure btn_abrirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_timer: Tfrm_timer;

implementation

{$R *.dfm}

procedure Tfrm_timer.btn_abrirClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    MediaPlayer1.FileName := OpenDialog1.FileName;
    btn_inicial.Enabled := true;
  end;
end;

procedure Tfrm_timer.btn_inicialClick(Sender: TObject);
begin
  Timer1.Enabled := true;
end;

procedure Tfrm_timer.Timer1Timer(Sender: TObject);
  var seg, min, cont: Integer;
begin
   seg := strToInt(lbl_segundos.Caption);
   min := strToInt(lbl_minutos.Caption);
   cont := seg + 1;

   lbl_segundos.Caption  := intToStr(cont);

   if lbl_segundos.Caption = '60' then
   begin
     lbl_segundos.Caption := '0';
     lbl_minutos.Caption := intToStr(strToInt(lbl_minutos.Caption) + 1);
   end;

   if lbl_segundos.Caption = txt_tempo.Text then
   begin
    Timer1.Enabled := false;
    MediaPlayer1.Open;
    MediaPlayer1.Play;
    btn_inicial.Enabled := false;
    lbl_segundos.Caption := '0';
    lbl_minutos.Caption := '0';
    txt_tempo.Text := '';
   end;

end;

end.
