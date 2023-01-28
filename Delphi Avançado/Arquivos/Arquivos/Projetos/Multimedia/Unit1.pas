unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Media, FMX.Objects;

type
  TForm1 = class(TForm)
    playercontrol: TMediaPlayerControl;
    MediaPlayer1: TMediaPlayer;
    btn_abrir: TButton;
    OpenDialog1: TOpenDialog;
    lb_arquivo: TLabel;
    btn_play: TButton;
    Rectangle1: TRectangle;
    procedure btn_abrirClick(Sender: TObject);
    procedure btn_playClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn_abrirClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    MediaPlayer1.FileName := OpenDialog1.FileName;
    lb_arquivo.Text := ExtractFileName(OpenDialog1.FileName);
    btn_play.Enabled := true;
  end;

end;

procedure TForm1.btn_playClick(Sender: TObject);
begin
  if btn_play.StyleLookup = 'playtoolbutton' then
  begin
    MediaPlayer1.Play;
    btn_play.StyleLookup := 'pausetoolbutton';
  end
  else
  begin
    MediaPlayer1.Stop;
    btn_play.StyleLookup := 'playtoolbutton';
  end;

end;

end.
