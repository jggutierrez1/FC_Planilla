object fAbout: TfAbout
  Left = 204
  Top = 144
  BorderIcons = [biSystemMenu]
  Caption = 'About '
  ClientHeight = 276
  ClientWidth = 371
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 297
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Panel1: TPanel
    Left = 5
    Top = 3
    Width = 286
    Height = 270
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 10
      Top = 9
      Width = 248
      Height = 24
      Caption = 'Formu-Coop Planilla 2019.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 10
      Top = 36
      Width = 62
      Height = 13
      Caption = 'Version 1.0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 10
      Top = 184
      Width = 134
      Height = 13
      Caption = 'Derechos reservados, 2019.'
    end
  end
end
