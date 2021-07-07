object Form5: TForm5
  Left = 0
  Top = 0
  Caption = #1047#1072#1082#1072#1079#1099
  ClientHeight = 557
  ClientWidth = 750
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
  object Image1: TImage
    Left = 504
    Top = 375
    Width = 238
    Height = 141
    Stretch = True
  end
  object GridPanel1: TGridPanel
    Left = 8
    Top = 24
    Width = 737
    Height = 297
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
        Column = 2
        Control = Label6
        Row = 2
      end
      item
        Column = 3
        Control = DateTimePicker2
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
        Column = 2
        Control = Label8
        Row = 3
      end
      item
        Column = 3
        Control = DBComboBox1
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
        Row = 4
      end
      item
        Column = 3
        Control = DBEdit6
        Row = 4
      end
      item
        Column = 2
        Control = Label12
        Row = 5
      end
      item
        Column = 3
        Control = DBEdit7
        Row = 5
      end
      item
        Column = 2
        Control = Label13
        Row = 1
      end
      item
        Column = 3
        Control = DBEdit8
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
    TabOrder = 0
    DesignSize = (
      737
      297)
    object Label1: TLabel
      Left = 22
      Top = 19
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = 'ID '#1047#1072#1082#1072#1079#1072
      ExplicitTop = 18
    end
    object DBEdit1: TDBEdit
      Left = 215
      Top = 15
      Width = 120
      Height = 21
      Anchors = []
      Color = clWhite
      DataField = 'id_'#1079#1072#1082#1072#1079
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnChange = DBEdit1Change
    end
    object Label2: TLabel
      Left = 388
      Top = 19
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = 'ID '#1059#1089#1083#1091#1075#1080
      ExplicitLeft = 441
      ExplicitTop = 17
    end
    object DBEdit2: TDBEdit
      Left = 583
      Top = 15
      Width = 120
      Height = 21
      Anchors = []
      DataField = 'id_'#1091#1089#1083#1091#1075#1072
      DataSource = DataSource1
      TabOrder = 1
      OnDblClick = DBEdit2DblClick
      OnKeyPress = DBEdit3KeyPress
    end
    object Label3: TLabel
      Left = 22
      Top = 68
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = 'ID '#1050#1083#1080#1077#1085#1090#1072
      ExplicitLeft = 14
      ExplicitTop = -2
    end
    object DBEdit3: TDBEdit
      Left = 215
      Top = 64
      Width = 120
      Height = 21
      Anchors = []
      DataField = 'id_'#1082#1083#1080#1077#1085#1090
      DataSource = DataSource1
      MaxLength = 4
      TabOrder = 2
      OnDblClick = DBEdit3DblClick
      OnKeyPress = DBEdit3KeyPress
    end
    object Label5: TLabel
      Left = 22
      Top = 117
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1044#1072#1090#1072
      ExplicitLeft = 1
      ExplicitTop = 107
    end
    object DateTimePicker1: TDateTimePicker
      Left = 215
      Top = 113
      Width = 120
      Height = 21
      Anchors = []
      Date = 42535.419429432870000000
      Time = 42535.419429432870000000
      TabOrder = 3
      OnChange = DateTimePicker1Change
      OnKeyPress = DateTimePicker1KeyPress
    end
    object Label6: TLabel
      Left = 388
      Top = 117
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1042#1088#1077#1084#1103
      ExplicitLeft = 69
      ExplicitTop = 107
    end
    object DateTimePicker2: TDateTimePicker
      Left = 583
      Top = 113
      Width = 120
      Height = 21
      Anchors = []
      Date = 42535.421790717590000000
      Format = 'hh:mm:ss'
      Time = 42535.421790717590000000
      Kind = dtkTime
      TabOrder = 4
      OnChange = DateTimePicker2Change
      OnKeyPress = DateTimePicker1KeyPress
    end
    object Label7: TLabel
      Left = 22
      Top = 166
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1055#1086' '#1072#1073#1086#1085#1077#1084#1077#1085#1090#1091
      ExplicitLeft = 1
      ExplicitTop = 152
    end
    object DBCheckBox1: TDBCheckBox
      Left = 215
      Top = 164
      Width = 120
      Height = 17
      Anchors = []
      Caption = #1055#1086' '#1072#1073#1086#1085#1077#1084#1077#1085#1090#1091
      DataField = #1040#1073#1086#1085#1077#1084#1077#1085#1090'_'#1079#1072#1082#1072#1079
      DataSource = DataSource1
      TabOrder = 5
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object Label8: TLabel
      Left = 388
      Top = 166
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' ('#1096#1090'.)'
      ExplicitLeft = 69
      ExplicitTop = 152
    end
    object DBComboBox1: TDBComboBox
      Left = 583
      Top = 162
      Width = 120
      Height = 21
      Anchors = []
      DataField = #1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1079#1072#1082#1072#1079
      DataSource = DataSource1
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
      TabOrder = 6
      OnKeyPress = DBEdit3KeyPress
    end
    object Label9: TLabel
      Left = 22
      Top = 215
      Width = 140
      Height = 13
      Hint = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1079#1072' '#1086#1076#1085#1091' '#1077#1076#1080#1085#1080#1094#1091' '#1091#1089#1083#1091#1075#1080
      Anchors = []
      AutoSize = False
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '
      ParentShowHint = False
      ShowHint = True
      ExplicitLeft = 1
      ExplicitTop = 197
    end
    object DBEdit5: TDBEdit
      Left = 215
      Top = 211
      Width = 120
      Height = 21
      Anchors = []
      DataField = #1062#1077#1085#1072'_'#1091#1089#1083#1091#1075#1072
      DataSource = Form10.DataSource1
      TabOrder = 7
      OnKeyPress = DBEdit3KeyPress
    end
    object Label10: TLabel
      Left = 388
      Top = 215
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1057#1082#1080#1076#1082#1072
      ExplicitLeft = 69
      ExplicitTop = 197
    end
    object DBEdit6: TDBEdit
      Left = 583
      Top = 211
      Width = 120
      Height = 21
      Anchors = []
      DataField = #1089#1082#1080#1076#1082#1072
      DataSource = DataSource1
      TabOrder = 8
      OnKeyPress = DBEdit3KeyPress
    end
    object Label12: TLabel
      Left = 388
      Top = 264
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1054#1087#1083#1072#1095#1077#1085#1086
      ExplicitTop = 241
    end
    object DBEdit7: TDBEdit
      Left = 583
      Top = 260
      Width = 120
      Height = 21
      Anchors = []
      DataField = #1054#1087#1083#1072#1095#1077#1085#1086'_'#1047#1072#1082#1072#1079
      DataSource = DataSource1
      TabOrder = 9
      OnKeyPress = DBEdit3KeyPress
    end
    object Label13: TLabel
      Left = 388
      Top = 68
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = 'ID_'#1057#1086#1090#1088#1091#1076#1085#1080#1082#1072
      ExplicitLeft = 419
    end
    object DBEdit8: TDBEdit
      Left = 582
      Top = 64
      Width = 121
      Height = 21
      Anchors = []
      DataField = 'id_'#1089#1086#1090#1088#1091#1076#1085#1080#1082
      DataSource = DataSource1
      TabOrder = 10
      OnDblClick = DBEdit8DblClick
    end
    object Label11: TLabel
      Left = 22
      Top = 264
      Width = 140
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = #1050' '#1086#1087#1083#1072#1090#1077
    end
    object Edit1: TEdit
      Left = 215
      Top = 260
      Width = 120
      Height = 21
      Anchors = []
      TabOrder = 11
      OnChange = Edit1Change
      OnClick = Edit1Click
      OnKeyPress = DBEdit3KeyPress
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 532
    Width = 750
    Height = 25
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 1
    OnClick = DBNavigator1Click
  end
  object DBRichEdit1: TDBRichEdit
    Left = 8
    Top = 375
    Width = 369
    Height = 141
    DataField = #1086#1087#1080#1089#1072#1085#1080#1077'_'#1091#1089#1083#1091#1075#1072
    DataSource = DataSource1
    TabOrder = 2
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 750
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 88
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 3
    object ToolButton3: TToolButton
      Left = 0
      Top = 0
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1082#1072#1079
      ImageIndex = 1
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 88
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 96
      Top = 0
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1082#1072#1079
      ImageIndex = 2
      OnClick = ToolButton5Click
    end
    object ToolButton6: TToolButton
      Left = 184
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton1: TToolButton
      Left = 192
      Top = 0
      Caption = #1055#1077#1095#1072#1090#1100' '#1095#1077#1082#1072
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 280
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object ToolButton7: TToolButton
      Left = 288
      Top = 0
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 1
      OnClick = ToolButton7Click
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQuery1AfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1047#1072#1082#1072#1079#1099'.id_'#1091#1089#1083#1091#1075#1072', '#1047#1072#1082#1072#1079#1099'.id_'#1079#1072#1082#1072#1079', '#1047#1072#1082#1072#1079#1099'.id_'#1082#1083#1080#1077#1085#1090', '#1047#1072#1082#1072 +
        #1079#1099'.'#1054#1087#1083#1072#1095#1077#1085#1086'_'#1047#1072#1082#1072#1079', '#1047#1072#1082#1072#1079#1099'.'#1089#1082#1080#1076#1082#1072', '#1047#1072#1082#1072#1079#1099'.'#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1079#1072#1082#1072#1079', '#1047#1072#1082#1072#1079 +
        #1099'.'#1086#1089#1090#1072#1083#1086#1089#1100'_'#1091#1089#1083#1091#1075#1080', '#1047#1072#1082#1072#1079#1099'.id_'#1091#1089#1083#1091#1075#1072', '#1047#1072#1082#1072#1079#1099'.id_'#1089#1086#1090#1088#1091#1076#1085#1080#1082', '#1047#1072#1082#1072#1079#1099 +
        '.'#1040#1073#1086#1085#1077#1084#1077#1085#1090'_'#1079#1072#1082#1072#1079', '#1047#1072#1082#1072#1079#1099'.'#1076#1072#1090#1072'_'#1079#1072#1082#1072#1079#1072', '#1047#1072#1082#1072#1079#1099'.'#1074#1088#1077#1084#1103'_'#1079#1072#1082#1072#1079#1072','#1059#1089#1083#1091#1075#1080 +
        '.'#1048#1084#1103'_'#1091#1089#1083#1091#1075#1072', '#1059#1089#1083#1091#1075#1080'.'#1086#1087#1080#1089#1072#1085#1080#1077'_'#1091#1089#1083#1091#1075#1072', '#1059#1089#1083#1091#1075#1080'.'#1062#1077#1085#1072'_'#1091#1089#1083#1091#1075#1072', '#1059#1089#1083#1091#1075#1080'.' +
        'image, '#1050#1083#1080#1077#1085#1090#1099'.'#1048#1084#1103', '#1050#1083#1080#1077#1085#1090#1099'.'#1060#1072#1084#1080#1083#1080#1103', '#1050#1083#1080#1077#1085#1090#1099'.'#1054#1090#1095#1077#1089#1090#1074#1086' FROM '#1047#1072#1082#1072#1079 +
        #1099', '#1059#1089#1083#1091#1075#1080', '#1050#1083#1080#1077#1085#1090#1099', '#1052#1077#1085#1077#1076#1078#1077#1088#1099
      
        'WHERE '#1047#1072#1082#1072#1079#1099'.id_'#1091#1089#1083#1091#1075#1072' = '#1059#1089#1083#1091#1075#1080'.id_'#1091#1089#1083#1091#1075#1072' AND '#1047#1072#1082#1072#1079#1099'.id_'#1082#1083#1080#1077#1085#1090' =' +
        ' '#1050#1083#1080#1077#1085#1090#1099'.id_'#1082#1083#1080#1077#1085#1090' AND '#1047#1072#1082#1072#1079#1099'.id_'#1057#1086#1090#1088#1091#1076#1085#1080#1082' = '#1052#1077#1085#1077#1076#1078#1077#1088#1099'.id_'#1089#1086#1090#1088#1091#1076 +
        #1085#1080#1082)
    Left = 488
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 528
    Top = 16
  end
end
