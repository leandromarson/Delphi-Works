unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  Tfrm_menu = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Editar1: TMenuItem;
    Janelas1: TMenuItem;
    Sair1: TMenuItem;
    Salvar1: TMenuItem;
    Fechar1: TMenuItem;
    Abrir1: TMenuItem;
    exto1: TMenuItem;
    Imagem1: TMenuItem;
    btn_texto: TButton;
    btn_img: TButton;
    procedure btn_textoClick(Sender: TObject);
    procedure btn_imgClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_menu: Tfrm_menu;

implementation

{$R *.dfm}

uses U_Imagem, U_Texto;

procedure Tfrm_menu.btn_imgClick(Sender: TObject);
begin
  frm_menu.Hide;
  frm_imagem := Tfrm_imagem.Create(self);
  frm_imagem.ShowModal;
end;

procedure Tfrm_menu.btn_textoClick(Sender: TObject);
begin
  frm_menu.Hide;
  //frm_texto := Tfrm_texto.Create(self);
  frm_texto.ShowModal;
end;

end.
