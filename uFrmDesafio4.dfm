object frmDesafio4: TfrmDesafio4
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Desafio 4'
  ClientHeight = 206
  ClientWidth = 403
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  TextHeight = 15
  object Label2: TLabel
    Left = 4
    Top = 43
    Width = 115
    Height = 21
    Caption = 'Digite a Idade: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 4
    Top = 8
    Width = 120
    Height = 21
    Caption = 'Digite o Nome: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 116
    Top = 146
    Width = 196
    Height = 21
    Caption = 'Informa'#231#245'es Formatadas: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnExibir: TButton
    Left = 152
    Top = 83
    Width = 89
    Height = 57
    Caption = 'Exibir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnExibirClick
  end
  object edtIdade: TEdit
    Left = 128
    Top = 39
    Width = 70
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 1
  end
  object edtNome: TEdit
    Left = 128
    Top = 8
    Width = 271
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 0
  end
  object edtFormatados: TEdit
    Left = 8
    Top = 173
    Width = 395
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
