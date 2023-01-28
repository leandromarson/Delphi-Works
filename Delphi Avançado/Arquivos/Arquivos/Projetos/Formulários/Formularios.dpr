program Formularios;

uses
  Vcl.Forms,
  Menu in 'Menu.pas' {frm_menu},
  U_Texto in 'U_Texto.pas' {frm_texto},
  U_Imagem in 'U_Imagem.pas' {frm_imagem};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_menu, frm_menu);
  Application.CreateForm(Tfrm_texto, frm_texto);
  Application.Run;
end.
