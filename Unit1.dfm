object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1054#1087#1077#1088#1072#1094#1080#1080' '#1089' '#1091#1089#1083#1091#1075#1072#1084#1080
  ClientHeight = 455
  ClientWidth = 763
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
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 763
    Height = 378
    Align = alTop
    TabOrder = 0
    DesignSize = (
      763
      378)
    object Image1: TImage
      Left = 479
      Top = 8
      Width = 272
      Height = 153
      Stretch = True
    end
    object GridPanel1: TGridPanel
      Left = 3
      Top = 6
      Width = 470
      Height = 331
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
          Control = DBCheckBox1
          Row = 3
        end
        item
          Column = 0
          Control = Label5
          Row = 4
        end
        item
          Column = 1
          Control = DBMemo2
          Row = 4
        end
        item
          Column = 0
          Control = Label6
          Row = 5
        end
        item
          Column = 1
          Control = DBEdit4
          Row = 5
        end>
      RowCollection = <
        item
          Value = 14.285714285714280000
        end
        item
          Value = 14.285714285714280000
        end
        item
          Value = 14.285714285714280000
        end
        item
          Value = 14.285714285714280000
        end
        item
          Value = 14.285714285714280000
        end
        item
          Value = 14.285714285714280000
        end
        item
          Value = 14.285714285714280000
        end
        item
          SizeStyle = ssAuto
        end>
      TabOrder = 0
      DesignSize = (
        470
        331)
      object Label1: TLabel
        Left = 48
        Top = 17
        Width = 140
        Height = 13
        Hint = #1059#1085#1080#1082#1072#1083#1073#1085#1099#1081' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1091#1089#1083#1091#1075#1080
        Anchors = []
        AutoSize = False
        Caption = 'ID '#1059#1089#1083#1091#1075#1080
        ParentShowHint = False
        ShowHint = True
        ExplicitLeft = 93
      end
      object DBEdit1: TDBEdit
        Left = 262
        Top = 13
        Width = 180
        Height = 21
        Hint = #1059#1085#1080#1082#1072#1083#1073#1085#1099#1081' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1091#1089#1083#1091#1075#1080
        Anchors = []
        DataField = 'id_'#1091#1089#1083#1091#1075#1072
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInfoText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        ExplicitTop = 14
      end
      object Label2: TLabel
        Left = 48
        Top = 63
        Width = 140
        Height = 13
        Hint = #1053#1072#1079#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
        Anchors = []
        AutoSize = False
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        ParentShowHint = False
        ShowHint = True
        ExplicitLeft = 94
      end
      object DBEdit2: TDBEdit
        Left = 262
        Top = 59
        Width = 180
        Height = 21
        Hint = #1053#1072#1079#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
        Anchors = []
        DataField = #1048#1084#1103'_'#1091#1089#1083#1091#1075#1072
        DataSource = DataSource1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyPress = DBEdit2KeyPress
        ExplicitTop = 61
      end
      object Label3: TLabel
        Left = 48
        Top = 109
        Width = 140
        Height = 13
        Hint = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1086#1076#1085#1086#1081' '#1077#1076#1080#1085#1080#1094#1099' '#1091#1089#1083#1091#1075#1080
        Anchors = []
        AutoSize = False
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' ('#1042' '#1088#1091#1073#1083#1103#1093')'
        ParentShowHint = False
        ShowHint = True
        ExplicitLeft = 91
      end
      object DBEdit3: TDBEdit
        Left = 262
        Top = 105
        Width = 180
        Height = 21
        Hint = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1086#1076#1085#1086#1081' '#1077#1076#1080#1085#1080#1094#1099' '#1091#1089#1083#1091#1075#1080
        Anchors = []
        DataField = #1062#1077#1085#1072'_'#1091#1089#1083#1091#1075#1072
        DataSource = DataSource1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyPress = DBEdit3KeyPress
        ExplicitTop = 108
      end
      object Label4: TLabel
        Left = 48
        Top = 155
        Width = 140
        Height = 13
        Anchors = []
        AutoSize = False
        Caption = #1058#1080#1087' '#1091#1089#1083#1091#1075#1080
        ExplicitLeft = 90
        ExplicitTop = 159
      end
      object DBCheckBox1: TDBCheckBox
        Left = 262
        Top = 153
        Width = 180
        Height = 17
        Anchors = []
        Caption = #1048#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1072#1103
        DataField = #1058#1080#1087'_'#1091#1089#1083#1091#1075#1072
        DataSource = DataSource1
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ExplicitTop = 157
      end
      object Label5: TLabel
        Left = 48
        Top = 201
        Width = 140
        Height = 13
        Anchors = []
        AutoSize = False
        Caption = #1055#1088#1086#1095#1077#1077
        ExplicitLeft = 99
        ExplicitTop = 206
      end
      object DBMemo2: TDBMemo
        Left = 262
        Top = 188
        Width = 180
        Height = 40
        Anchors = []
        DataField = #1087#1088#1086#1095#1077#1077'_'#1091#1089#1083#1091#1075#1072
        DataSource = DataSource1
        TabOrder = 4
        ExplicitTop = 192
      end
      object Label6: TLabel
        Left = 48
        Top = 247
        Width = 140
        Height = 13
        Anchors = []
        AutoSize = False
        Caption = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
        ExplicitLeft = 84
      end
      object DBEdit4: TDBEdit
        Left = 262
        Top = 243
        Width = 180
        Height = 21
        Anchors = []
        AutoSize = False
        DataField = 'image'
        DataSource = DataSource1
        TabOrder = 5
        OnDblClick = DBEdit4DblClick
        ExplicitTop = 249
      end
    end
    object DBMemo1: TDBMemo
      Left = 479
      Top = 167
      Width = 272
      Height = 164
      Hint = #1055#1086#1076#1088#1086#1088#1073#1085#1086#1077' '#1086#1087#1080#1089#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
      Anchors = []
      DataField = #1086#1087#1080#1089#1072#1085#1080#1077'_'#1091#1089#1083#1091#1075#1072
      DataSource = DataSource1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 384
    Width = 763
    Height = 43
    Align = alBottom
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    AlignWithMargins = True
    Left = 3
    Top = 430
    Width = 757
    Height = 22
    DataSource = DataSource1
    Align = alBottom
    Constraints.MaxHeight = 40
    TabOrder = 2
    OnClick = DBNavigator1Click
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 763
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 94
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 3
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1091#1089#1083#1091#1075#1091
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton4: TToolButton
      Left = 94
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 102
      Top = 0
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1091#1089#1083#1091#1075#1091
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton5: TToolButton
      Left = 196
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton7: TToolButton
      Left = 204
      Top = 0
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 3
      OnClick = ToolButton7Click
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 448
    Top = 272
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM '#1059#1089#1083#1091#1075#1080)
    Left = 520
    Top = 352
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 488
    Top = 344
  end
end
