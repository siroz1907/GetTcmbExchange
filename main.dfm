object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 391
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 372
    Width = 426
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitLeft = 248
    ExplicitTop = 360
    ExplicitWidth = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 426
    Height = 57
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 14
      Width = 120
      Height = 13
      Caption = 'XML File Link - URL - Path'
    end
    object Edit1: TEdit
      Left = 16
      Top = 30
      Width = 313
      Height = 21
      TabOrder = 0
      Text = 'http://www.tcmb.gov.tr/kurlar/today.xml'
    end
    object Button1: TButton
      Left = 335
      Top = 26
      Width = 75
      Height = 25
      Caption = 'Get'
      TabOrder = 1
      OnClick = btnGetClick
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 57
    Width = 426
    Height = 315
    Align = alClient
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
    WantTabs = True
    WordWrap = False
    ExplicitTop = 41
    ExplicitHeight = 331
  end
end
