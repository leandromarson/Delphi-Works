program FormMask;

uses
  Vcl.Forms,
  U_Form in 'C:\Users\Leandro\Documents\Embarcadero\Studio\Projects\U_Form.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
