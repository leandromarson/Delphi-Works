program Animacao;

uses
  System.StartUpCopy,
  FMX.Forms,
  u_animacao in 'u_animacao.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
