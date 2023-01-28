program ProjetoCrud;

uses
  Vcl.Forms,
  U_menu in 'U_menu.pas' {frm_menu},
  U_cliente in 'U_cliente.pas' {frm_cad_cliente},
  U_database in 'U_database.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_menu, frm_menu);
  Application.CreateForm(Tfrm_cad_cliente, frm_cad_cliente);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
