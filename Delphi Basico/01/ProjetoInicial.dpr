program ProjetoInicial;

uses
  Vcl.Forms,
  Inicial in 'Inicial.pas' {Frm_Cad_User},
  Tela2 in 'Tela2.pas' {FrmTela2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Cad_User, Frm_Cad_User);
  Application.Run;
end.
