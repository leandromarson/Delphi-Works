object frm_menu: Tfrm_menu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 212
  ClientWidth = 327
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
    Left = 144
    Top = 128
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Cadastro2: TMenuItem
        Caption = 'Clientes'
        OnClick = Cadastro2Click
      end
    end
    object Sair: TMenuItem
      Caption = 'Sair'
      OnClick = SairClick
    end
  end
end
