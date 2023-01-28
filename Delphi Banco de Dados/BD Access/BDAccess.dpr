program BDAccess;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {frm_inicial};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_inicial, frm_inicial);
  Application.Run;
end.
