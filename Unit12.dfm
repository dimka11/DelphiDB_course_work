object Form12: TForm12
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1074#1099#1073#1086#1088#1072' '#1082#1083#1080#1077#1085#1090#1072
  ClientHeight = 327
  ClientWidth = 695
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
    Width = 695
    Height = 231
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
    Top = 231
    Width = 695
    Height = 96
    Align = alBottom
    TabOrder = 1
    object ConfirmBtn: TButton
      Left = 264
      Top = 48
      Width = 185
      Height = 25
      Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
      TabOrder = 0
      OnClick = ConfirmBtnClick
    end
    object CancelBtn: TButton
      Left = 264
      Top = 72
      Width = 185
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = CancelBtnClick
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT id_'#1082#1083#1080#1077#1085#1090', '#1060#1072#1084#1080#1083#1080#1103', '#1048#1084#1103', '#1054#1090#1095#1077#1089#1090#1074#1086' FROM '#1050#1083#1080#1077#1085#1090#1099)
    Left = 648
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 648
    Top = 48
  end
end
