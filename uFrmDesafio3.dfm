object frmDesafio3: TfrmDesafio3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Desafio 3'
  ClientHeight = 91
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 112
    Top = 36
    Width = 172
    Height = 21
    Caption = 'Contagem Regressiva: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblContagem: TLabel
    Left = 288
    Top = 36
    Width = 18
    Height = 21
    Caption = '10'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnIniciar: TButton
    Left = 8
    Top = 20
    Width = 89
    Height = 57
    Caption = 'Iniciar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnIniciarClick
  end
  object tTimerRegressiva: TTimer
    OnTimer = tTimerRegressivaTimer
    Left = 304
  end
end
