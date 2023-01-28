program SistemaExemplo;

uses
  Vcl.Forms,
  U_Principal in 'U_Principal.pas' {frm_principal},
  Vcl.Themes,
  Vcl.Styles,
  U_cadastro in 'U_cadastro.pas' {frm_cad_clientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(Tfrm_cad_clientes, frm_cad_clientes);
  Application.Run;
end.
