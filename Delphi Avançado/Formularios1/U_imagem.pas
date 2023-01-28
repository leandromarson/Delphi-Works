unit U_imagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tfrm_img = class(TForm)
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_img: Tfrm_img;

implementation

{$R *.dfm}

uses Menu;

procedure Tfrm_img.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frm_menu.Show;
end;

end.
