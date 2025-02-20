object frmDesafio5: TfrmDesafio5
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Desafio 5'
  ClientHeight = 132
  ClientWidth = 266
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
    Left = 103
    Top = 83
    Width = 84
    Height = 21
    Caption = 'Resultado: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 55
    Top = 6
    Width = 160
    Height = 21
    Caption = 'Fa'#231'a um c'#225'lculo aqui'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnCalcular: TButton
    Left = 8
    Top = 67
    Width = 89
    Height = 57
    Caption = 'Calcular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnCalcularClick
  end
  object edtCalculo: TEdit
    Left = 8
    Top = 33
    Width = 251
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object edtResultado: TEdit
    Left = 189
    Top = 83
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
end
