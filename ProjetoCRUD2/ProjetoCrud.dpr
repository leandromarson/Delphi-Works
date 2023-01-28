program ProjetoCrud;

uses
  Vcl.Forms,
  U_menu in 'U_menu.pas' {frm_menu},
  U_clientes in 'U_clientes.pas' {frm_cliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_menu, frm_menu);
  Application.CreateForm(Tfrm_cliente, frm_cliente);
  Application.Run;
end.
