object frm_menu: Tfrm_menu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 267
  ClientWidth = 395
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 16
    Top = 160
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object N1: TMenuItem
        Caption = 'Cliente'
        OnClick = N1Click
      end
    end
  end
end