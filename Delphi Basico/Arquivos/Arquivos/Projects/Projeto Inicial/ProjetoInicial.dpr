program ProjetoInicial;

uses
  Vcl.Forms,
  Inicial in 'Inicial.pas' {Cad_Usu},
  Tela2 in 'Tela2.pas' {frm_tela2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCad_Usu, Cad_Usu);
  Application.Run;
end.
