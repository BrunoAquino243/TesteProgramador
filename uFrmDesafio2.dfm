object frmDesafio2: TfrmDesafio2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Desafio 2'
  ClientHeight = 243
  ClientWidth = 328
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
    Left = 96
    Top = 129
    Width = 115
    Height = 21
    Caption = 'Ordem Inversa:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 86
    Top = 188
    Width = 149
    Height = 21
    Caption = 'Quantidade Vogais:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 77
    Top = 1
    Width = 178
    Height = 21
    Caption = 'Escreva uma frase aqui:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnInverter: TButton
    Left = 109
    Top = 62
    Width = 89
    Height = 57
    Caption = 'Inverter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnInverterClick
  end
  object edtFrase: TEdit
    Left = 8
    Top = 28
    Width = 314
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object edtOrdemInversa: TEdit
    Left = 8
    Top = 157
    Width = 314
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
  object edtQtdVogais: TEdit
    Left = 120
    Top = 215
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
