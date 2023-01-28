unit MaskEdit1;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls, Vcl.Mask;

type
  TPessoa = (pJuridica, pFisica);
  TMaskEdit1 = class(TMaskEdit)
  private
    FPessoa: TPessoa;
    procedure SetPessoa(const Value: TPessoa);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
   property Pessoa : TPessoa read FPessoa write SetPessoa;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Exemplos', [TMaskEdit1]);
end;

{ TMaskEdit1 }

procedure TMaskEdit1.SetPessoa(const Value: TPessoa);
begin
  FPessoa := Value;
  case Value of
    pJuridica:
    EditMask := '99.999.999/9999-99;1;_';
    pFisica:
    EditMask := '999.999.999-99;1;_';
  end;
end;

end.
