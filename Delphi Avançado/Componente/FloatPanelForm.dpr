program FloatPanelForm;

uses
  Vcl.Forms,
  U_forms in 'U_forms.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
