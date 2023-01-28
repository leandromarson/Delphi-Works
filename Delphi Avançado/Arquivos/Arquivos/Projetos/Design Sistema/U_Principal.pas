unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.StdCtrls;

type
  Tfrm_principal = class(TForm)
    pnl_titulo: TPanel;
    Image1: TImage;
    pnl_cadastros: TPanel;
    pnl_vendas: TPanel;
    pnl_relatorios: TPanel;
    pnl_itens_cadastro: TPanel;
    pnl_usuarios: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    pnl_cad_clientes: TPanel;
    pnl_itens_vendas: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    pnl_itens_relatorios: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Image2: TImage;
    Panel7: TPanel;
    Label1: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure pnl_cadastrosClick(Sender: TObject);
    procedure pnl_vendasClick(Sender: TObject);
    procedure pnl_relatoriosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnl_cad_clientesClick(Sender: TObject);
  private
    function selecionarMenu(pMenu:Integer):Boolean;
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses U_cadastro;

procedure Tfrm_principal.FormCreate(Sender: TObject);
begin
    selecionarMenu(1);
end;

procedure Tfrm_principal.Image1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tfrm_principal.pnl_cadastrosClick(Sender: TObject);
begin
  selecionarMenu(1);
end;

procedure Tfrm_principal.pnl_cad_clientesClick(Sender: TObject);
begin
  frm_cad_clientes.ShowModal;
end;

procedure Tfrm_principal.pnl_relatoriosClick(Sender: TObject);
begin
  selecionarMenu(3);
end;

procedure Tfrm_principal.pnl_vendasClick(Sender: TObject);
begin
  selecionarMenu(2);
end;

function Tfrm_principal.selecionarMenu(pMenu: Integer): Boolean;
begin
   case pMenu of
     0 :
     begin
       pnl_itens_cadastro.Visible := false;
       pnl_itens_vendas.Visible := false;
       pnl_itens_relatorios.Visible := false;
     end;

     1 :
     begin
       pnl_itens_cadastro.Visible := true;
       pnl_itens_vendas.Visible := false;
       pnl_itens_relatorios.Visible := false;
     end;

     2 :
     begin
       pnl_itens_cadastro.Visible := false;
       pnl_itens_vendas.Visible := true;
       pnl_itens_relatorios.Visible := false;
     end;

     3 :
     begin
       pnl_itens_cadastro.Visible := false;
       pnl_itens_vendas.Visible := false;
       pnl_itens_relatorios.Visible := true;
     end;

   end;
end;

end.
