program Timer;

uses
  Vcl.Forms,
  U_cronometro in 'U_cronometro.pas' {frm_timer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_timer, frm_timer);
  Application.Run;
end.
