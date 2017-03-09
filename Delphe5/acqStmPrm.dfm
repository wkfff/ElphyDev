object AcqstimParam: TAcqstimParam
  Left = 441
  Top = 170
  BorderStyle = bsDialog
  Caption = 'Visual stimulator parameters'
  ClientHeight = 544
  ClientWidth = 410
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label13: TLabel
    Left = 10
    Top = 430
    Width = 75
    Height = 13
    Caption = 'Tracked object:'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 410
    Height = 81
    Align = alTop
    Caption = 'Acquisition'
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 20
      Width = 111
      Height = 13
      Caption = 'Period per channel (ms)'
    end
    object Label17: TLabel
      Left = 14
      Top = 44
      Width = 63
      Height = 13
      Caption = 'Trigger Mode'
    end
    object enPeriod: TeditNum
      Left = 134
      Top = 17
      Width = 77
      Height = 21
      TabOrder = 0
      Tnum = G_byte
      Max = 255.000000000000000000
      UpdateVarOnExit = False
      Decimal = 0
      Dxu = 1.000000000000000000
    end
    object cbDisplay: TCheckBoxV
      Left = 248
      Top = 19
      Width = 113
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Display analog data'
      TabOrder = 1
      UpdateVarOnToggle = False
    end
    object cbTriggerMode: TcomboBoxV
      Left = 107
      Top = 41
      Width = 107
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = 'Vtag1'
      Tnum = G_byte
      UpdateVarOnExit = False
      UpdateVarOnChange = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 168
    Width = 410
    Height = 97
    Align = alTop
    Caption = 'Tracks'
    TabOrder = 1
    object Label2: TLabel
      Left = 10
      Top = 40
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label5: TLabel
      Left = 10
      Top = 63
      Width = 6
      Height = 13
      Caption = '2'
    end
    object Label3: TLabel
      Left = 92
      Top = 18
      Width = 47
      Height = 13
      Caption = 'Threshold'
    end
    object Label4: TLabel
      Left = 179
      Top = 19
      Width = 3
      Height = 13
    end
    object Label6: TLabel
      Left = 34
      Top = 18
      Width = 39
      Height = 13
      Caption = 'Channel'
    end
    object enChannel1: TeditNum
      Left = 32
      Top = 37
      Width = 45
      Height = 21
      TabOrder = 0
      Text = '0'
      Tnum = G_byte
      Max = 255.000000000000000000
      UpdateVarOnExit = False
      Decimal = 0
      Dxu = 1.000000000000000000
    end
    object enChannel2: TeditNum
      Left = 32
      Top = 60
      Width = 45
      Height = 21
      TabOrder = 1
      Text = '0'
      Tnum = G_byte
      Max = 255.000000000000000000
      UpdateVarOnExit = False
      Decimal = 0
      Dxu = 1.000000000000000000
    end
    object enSeuilP1: TeditNum
      Left = 87
      Top = 37
      Width = 86
      Height = 21
      TabOrder = 2
      Tnum = G_byte
      Max = 255.000000000000000000
      UpdateVarOnExit = False
      Decimal = 0
      Dxu = 1.000000000000000000
    end
    object enSeuilP2: TeditNum
      Left = 87
      Top = 60
      Width = 86
      Height = 21
      TabOrder = 3
      Tnum = G_byte
      Max = 255.000000000000000000
      UpdateVarOnExit = False
      Decimal = 0
      Dxu = 1.000000000000000000
    end
    object cbMode1: TcomboBoxV
      Left = 179
      Top = 37
      Width = 78
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      Text = 'Rising edge'
      Tnum = G_byte
      UpdateVarOnExit = False
      UpdateVarOnChange = False
    end
    object cbMode2: TcomboBoxV
      Left = 179
      Top = 60
      Width = 78
      Height = 21
      ItemHeight = 13
      TabOrder = 5
      Text = 'Rising edge'
      Tnum = G_byte
      UpdateVarOnExit = False
      UpdateVarOnChange = False
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 265
    Width = 410
    Height = 139
    Align = alTop
    Caption = 'Tracking points'
    TabOrder = 2
    object Image1: TImage
      Left = 246
      Top = 24
      Width = 150
      Height = 80
      Picture.Data = {
        07544269746D617036180000424D361800000000000076000000280000009600
        0000500000000100040000000000C01700000000000000000000100000000000
        000000000000000080000080000000808000800000008000800080800000C0C0
        C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777700777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777700777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777007777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777007777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777007777
        7777777777777777000777777777777777777777777777777777777777777777
        7777777707777777777777777777777777777777777777777777777777777777
        7777777777777777770077777777777777777770777077777777777777777777
        7777777777777777777777777777777707777777777777777777777777777777
        7777777777777777777777777777077777777777770077777777777777777777
        7770777777777777777777777777777777777777777777777777777707777777
        7777777777777777777777777777777777777777777777777777077777777777
        7700777777777777777777777770777777777777777777777777777777777777
        7777777777777777707777777777777777777777777777777777777777777777
        7777777770000077777777777700777777777777777777777007777777777777
        7777777777777777777777777777777777777777707777777777777777777777
        7777777777777777777777777777777770770777777777777700777777777777
        7777777777707777777777777777777777777777777777777777777777777777
        7707777777777777777777777777777777777777777777777777777777070777
        7777777777007777777777777777777777707777777777777777777777777777
        7777777777777777777777777707777777777777777777777777777777777777
        7777777777777777770707777777777777007777777777777777777077707777
        7777777777777777777777777777777777777777777777777770777777777777
        7777777777777777777777777777777777777777777007777777777777007777
        7777777777777777000777777777777777777777777777777777777777777777
        7777777000007777777777777777777777777777777777777777777777777777
        7770077777777777770077777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777077777777777770077777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7700777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777700777777777777777777777700000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000077777777777777777777700777777777777
        7777777777077777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777077777777777
        7777777777007777777777777777777777077777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777770777777777777777777777007777777777777777777777077777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777770777777777777777777777007777
        7777777777777777770777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777770777
        7777777777777777770077777777777777777777770777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777707777777777777777777770077777777777777777777
        7707777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777707777777777777777777
        7700777777777777777777777707777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777077777777777777777777700777777777777777777777707777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777077777777777777777777700777777777777
        7777777777077777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777077777777777
        7777777777007777777777777777777777077777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777770777777777777777777777007777777777777777777777077777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777770777777777777777777777007777
        7777777777777777770777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777770777
        7777777777777777770077777777777777777777770777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777707777777777777777777770077777777777777777777
        7707777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777707777777777777777777
        7700777777777777777777777707777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777077777777777777777777700777777777700077777777707777777777777
        7777777777777777777777777777777777777777000777777777777777777777
        7777777777777777777777777777077777777777777777777700777777777077
        7077777777077777777777777777777777777777777777777777777777777770
        7770777777777777777777777777777777777777777777777777077777777777
        7777777777007777777770777077777777077777777777777777777777777777
        7777777777777777777777777770777777777777777777777777777777777777
        7777777777770777770007777777777777007777777770777077777777077777
        7777777777777777777777777777777777777777777777777770777777777777
        7777777777777777777777777777777777770777707770777777777777007777
        7777700007777777770777777777777777777777777777777777777777777777
        7777777700007777777777777777777777777777777777777777777777770777
        7077707777777777770077777777707777777777770777777777777777777777
        7777777777777777777777777777777077707777777777777777777777777777
        7777777777777777777707777077707777777777770077777777707777777777
        7707777777777777777777777777777777777777777777777777777077707777
        7777777777777777777777777777777777777777777707777700077777777777
        7700777777777077707777777707777777777777777777777777777777777777
        7777777777777770777077777777777777777777777777777777777777777777
        7777077770777077777777777700777777777700077777777707777777777777
        7777777777777777777777777777777777777777000777777777777777777777
        7777777777777777777777777777077770777077777777777700777777777777
        7777777777077777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777077770777077
        7777777777007777777777777777777777077777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777770777770007777777777777007777777777777777777777077777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777770777777777777777777777007777
        7777777777777777770777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777770777
        7777777777777777770077777777777777777777770777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777707777777777777777777770077777777777777777777
        7707777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777707777777777777777777
        7700777777777777777777777707777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777077777777777777777777700777777777777777777777707777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777077777777777777777777700777777777777
        7777777777077777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777077777777777
        7777777777007777777777777777777777077777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777770777777777777777777777007777777777777777777777077777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777770777777777777777777777007777
        7777777777777777770777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777770777
        7777777777777777770077777777777777777777770777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777707777777777777777777770077777777777777777777
        7707777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777707777777777777777777
        7700777777777777777777777707777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777077777777777777777777700777777777777777777777707777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777077777777777777777777700777777777777
        7777777777077777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777077777777777
        7777777777007777777777777777777777077777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777770777777777777777777777007777777777777777777777077777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777770777777777777777777777007777
        7777777777777777770000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000777
        7777777777777777770077777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777770077777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7700777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777700777777777777777770000077777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777700777777777777
        7777707777777777777777777777777777777777777777777777777777777700
        0777777777777777777777777777777777777777777777777777777707777777
        7777777777007777777777777777770777777777777777777777777777777777
        7777777777777777777770777077777777777777777777777777777777777777
        7777777777777777077777777777777777007777777777777777777077777777
        7777777777777777777777777777777777777777777777777077777777777777
        7777777777777777777777777777777777777777077777777777777777007777
        7777777777777777077777777777777777777777777777777777777777777777
        7777777770777777777777777777777777777777777777777777777777777777
        0777777777777777770077777777777777777777707777777777777777777777
        7777777777777777777777777777707770777777777777777777777777777777
        7777777777777777777777770777777777777777770077777777777777777777
        7077777777777777777777777777777777777777777777777777700007777777
        7777777777777777777777777777777777777777777777770777777777777777
        7700777777777777777770777077777777777777777777777777777777777777
        7777777777777077777777777777777777777777777777777777777777777777
        7777777707777777777777777700777777777777777777000777777777777777
        7777777777777777777777777777777777777077777777777777777777777777
        7777777777777777777777777777770007777777777777777700777777777777
        7777777777777777777777777777777777777777777777777777777777777000
        0077777777777777777777777777777777777777777777777777777707777777
        7777777777007777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777007777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777007777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777770077777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777770077777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7700}
    end
    object Label7: TLabel
      Left = 34
      Top = 25
      Width = 37
      Height = 13
      Caption = 'Position'
    end
    object Label8: TLabel
      Left = 10
      Top = 47
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label9: TLabel
      Left = 146
      Top = 25
      Width = 20
      Height = 13
      Caption = 'Size'
    end
    object Label10: TLabel
      Left = 199
      Top = 25
      Width = 21
      Height = 13
      Caption = 'Shift'
    end
    object Label11: TLabel
      Left = 10
      Top = 71
      Width = 6
      Height = 13
      Caption = '2'
    end
    object Label12: TLabel
      Left = 88
      Top = 25
      Width = 24
      Height = 13
      Caption = 'Color'
    end
    object Label14: TLabel
      Left = 34
      Top = 104
      Width = 49
      Height = 13
      Caption = 'Delay (ms)'
    end
    object enPos1: TeditNum
      Left = 32
      Top = 44
      Width = 45
      Height = 21
      TabOrder = 0
      Tnum = G_byte
      Max = 255.000000000000000000
      UpdateVarOnExit = False
      Decimal = 0
      Dxu = 1.000000000000000000
    end
    object enPos2: TeditNum
      Left = 32
      Top = 67
      Width = 45
      Height = 21
      TabOrder = 1
      Tnum = G_byte
      Max = 255.000000000000000000
      UpdateVarOnExit = False
      Decimal = 0
      Dxu = 1.000000000000000000
    end
    object enSize1: TeditNum
      Left = 141
      Top = 44
      Width = 47
      Height = 21
      TabOrder = 2
      Tnum = G_byte
      Max = 255.000000000000000000
      UpdateVarOnExit = False
      Decimal = 0
      Dxu = 1.000000000000000000
    end
    object enSize2: TeditNum
      Left = 141
      Top = 67
      Width = 47
      Height = 21
      TabOrder = 3
      Tnum = G_byte
      Max = 255.000000000000000000
      UpdateVarOnExit = False
      Decimal = 0
      Dxu = 1.000000000000000000
    end
    object enShift1: TeditNum
      Left = 194
      Top = 44
      Width = 47
      Height = 21
      TabOrder = 4
      Tnum = G_byte
      Max = 255.000000000000000000
      UpdateVarOnExit = False
      Decimal = 0
      Dxu = 1.000000000000000000
    end
    object enShift2: TeditNum
      Left = 194
      Top = 67
      Width = 47
      Height = 21
      TabOrder = 5
      Tnum = G_byte
      Max = 255.000000000000000000
      UpdateVarOnExit = False
      Decimal = 0
      Dxu = 1.000000000000000000
    end
    object enDelay: TeditNum
      Left = 109
      Top = 101
      Width = 77
      Height = 21
      TabOrder = 6
      Tnum = G_byte
      Max = 255.000000000000000000
      UpdateVarOnExit = False
      Decimal = 0
      Dxu = 1.000000000000000000
    end
    object Bcol1: TBitBtn
      Left = 119
      Top = 47
      Width = 14
      Height = 14
      TabOrder = 7
      OnClick = Bcol1Click
      Glyph.Data = {
        BE000000424DBE00000000000000760000002800000009000000090000000100
        0400000000004800000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333000
        0000333333333000000000333300300000003003300330000000330000333000
        0000333003333000000033000033300000003003300330000000003333003000
        0000}
    end
    object Pcol1: TPanel
      Left = 87
      Top = 45
      Width = 30
      Height = 20
      TabOrder = 8
    end
    object Pcol2: TPanel
      Left = 87
      Top = 67
      Width = 30
      Height = 20
      TabOrder = 9
    end
    object Bcol2: TBitBtn
      Left = 119
      Top = 69
      Width = 14
      Height = 14
      TabOrder = 10
      OnClick = Bcol2Click
      Glyph.Data = {
        BE000000424DBE00000000000000760000002800000009000000090000000100
        0400000000004800000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333000
        0000333333333000000000333300300000003003300330000000330000333000
        0000333003333000000033000033300000003003300330000000003333003000
        0000}
    end
  end
  object CbtrackedObj: TComboBox
    Left = 103
    Top = 427
    Width = 157
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
  end
  object BOK: TButton
    Left = 105
    Top = 471
    Width = 74
    Height = 20
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 4
  end
  object Bcancel: TButton
    Left = 217
    Top = 471
    Width = 74
    Height = 20
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 5
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 81
    Width = 410
    Height = 87
    Align = alTop
    Caption = 'Synchronization inputs'
    TabOrder = 6
    object Label15: TLabel
      Left = 14
      Top = 28
      Width = 39
      Height = 13
      Caption = 'Synchro'
    end
    object Label16: TLabel
      Left = 14
      Top = 52
      Width = 33
      Height = 13
      Caption = 'Control'
    end
    object cbSynchro: TcomboBoxV
      Left = 72
      Top = 25
      Width = 78
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'Vtag1'
      Tnum = G_byte
      UpdateVarOnExit = False
      UpdateVarOnChange = False
    end
    object cbControl: TcomboBoxV
      Left = 72
      Top = 49
      Width = 78
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = 'Vtag2'
      Tnum = G_byte
      UpdateVarOnExit = False
      UpdateVarOnChange = False
    end
  end
  object ColorDialog1: TColorDialog
    Left = 360
    Top = 486
  end
end
