object Form10: TForm10
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1091#1089#1083#1091#1075' '#1076#1083#1103' '#1082#1083#1080#1077#1085#1090#1086#1074
  ClientHeight = 502
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 739
    Height = 296
    Align = alClient
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnColEnter = DBGrid1ColEnter
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyDown = DBGrid1KeyDown
    OnKeyUp = DBGrid1KeyUp
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 483
    Width = 739
    Height = 19
    Panels = <
      item
        Width = 250
      end
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 296
    Width = 739
    Height = 187
    Align = alBottom
    TabOrder = 2
    object Image1: TImage
      Left = 471
      Top = 6
      Width = 259
      Height = 175
      Stretch = True
    end
    object Panel2: TPanel
      Left = 319
      Top = 6
      Width = 146
      Height = 175
      TabOrder = 0
      object CancelBtn: TButton
        Left = 0
        Top = 37
        Width = 138
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 0
        OnClick = CancelBtnClick
      end
      object ConfirmBtn: TButton
        Left = 0
        Top = 6
        Width = 138
        Height = 25
        Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
        TabOrder = 1
        OnClick = ConfirmBtnClick
      end
    end
    object DBRichEdit1: TDBRichEdit
      Left = 8
      Top = 6
      Width = 305
      Height = 175
      DataField = #1086#1087#1080#1089#1072#1085#1080#1077'_'#1091#1089#1083#1091#1075#1072
      DataSource = DataSource1
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 319
      Top = 74
      Width = 138
      Height = 21
      TabOrder = 2
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 319
      Top = 101
      Width = 138
      Height = 25
      Caption = #1055#1086#1080#1089#1082
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        DataType = ftString
        Size = 9
        Value = 'id_'#1059#1089#1083#1091#1075#1072
      end
      item
        DataType = ftString
        Size = 10
        Value = #1048#1084#1103'_'#1091#1089#1083#1091#1075#1072
      end
      item
        DataType = ftString
        Size = 11
        Value = #1062#1077#1085#1072'_'#1091#1089#1083#1091#1075#1072
      end
      item
        DataType = ftString
        Size = 10
        Value = #1058#1080#1087'_'#1091#1089#1083#1091#1075#1072
      end>
    SQL.Strings = (
      'SELECT * FROM '#1059#1089#1083#1091#1075#1080)
    Left = 368
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 336
    Top = 8
  end
  object MainMenu1: TMainMenu
    Left = 400
    Top = 8
    object N1: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      object N9: TMenuItem
        Caption = #1042#1099#1093#1086#1076' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
        OnClick = N9Click
      end
      object N10: TMenuItem
        Caption = #1057#1084#1077#1085#1072' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
        OnClick = N10Click
      end
    end
    object N4: TMenuItem
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
      object N21: TMenuItem
        Tag = 1
        Caption = #1055#1086' id'
        OnClick = N21Click
      end
      object N22: TMenuItem
        Tag = 2
        Caption = #1055#1086' '#1085#1072#1079#1074#1072#1085#1080#1102' '#1091#1089#1083#1091#1075#1080
        OnClick = N21Click
      end
      object N23: TMenuItem
        Tag = 3
        Caption = #1055#1086' '#1089#1090#1086#1080#1084#1086#1089#1090#1080
        OnClick = N21Click
      end
      object N24: TMenuItem
        Tag = 4
        Caption = #1055#1086' '#1090#1080#1087#1091
        OnClick = N21Click
      end
    end
    object N8: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      object N2: TMenuItem
        Caption = #1055#1088#1072#1081#1089' '#1083#1080#1089#1090
        OnClick = N2Click
      end
    end
    object N3: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = N3Click
    end
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT id_'#1091#1089#1083#1091#1075#1072' AS ID, '#1080#1084#1103'_'#1091#1089#1083#1091#1075#1072' AS '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077', '#1094#1077#1085#1072'_'#1091#1089#1083#1091#1075#1072' ' +
        'AS '#1062#1077#1085#1072' FROM '#1059#1089#1083#1091#1075#1080)
    Left = 448
    Top = 8
  end
  object ADOQuery3: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ms')
    Left = 448
    Top = 112
  end
end
