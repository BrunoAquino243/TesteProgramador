object frmDesafio1: TfrmDesafio1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Desafio 1'
  ClientHeight = 116
  ClientWidth = 327
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  TextHeight = 15
  object Label1: TLabel
    Left = 120
    Top = 49
    Width = 126
    Height = 21
    Caption = 'Segundo Maior: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 120
    Top = 85
    Width = 127
    Height = 21
    Caption = 'Soma dos Pares: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnRetornar: TButton
    Left = 8
    Top = 49
    Width = 89
    Height = 57
    Caption = 'Retornar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnRetornarClick
  end
  object Edit1: TEdit
    Left = 72
    Top = 8
    Width = 190
    Height = 28
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    Text = '5, 10, 3, 8, 12, 7, 4, 35, 20'
  end
  object edtSegundoMaior: TEdit
    Left = 252
    Top = 49
    Width = 70
    Height = 25
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsItalic]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object edtSomaPares: TEdit
    Left = 252
    Top = 81
    Width = 70
    Height = 25
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsItalic]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
end
