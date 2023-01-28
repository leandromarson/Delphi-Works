object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 332
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 72
    Top = 72
    Width = 185
    Height = 41
    Caption = 'Panel1'
    TabOrder = 0
  end
  object CheckBox1: TCheckBox
    Left = 192
    Top = 240
    Width = 97
    Height = 17
    Caption = 'Habilitar Mouse'
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object FloatPanel1: TFloatPanel
    Left = 152
    Top = 127
    Width = 185
    Height = 65
    Caption = 'FloatPanel1'
    TabOrder = 2
    DesignMode = False
  end
end
