object Form15: TForm15
  Left = 0
  Top = 0
  Caption = #1053#1077#1086#1087#1083#1072#1095#1077#1085#1085#1099#1077' '#1079#1072#1082#1072#1079#1099
  ClientHeight = 418
  ClientWidth = 758
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 758
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 81
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = #1055#1077#1095#1072#1090#1100' '#1095#1077#1082#1072
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 81
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 89
      Top = 0
      Caption = #1047#1072#1082#1072#1079' '#1086#1087#1083#1072#1095#1077#1085
      ImageIndex = 1
      OnClick = ToolButton3Click
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 397
    Width = 758
    Height = 21
    DataSource = DataSourceBin
    Align = alBottom
    TabOrder = 1
    OnClick = DBNavigator1Click
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 29
    Width = 758
    Height = 368
    Align = alClient
    ColumnCollection = <
      item
        Value = 25.000000000000000000
      end
      item
        Value = 25.000000000000000000
      end
      item
        Value = 25.000000000000000000
      end
      item
        Value = 25.000000000000000000
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
        Column = 2
        Control = Label2
        Row = 0
      end
      item
        Column = 3
        Control = DBEdit2
        Row = 0
      end
      item
        Column = 0
        Control = Label3
        Row = 1
      end
      item
        Column = 1
        Control = DBEdit3
        Row = 1
      end
      item
        Column = 0
        Control = Label5
        Row = 2
      end
      item
        Column = 1
        Control = DateTimePicker1
        Row = 2
      end
      item
        Column = 0
        Control = Label7
        Row = 3
      end
      item
        Column = 1
        Control = DBCheckBox1
        Row = 3
      end
      item
        Column = 0
        Control = Label9
        Row = 4
      end
      item
        Column = 1
        Control = DBEdit5
        Row = 4
      end
      item
        Column = 2
        Control = Label10
        Row = 1
      end
      item
        Column = 3
        Control = DBEdit7
        Row = 1
      end
      item
        Column = 0
        Control = Label11
        Row = 5
      end
      item
        Column = 1
        Control = Edit1
        Row = 5
      end
      item
        Column = 2
        Control = Label4
        Row = 2
      end
      item
        Column = 3
        Control = DBComboBox1
        Row = 2
      end
      item
        Column = 2
        Control = Label6
        Row = 3
      end
      item
        Column = 3
        Control = DBEdit4
        Row = 3
      end
      item
        Column = 2
        Control = Label8
        Row = 4
      end
      item
        Column = 3
        Control = DBEdit6
        Row = 4
      end>
    RowCollection = <
      item
        Value = 16.666666666666660000
      end
      item
        Value = 16.666666666666660000
      end
      item
        Value = 16.666666666666660000
      end
      item
        Value = 16.666666666666660000
      end
      item
        Value = 16.666666666666680000
      end
      item
        Value = 16.666666666666680000
      end>
    TabOrder = 2
    ExplicitTop = 23
    DesignSize = (
      758
      368)
    object Label1: TLabel
      Left = 25
      Top = 24
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = 'ID '#1047#1072#1082#1072#1079#1072
      ExplicitLeft = 22
      ExplicitTop = 18
    end
    object DBEdit1: TDBEdit
      Left = 224
      Top = 20
      Width = 120
      Height = 21
      Anchors = []
      DataField = #8470
      DataSource = DataSourceBin
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Label2: TLabel
      Left = 403
      Top = 24
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = 'ID '#1059#1089#1083#1091#1075#1080
      ExplicitLeft = 441
      ExplicitTop = 17
    end
    object DBEdit2: TDBEdit
      Left = 602
      Top = 20
      Width = 120
      Height = 21
      Anchors = []
      DataField = 'id_'#1091#1089#1083#1091#1075#1072
      DataSource = DataSourceBin
      TabOrder = 1
    end
    object Label3: TLabel
      Left = 25
      Top = 84
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = 'ID '#1050#1083#1080#1077#1085#1090#1072
      ExplicitLeft = 14
      ExplicitTop = -2
    end
    object DBEdit3: TDBEdit
      Left = 224
      Top = 80
      Width = 120
      Height = 21
      Anchors = []
      DataField = 'id_'#1082#1083#1080#1077#1085#1090
      DataSource = DataSourceBin
      MaxLength = 4
      TabOrder = 2
    end
    object Label5: TLabel
      Left = 25
      Top = 144
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1044#1072#1090#1072
      ExplicitLeft = 1
      ExplicitTop = 107
    end
    object DateTimePicker1: TDateTimePicker
      Left = 224
      Top = 140
      Width = 120
      Height = 21
      Anchors = []
      Date = 42535.419429432870000000
      Time = 42535.419429432870000000
      TabOrder = 3
      OnChange = DateTimePicker1Change
      OnKeyPress = DateTimePicker1KeyPress
    end
    object Label7: TLabel
      Left = 25
      Top = 204
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1055#1086' '#1072#1073#1086#1085#1077#1084#1077#1085#1090#1091
      ExplicitLeft = 1
      ExplicitTop = 152
    end
    object DBCheckBox1: TDBCheckBox
      Left = 224
      Top = 202
      Width = 120
      Height = 17
      Anchors = []
      Caption = #1055#1086' '#1072#1073#1086#1085#1077#1084#1077#1085#1090#1091
      DataField = #1055#1086' '#1072#1073#1086#1085#1077#1084#1077#1085#1090#1091
      DataSource = DataSourceBin
      TabOrder = 4
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object Label9: TLabel
      Left = 25
      Top = 265
      Width = 140
      Height = 13
      Hint = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1079#1072' '#1086#1076#1085#1091' '#1077#1076#1080#1085#1080#1094#1091' '#1091#1089#1083#1091#1075#1080
      Anchors = []
      AutoSize = False
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' ('#1088#1091#1073'.)'
      ParentShowHint = False
      ShowHint = True
      ExplicitLeft = 1
      ExplicitTop = 197
    end
    object DBEdit5: TDBEdit
      Left = 224
      Top = 261
      Width = 120
      Height = 21
      Anchors = []
      DataField = #1062#1077#1085#1072'_'#1091#1089#1083#1091#1075#1072
      DataSource = Form10.DataSource1
      TabOrder = 5
    end
    object Label10: TLabel
      Left = 403
      Top = 84
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = 'ID_'#1057#1086#1090#1088#1091#1076#1085#1080#1082#1072
      ExplicitLeft = 419
      ExplicitTop = 68
    end
    object DBEdit7: TDBEdit
      Left = 602
      Top = 80
      Width = 120
      Height = 21
      Anchors = []
      DataField = 'id_'#1089#1086#1090#1088#1091#1076#1085#1080#1082
      DataSource = DataSourceBin
      TabOrder = 6
    end
    object Label11: TLabel
      Left = 25
      Top = 328
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1050' '#1086#1087#1083#1072#1090#1077
      ExplicitLeft = 22
      ExplicitTop = 264
    end
    object Edit1: TEdit
      Left = 224
      Top = 324
      Width = 120
      Height = 21
      Anchors = []
      TabOrder = 7
      OnClick = Edit1Click
    end
    object Label4: TLabel
      Left = 403
      Top = 144
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1077#1072#1085#1089#1086#1074
      ExplicitLeft = 388
      ExplicitTop = 117
    end
    object DBComboBox1: TDBComboBox
      Left = 602
      Top = 140
      Width = 120
      Height = 21
      Anchors = []
      DataField = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      DataSource = DataSourceBin
      ItemHeight = 13
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16')
      TabOrder = 8
    end
    object Label6: TLabel
      Left = 403
      Top = 204
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1057#1082#1080#1076#1082#1072
      ExplicitLeft = 388
      ExplicitTop = 166
    end
    object DBEdit4: TDBEdit
      Left = 602
      Top = 200
      Width = 120
      Height = 21
      Anchors = []
      DataField = #1089#1082#1080#1076#1082#1072
      DataSource = DataSourceBin
      TabOrder = 9
    end
    object Label8: TLabel
      Left = 403
      Top = 265
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1054#1087#1083#1072#1095#1077#1085#1086
      ExplicitLeft = 388
      ExplicitTop = 215
    end
    object DBEdit6: TDBEdit
      Left = 602
      Top = 261
      Width = 120
      Height = 21
      Anchors = []
      DataField = #1054#1087#1083#1072#1095#1077#1085#1086
      DataSource = DataSourceBin
      TabOrder = 10
    end
  end
  object ADOQueryBin: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT id_'#1079#1072#1082#1072#1079' AS '#8470', '#1059#1089#1083#1091#1075#1080'.'#1048#1084#1103'_'#1091#1089#1083#1091#1075#1072', '#1050#1083#1080#1077#1085#1090#1099'.'#1060#1072#1084#1080#1083#1080#1103', '#1050#1083#1080#1077#1085#1090 +
        #1099'.'#1048#1084#1103', '#1050#1083#1080#1077#1085#1090#1099'.'#1054#1090#1095#1077#1089#1090#1074#1086', '#1076#1072#1090#1072'_'#1079#1072#1082#1072#1079#1072' AS '#1044#1072#1090#1072', '#1074#1088#1077#1084#1103'_'#1079#1072#1082#1072#1079#1072' AS '#1042#1088 +
        #1077#1084#1103', '#1052#1077#1085#1077#1076#1078#1077#1088#1099'.'#1060#1072#1084#1080#1083#1080#1103' AS '#1057#1086#1090#1088#1091#1076#1085#1080#1082', '#1040#1073#1086#1085#1077#1084#1077#1085#1090'_'#1079#1072#1082#1072#1079' AS ['#1055#1086' '#1072#1073#1086#1085 +
        #1077#1084#1077#1085#1090#1091'], '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1079#1072#1082#1072#1079' AS '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086', '#1054#1087#1083#1072#1095#1077#1085#1086'_'#1047#1072#1082#1072#1079' AS '#1054#1087#1083#1072#1095 +
        #1077#1085#1086','#1059#1089#1083#1091#1075#1080'.'#1062#1077#1085#1072'_'#1091#1089#1083#1091#1075#1072', '#1050#1086#1088#1079#1080#1085#1072'.id_'#1082#1083#1080#1077#1085#1090', '#1050#1086#1088#1079#1080#1085#1072'.id_'#1089#1086#1090#1088#1091#1076#1085#1080#1082',' +
        ' '#1050#1086#1088#1079#1080#1085#1072'.id_'#1091#1089#1083#1091#1075#1072', '#1057#1082#1080#1076#1082#1072
      'FROM '#1050#1086#1088#1079#1080#1085#1072', '#1059#1089#1083#1091#1075#1080', '#1050#1083#1080#1077#1085#1090#1099', '#1052#1077#1085#1077#1076#1078#1077#1088#1099
      
        'WHERE '#1050#1086#1088#1079#1080#1085#1072'.id_'#1091#1089#1083#1091#1075#1072' = '#1059#1089#1083#1091#1075#1080'.id_'#1091#1089#1083#1091#1075#1072' AND '#1050#1086#1088#1079#1080#1085#1072'.id_'#1082#1083#1080#1077#1085#1090 +
        ' = '#1050#1083#1080#1077#1085#1090#1099'.id_'#1082#1083#1080#1077#1085#1090' AND '#1050#1086#1088#1079#1080#1085#1072'.id_'#1089#1086#1090#1088#1091#1076#1085#1080#1082' = '#1052#1077#1085#1077#1076#1078#1077#1088#1099'.id_'#1057#1086#1090 +
        #1088#1091#1076#1085#1080#1082)
    Left = 384
    Top = 232
  end
  object DataSourceBin: TDataSource
    DataSet = ADOQueryBin
    Left = 344
    Top = 232
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM '#1050#1086#1088#1079#1080#1085#1072)
    Left = 720
    Top = 336
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM '#1047#1072#1082#1072#1079#1099)
    Left = 664
    Top = 344
  end
  object ADOQueryMover: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 600
    Top = 336
  end
end
