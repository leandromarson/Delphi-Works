unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg;

type
  Tfrm_principal = class(TForm)
    P_Titulo: TPanel;
    Image1: TImage;
    P_Cadastros: TPanel;
    P_Vendas: TPanel;
    P_Relatorios: TPanel;
    P_Itens_Cadastro: TPanel;
    P_Usuarios: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    P_Items_Vendas: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    P_Items_Relatorios: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Image2: TImage;
    Panel5: TPanel;
    procedure Image1Click(Sender: TObject);
    procedure P_CadastrosClick(Sender: TObject);
    procedure P_VendasClick(Sender: TObject);
    procedure P_RelatoriosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
  private
    function selecionarMenu(pMenu:Integer):Boolean;
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses U_Cad_Cliente;

procedure Tfrm_principal.FormCreate(Sender: TObject);
begin
  selecionarMenu(1);
end;

procedure Tfrm_principal.Image1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tfrm_principal.Panel2Click(Sender: TObject);
begin
  frm_cad_cliente.ShowModal;
end;

procedure Tfrm_principal.P_CadastrosClick(Sender: TObject);
begin
  selecionarMenu(1);
end;

procedure Tfrm_principal.P_RelatoriosClick(Sender: TObject);
begin
  selecionarMenu(3);
end;

procedure Tfrm_principal.P_VendasClick(Sender: TObject);
begin
  selecionarMenu(2);
end;

function Tfrm_principal.selecionarMenu(pMenu: Integer): Boolean;
begin
  case pMenu of
    0 :
    begin
      P_Itens_Cadastro.Visible := false;
      P_Items_Vendas.Visible := false;
      P_Items_Relatorios.Visible := false;
    end;
    1 :
    begin
      P_Itens_Cadastro.Visible := true;
      P_Items_Vendas.Visible := false;
      P_Items_Relatorios.Visible := false;
    end;
    2 :
    begin
      P_Itens_Cadastro.Visible := false;
      P_Items_Vendas.Visible := true;
      P_Items_Relatorios.Visible := false;
    end;
    3 :
    begin
      P_Itens_Cadastro.Visible := false;
      P_Items_Vendas.Visible := false;
      P_Items_Relatorios.Visible := true;
    end;
  end;
end;

end.
