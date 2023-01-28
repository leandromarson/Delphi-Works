unit u_animacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Ani, FMX.Edit;

type
  TForm1 = class(TForm)
    Circle1: TCircle;
    btn_play: TButton;
    FloatAnimation1: TFloatAnimation;
    txt_duracao: TEdit;
    Label1: TLabel;
    btn_pause: TButton;
    procedure btn_playClick(Sender: TObject);
    procedure FloatAnimation1Process(Sender: TObject);
    procedure txt_duracaoKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btn_pauseClick(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn_playClick(Sender: TObject);
begin
  FloatAnimation1.Enabled := true;
  btn_pause.Enabled := true;
end;

procedure TForm1.btn_pauseClick(Sender: TObject);
begin
   FloatAnimation1.Enabled := false;
   btn_pause.Enabled := false;
end;

procedure TForm1.FloatAnimation1Finish(Sender: TObject);
begin
    btn_pause.Enabled := false;
end;

procedure TForm1.FloatAnimation1Process(Sender: TObject);
  var txt : double;
begin
  txt := strToFloat(txt_duracao.Text);
  FloatAnimation1.Duration := txt;
end;

procedure TForm1.txt_duracaoKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if txt_duracao.Text <> '' then
  begin
    btn_play.Enabled := true;
  end
  else
  begin
    btn_play.Enabled := false;
  end;
end;

end.
