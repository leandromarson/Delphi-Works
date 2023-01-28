unit U_menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  Tfrm_menu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Cadastro2: TMenuItem;
    Sair: TMenuItem;
    procedure SairClick(Sender: TObject);
    procedure Cadastro2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_menu: Tfrm_menu;

implementation

{$R *.dfm}

uses U_clientes;

procedure Tfrm_menu.Cadastro2Click(Sender: TObject);
begin
  frm_cliente.ShowModal;
end;

procedure Tfrm_menu.SairClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
