object DX8test: TDX8test
  Left = 418
  Top = 227
  Width = 519
  Height = 407
  Caption = 'DX8test'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 511
    Height = 65
    Align = alTop
    TabOrder = 0
    object LabelD: TLabel
      Left = 24
      Top = 40
      Width = 34
      Height = 13
      Caption = 'LabelD'
    end
    object LabelPhi: TLabel
      Left = 176
      Top = 40
      Width = 41
      Height = 13
      Caption = 'LabelPhi'
    end
    object LabelAlpha: TLabel
      Left = 312
      Top = 40
      Width = 53
      Height = 13
      Caption = 'LabelAlpha'
    end
    object sbD: TscrollbarV
      Left = 8
      Top = 8
      Width = 121
      Height = 18
      Max = 30000
      PageSize = 0
      TabOrder = 0
      Xmax = 1000
      dxSmall = 1
      dxLarge = 10
      OnScrollV = sbDScrollV
    end
    object sbPhi: TscrollbarV
      Left = 144
      Top = 8
      Width = 121
      Height = 18
      Max = 30000
      PageSize = 0
      TabOrder = 1
      Xmax = 1000
      dxSmall = 1
      dxLarge = 10
      OnScrollV = sbPhiScrollV
    end
    object sbAlpha: TscrollbarV
      Left = 272
      Top = 8
      Width = 121
      Height = 18
      Max = 30000
      PageSize = 0
      TabOrder = 2
      Xmax = 1000
      dxSmall = 1
      dxLarge = 10
      OnScrollV = sbAlphaScrollV
    end
  end
  object SimplePanel1: TSimplePanel
    Left = 0
    Top = 65
    Width = 511
    Height = 315
    Align = alClient
    BevelOuter = bvNone
    Caption = 'SimplePanel1'
    TabOrder = 1
    object PaintBox1: TPaintBox
      Left = 0
      Top = 0
      Width = 511
      Height = 315
      Align = alClient
      OnPaint = PaintBox1Paint
    end
  end
  object Timer1: TTimer
    Interval = 50
    Left = 456
    Top = 24
  end
end
