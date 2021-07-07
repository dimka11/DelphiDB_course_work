object Form13: TForm13
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1074#1099#1073#1086#1088#1072' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
  ClientHeight = 394
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 659
    Height = 320
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 320
    Width = 659
    Height = 74
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 312
      Top = 1
      Width = 113
      Height = 40
      Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 312
      Top = 40
      Width = 113
      Height = 32
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT id_'#1089#1086#1090#1088#1091#1076#1085#1080#1082', '#1060#1072#1084#1080#1083#1080#1103', '#1048#1084#1103', '#1054#1090#1095#1077#1089#1090#1074#1086', '#1044#1086#1083#1078#1085#1086#1089#1090#1100' FROM '#1052#1077#1085#1077 +
        #1076#1078#1077#1088#1099)
    Left = 416
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 336
    Top = 136
  end
end
