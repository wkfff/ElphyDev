object ChooseObject: TChooseObject
  Left = 477
  Top = 157
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Choose an object'
  ClientHeight = 217
  ClientWidth = 206
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 6
    Top = 7
    Width = 195
    Height = 165
    Caption = 'Objects'
    TabOrder = 0
    object TreeView1: TTreeView
      Left = 2
      Top = 15
      Width = 191
      Height = 148
      Align = alClient
      HideSelection = False
      Indent = 19
      ReadOnly = True
      TabOrder = 0
      OnDblClick = TreeView1DblClick
      OnExpanding = TreeView1Expanding
    end
  end
  object Bok: TButton
    Left = 26
    Top = 182
    Width = 63
    Height = 20
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 1
  end
  object Bcancel: TButton
    Left = 111
    Top = 182
    Width = 63
    Height = 20
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
end
