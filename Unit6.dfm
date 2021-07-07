object Form9: TForm9
  Tag = 1
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1059#1095#1077#1090' '#1091#1089#1083#1091#1075' '#1092#1080#1090#1085#1077#1089'-'#1082#1083#1091#1073#1072
  ClientHeight = 241
  ClientWidth = 332
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Left = 10
  Padding.Top = 10
  Padding.Right = 10
  Padding.Bottom = 10
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 10
    Width = 312
    Height = 19
    Caption = #1044#1083#1103' '#1087#1088#1086#1076#1086#1083#1078#1077#1085#1080#1103' '#1088#1072#1073#1086#1090#1099' '#1074#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 18
    Top = 50
    Width = 102
    Height = 19
    Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 18
    Top = 88
    Width = 54
    Height = 19
    Caption = #1055#1072#1088#1086#1083#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 13
    Top = 135
    Width = 118
    Height = 52
    Caption = 
      #1044#1083#1103' '#1074#1086#1089#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1103' '#1087#1072#1088#1086#1083#1100' '#1086#1073#1088#1072#1090#1080#1090#1077#1089#1100' '#1082' '#1072#1076#1084#1080#1085#1080#1089#1090#1072#1088#1090#1086#1088#1091'  '#1073#1072#1079#1099' '#1076#1072#1085#1085 +
      #1099#1093
    WordWrap = True
  end
  object Button1: TButton
    Left = 95
    Top = 206
    Width = 139
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1091
    Caption = #1042#1099#1093#1086#1076
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 161
    Top = 52
    Width = 145
    Height = 21
    Hint = #1042#1074#1077#1076#1080#1090#1077' '#1083#1086#1075#1080#1085
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Text = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088
    OnChange = ComboBox1Change
    OnKeyPress = ComboBox1KeyPress
    Items.Strings = (
      #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088
      #1050#1083#1080#1077#1085#1090)
  end
  object Edit1: TEdit
    Left = 161
    Top = 90
    Width = 145
    Height = 21
    Hint = #1042#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100
    ParentShowHint = False
    PasswordChar = '*'
    ShowHint = True
    TabOrder = 2
    Text = '123Zxc'
  end
  object Button2: TButton
    Tag = 1
    Left = 161
    Top = 130
    Width = 145
    Height = 25
    Caption = #1042#1093#1086#1076
    TabOrder = 3
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 248
    Top = 208
  end
end
