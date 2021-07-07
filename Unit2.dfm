object Form3: TForm3
  Left = 0
  Top = 0
  AutoSize = True
  Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
  ClientHeight = 440
  ClientWidth = 508
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
  object GridPanel1: TGridPanel
    Left = 0
    Top = 29
    Width = 508
    Height = 378
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
        Column = 1
        Control = DBEdit6
        Row = 5
      end
      item
        Column = 0
        Control = Label7
        Row = 6
      end
      item
        Column = 1
        Control = DBMemo1
        Row = 6
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
      end>
    TabOrder = 0
    DesignSize = (
      508
      378)
    object Label1: TLabel
      Left = 57
      Top = 18
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = 'ID'
      ExplicitLeft = 112
      ExplicitTop = 16
    end
    object DBEdit1: TDBEdit
      Left = 290
      Top = 14
      Width = 180
      Height = 21
      Anchors = []
      DataField = #8470
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = cl3DLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Label2: TLabel
      Left = 57
      Top = 65
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1060#1072#1084#1080#1083#1080#1103
      ExplicitLeft = 95
      ExplicitTop = 60
    end
    object DBEdit2: TDBEdit
      Left = 290
      Top = 61
      Width = 180
      Height = 21
      Anchors = []
      DataField = #1060#1072#1084#1080#1083#1080#1103
      DataSource = DataSource1
      TabOrder = 1
      OnKeyPress = DBEdit2KeyPress
    end
    object Label3: TLabel
      Left = 57
      Top = 112
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1048#1084#1103
      ExplicitLeft = 108
      ExplicitTop = 104
    end
    object DBEdit3: TDBEdit
      Left = 290
      Top = 108
      Width = 180
      Height = 21
      Anchors = []
      DataField = #1048#1084#1103
      DataSource = DataSource1
      TabOrder = 2
      OnKeyPress = DBEdit2KeyPress
    end
    object Label4: TLabel
      Left = 57
      Top = 159
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
      ExplicitLeft = 93
      ExplicitTop = 148
    end
    object DBEdit4: TDBEdit
      Left = 290
      Top = 155
      Width = 180
      Height = 21
      Anchors = []
      DataField = #1054#1090#1095#1077#1089#1090#1074#1086
      DataSource = DataSource1
      TabOrder = 3
      OnKeyPress = DBEdit2KeyPress
    end
    object Label5: TLabel
      Left = 57
      Top = 206
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      ExplicitLeft = 89
      ExplicitTop = 192
    end
    object DBEdit5: TDBEdit
      Left = 290
      Top = 202
      Width = 180
      Height = 21
      Anchors = []
      DataField = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      DataSource = DataSource1
      TabOrder = 4
      OnKeyPress = DBEdit2KeyPress
    end
    object Label6: TLabel
      Left = 57
      Top = 253
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1056#1072#1073#1086#1095#1080#1077' '#1089#1084#1077#1085#1099
      ExplicitLeft = 79
      ExplicitTop = 236
    end
    object DBEdit6: TDBEdit
      Left = 290
      Top = 249
      Width = 180
      Height = 21
      Anchors = []
      DataField = #1042#1088#1077#1084#1103
      DataSource = DataSource1
      TabOrder = 5
      OnKeyPress = DBEdit6KeyPress
    end
    object Label7: TLabel
      Left = 57
      Top = 300
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1055#1088#1086#1095#1077#1077
      ExplicitLeft = 99
      ExplicitTop = 280
    end
    object DBMemo1: TDBMemo
      Left = 290
      Top = 288
      Width = 180
      Height = 37
      Anchors = []
      DataField = #1055#1088#1086#1095#1077#1077
      DataSource = DataSource1
      TabOrder = 6
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 407
    Width = 508
    Height = 33
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 1
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 508
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 120
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 2
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton4: TToolButton
      Left = 120
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 128
      Top = 0
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton5: TToolButton
      Left = 248
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton7: TToolButton
      Left = 256
      Top = 0
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 3
      OnClick = ToolButton7Click
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT id_'#1057#1086#1090#1088#1091#1076#1085#1080#1082' AS '#8470', '#1060#1072#1084#1080#1083#1080#1103', '#1048#1084#1103', '#1054#1090#1095#1077#1089#1090#1074#1086', '#1044#1086#1083#1078#1085#1086#1089#1090#1100', '#1042#1088#1077 +
        #1084#1103', '#1055#1088#1086#1095#1077#1077' FROM '#1052#1077#1085#1077#1076#1078#1077#1088#1099' ORDER BY id_'#1057#1086#1090#1088#1091#1076#1085#1080#1082)
    Left = 280
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 320
    Top = 296
  end
end
