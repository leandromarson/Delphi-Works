object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 297
  ClientWidth = 408
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MaskEdit11: TMaskEdit1
    Left = 104
    Top = 152
    Width = 114
    Height = 21
    EditMask = '99.999.999/9999-99;1;_'
    MaxLength = 18
    TabOrder = 0
    Text = '  .   .   /    -  '
    Pessoa = pJuridica
  end
  object RadioGroup1: TRadioGroup
    Left = 96
    Top = 88
    Width = 185
    Height = 50
    Caption = 'CNPJ / CPF'
    Columns = 2
    Items.Strings = (
      'Juridica'
      'F'#237'sica')
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
end
