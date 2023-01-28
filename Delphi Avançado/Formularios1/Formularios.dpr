program Formularios;

uses
  Vcl.Forms,
  Menu in 'Menu.pas' {frm_menu},
  U_texto in 'U_texto.pas' {frm_texto},
  U_imagem in 'U_imagem.pas' {frm_img};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_menu, frm_menu);
  Application.Run;
end.
