object frm_menu: Tfrm_menu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 146
  ClientWidth = 284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btn_texto: TButton
    Left = 40
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Texto'
    TabOrder = 0
    OnClick = btn_textoClick
  end
  object btn_img: TButton
    Left = 168
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Imagem'
    TabOrder = 1
    OnClick = btn_imgClick
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 32
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Abrir1: TMenuItem
        Caption = 'Abrir'
      end
      object Salvar1: TMenuItem
        Caption = 'Salvar'
      end
      object Salvar2: TMenuItem
        Caption = 'Fechar'
      end
    end
    object Editar1: TMenuItem
      Caption = 'Editar'
    end
    object Janelas1: TMenuItem
      Caption = 'Janelas'
      object exto1: TMenuItem
        Caption = 'Texto'
      end
      object Imagem1: TMenuItem
        Caption = 'Imagem'
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
    end
  end
end
