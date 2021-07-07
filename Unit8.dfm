object Form8: TForm8
  Left = 0
  Top = 0
  Caption = #1044#1080#1072#1075#1088#1072#1084#1084#1099
  ClientHeight = 520
  ClientWidth = 804
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 619
    Top = 0
    Width = 185
    Height = 520
    Align = alRight
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitLeft = 618
    ExplicitTop = 1
    ExplicitHeight = 518
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 183
      Height = 518
      Align = alClient
      DataSource = Form6.DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 619
    Height = 520
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object DBChart1: TDBChart
      Left = 1
      Top = 1
      Width = 617
      Height = 518
      Title.Text.Strings = (
        #1042#1099#1088#1091#1095#1082#1072' '#1079#1072' '#1087#1077#1088#1080#1086#1076)
      DepthAxis.Automatic = False
      DepthAxis.AutomaticMaximum = False
      DepthAxis.AutomaticMinimum = False
      DepthAxis.Maximum = 0.470000000000000000
      DepthAxis.Minimum = -0.530000000000000200
      DepthTopAxis.Automatic = False
      DepthTopAxis.AutomaticMaximum = False
      DepthTopAxis.AutomaticMinimum = False
      DepthTopAxis.Maximum = 0.470000000000000000
      DepthTopAxis.Minimum = -0.530000000000000200
      Legend.Visible = False
      RightAxis.Automatic = False
      RightAxis.AutomaticMaximum = False
      RightAxis.AutomaticMinimum = False
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 619
      ExplicitHeight = 520
      PrintMargins = (
        15
        8
        15
        8)
      object Series1: TLineSeries
        Marks.Callout.Brush.Color = clBlack
        Marks.Visible = False
        LinePen.Color = clRed
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
    end
  end
end
