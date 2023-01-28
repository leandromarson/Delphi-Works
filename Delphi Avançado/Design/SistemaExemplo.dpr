program SistemaExemplo;

uses
  Vcl.Forms,
  U_Principal in 'U_Principal.pas' {frm_principal},
  Vcl.Themes,
  Vcl.Styles,
  U_Cad_Cliente in 'U_Cad_Cliente.pas' {frm_cad_cliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(Tfrm_cad_cliente, frm_cad_cliente);
  Application.Run;
end.
