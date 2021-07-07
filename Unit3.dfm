object Form4: TForm4
  Left = 0
  Top = 0
  Caption = #1050#1083#1080#1077#1085#1090#1099
  ClientHeight = 416
  ClientWidth = 563
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 391
    Width = 563
    Height = 25
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 0
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 29
    Width = 563
    Height = 362
    Align = alClient
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Label1
        Row = 0
      end
      item
        Column = 1
        Control = DBEdit1
        Row = 0
      end
      item
        Column = 0
        Control = Label2
        Row = 1
      end
      item
        Column = 1
        Control = DBEdit2
        Row = 1
      end
      item
        Column = 0
        Control = Label3
        Row = 2
      end
      item
        Column = 1
        Control = DBEdit3
        Row = 2
      end
      item
        Column = 0
        Control = Label4
        Row = 3
      end
      item
        Column = 1
        Control = DBEdit4
        Row = 3
      end
      item
        Column = 0
        Control = Label5
        Row = 4
      end
      item
        Column = 1
        Control = DBEdit5
        Row = 4
      end
      item
        Column = 0
        Control = Label6
        Row = 5
      end
      item
        Column = 0
        Control = Label7
        Row = 6
      end
      item
        Column = 1
        Control = DBEdit7
        Row = 6
      end
      item
        Column = 0
        Control = Label8
        Row = 7
      end
      item
        Column = 1
        Control = DBMemo1
        Row = 7
      end
      item
        Column = 1
        Control = DBRichEdit1
        Row = 5
      end>
    RowCollection = <
      item
        Value = 12.500000000000000000
      end
      item
        Value = 12.500000000000000000
      end
      item
        Value = 12.500000000000000000
      end
      item
        Value = 12.500000000000000000
      end
      item
        Value = 12.500000000000000000
      end
      item
        Value = 12.500000000000000000
      end
      item
        Value = 12.500000000000000000
      end
      item
        Value = 12.500000000000000000
      end
      item
        SizeStyle = ssAuto
      end>
    TabOrder = 1
    ExplicitTop = 35
    DesignSize = (
      563
      362)
    object Label1: TLabel
      Left = 71
      Top = 17
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = 'ID'
      ExplicitLeft = 99
      ExplicitTop = 16
    end
    object DBEdit1: TDBEdit
      Left = 331
      Top = 13
      Width = 180
      Height = 21
      Anchors = []
      DataField = #8470
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Label2: TLabel
      Left = 71
      Top = 62
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1060#1072#1084#1080#1083#1080#1103
      ExplicitLeft = 83
      ExplicitTop = 59
    end
    object DBEdit2: TDBEdit
      Left = 331
      Top = 58
      Width = 180
      Height = 21
      Anchors = []
      DataField = #1060#1072#1084#1080#1083#1080#1103
      DataSource = DataSource1
      MaxLength = 20
      TabOrder = 1
      OnChange = DBEdit2Change
      OnKeyPress = DBEdit2KeyPress
    end
    object Label3: TLabel
      Left = 71
      Top = 107
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1048#1084#1103
      ExplicitLeft = 95
      ExplicitTop = 102
    end
    object DBEdit3: TDBEdit
      Left = 331
      Top = 103
      Width = 180
      Height = 21
      Anchors = []
      DataField = #1048#1084#1103
      DataSource = DataSource1
      MaxLength = 20
      TabOrder = 2
      OnChange = DBEdit2Change
      OnKeyPress = DBEdit2KeyPress
    end
    object Label4: TLabel
      Left = 71
      Top = 152
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
      ExplicitLeft = 80
      ExplicitTop = 145
    end
    object DBEdit4: TDBEdit
      Left = 331
      Top = 148
      Width = 180
      Height = 21
      Anchors = []
      DataField = #1054#1090#1095#1077#1089#1090#1074#1086
      DataSource = DataSource1
      MaxLength = 20
      TabOrder = 3
      OnChange = DBEdit2Change
      OnKeyPress = DBEdit2KeyPress
    end
    object Label5: TLabel
      Left = 71
      Top = 197
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1058#1077#1083#1077#1092#1086#1085
      ExplicitLeft = 83
      ExplicitTop = 188
    end
    object DBEdit5: TDBEdit
      Left = 331
      Top = 193
      Width = 180
      Height = 21
      Anchors = []
      DataField = #1058#1077#1083#1077#1092#1086#1085
      DataSource = DataSource1
      MaxLength = 14
      TabOrder = 4
      OnKeyPress = DBEdit7KeyPress
    end
    object Label6: TLabel
      Left = 71
      Top = 242
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1040#1076#1088#1077#1089
      ExplicitLeft = 89
      ExplicitTop = 231
    end
    object Label7: TLabel
      Left = 71
      Top = 287
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1055#1072#1089#1087#1086#1088#1090' ('#1057#1077#1088#1080#1103' '#1053#1086#1084#1077#1088')'
      ExplicitLeft = 46
      ExplicitTop = 274
    end
    object DBEdit7: TDBEdit
      Left = 331
      Top = 283
      Width = 180
      Height = 21
      Anchors = []
      DataField = #1055#1072#1089#1087#1086#1088#1090
      DataSource = DataSource1
      MaxLength = 20
      TabOrder = 5
      OnKeyPress = DBMemo1KeyPress
    end
    object Label8: TLabel
      Left = 71
      Top = 332
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1055#1088#1086#1095#1077#1077
      ExplicitLeft = 86
      ExplicitTop = 317
    end
    object DBMemo1: TDBMemo
      Left = 329
      Top = 320
      Width = 185
      Height = 37
      Anchors = []
      DataField = #1055#1088#1086#1095#1077#1077
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBRichEdit1: TDBRichEdit
      Left = 331
      Top = 238
      Width = 180
      Height = 21
      Anchors = []
      DataField = #1040#1076#1088#1077#1089
      DataSource = DataSource1
      TabOrder = 7
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 563
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 102
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 2
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton4: TToolButton
      Left = 102
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 110
      Top = 0
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton5: TToolButton
      Left = 212
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 220
      Top = 0
      Caption = #1044#1086#1075#1086#1074#1086#1088
      ImageIndex = 2
      OnClick = ToolButton3Click
    end
    object ToolButton6: TToolButton
      Left = 322
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton7: TToolButton
      Left = 330
      Top = 0
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 3
      OnClick = ToolButton7Click
    end
    object ToolButton8: TToolButton
      Left = 432
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 440
      Top = 0
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1082#1072#1079
      ImageIndex = 4
      OnClick = ToolButton9Click
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 304
    Top = 24
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT id_'#1082#1083#1080#1077#1085#1090' AS '#8470', '#1060#1072#1084#1080#1083#1080#1103', '#1048#1084#1103', '#1054#1090#1095#1077#1089#1090#1074#1086', '#1058#1077#1083#1077#1092#1086#1085', '#1040#1076#1088#1077#1089', '#1055 +
        #1088#1086#1095#1077#1077', '#1055#1072#1089#1087#1086#1088#1090' FROM '#1050#1083#1080#1077#1085#1090#1099
      'ORDER BY id_'#1050#1083#1080#1077#1085#1090)
    Left = 272
    Top = 24
  end
end
