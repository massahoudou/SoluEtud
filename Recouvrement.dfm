﻿object Form_recouvr: TForm_recouvr
  Left = 0
  Top = 0
  Caption = 'Recouvrement'
  ClientHeight = 322
  ClientWidth = 756
  Color = clHighlightText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 19
    Top = 79
    Width = 72
    Height = 22
    Caption = 'Montant :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 19
    Top = 195
    Width = 95
    Height = 22
    Caption = 'Date  etablie'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 19
    Top = 145
    Width = 118
    Height = 22
    Caption = 'Mois Concerner'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object date: TDateTimePicker
    Left = 143
    Top = 195
    Width = 210
    Height = 28
    Date = 44082.000000000000000000
    Time = 44082.000000000000000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    MaxDate = 44561.999988425920000000
    MinDate = 43777.000000000000000000
    ParentFont = False
    TabOrder = 0
  end
  object Montant: TEdit
    Left = 143
    Top = 80
    Width = 210
    Height = 28
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = MontantKeyPress
  end
  object Ajouter: TButton
    Left = 19
    Top = 263
    Width = 62
    Height = 32
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'HP Simplified'
    Font.Style = []
    ImageIndex = 4
    ImageMargins.Left = 20
    ImageMargins.Right = 20
    Images = DataM.ImageList2
    ParentFont = False
    TabOrder = 2
    OnClick = AjouterClick
  end
  object Suppr: TButton
    Left = 111
    Top = 263
    Width = 65
    Height = 32
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'HP Simplified'
    Font.Style = []
    ImageIndex = 1
    ImageMargins.Left = 20
    ImageMargins.Right = 20
    Images = DataM.ImageList2
    ParentFont = False
    TabOrder = 3
    OnClick = SupprClick
  end
  object Modifié: TButton
    Left = 198
    Top = 263
    Width = 59
    Height = 32
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'HP Simplified'
    Font.Style = []
    ImageIndex = 2
    ImageMargins.Left = 20
    ImageMargins.Right = 20
    Images = DataM.ImageList2
    ParentFont = False
    TabOrder = 4
    OnClick = ModifiéClick
  end
  object DBGrid1: TDBGrid
    Left = 394
    Top = 41
    Width = 362
    Height = 281
    Align = alRight
    DataSource = DataM.DS_recouvr
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Num_R'
        Title.Alignment = taCenter
        Title.Caption = 'N'#176
        Title.Color = clMenuHighlight
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Mois'
        Title.Alignment = taCenter
        Title.Color = clMenuHighlight
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Montant'
        Title.Alignment = taCenter
        Title.Color = clMenuHighlight
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date_R'
        Title.Alignment = taCenter
        Title.Caption = 'Date'
        Title.Color = clMenuHighlight
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 89
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 288
    Top = 264
    Width = 65
    Height = 33
    ImageIndex = 0
    ImageMargins.Left = 20
    ImageMargins.Right = 20
    Images = DataM.ImageList2
    TabOrder = 6
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 756
    Height = 41
    Align = alTop
    Caption = 'ETABLIRE L'#39'ECHEANCIER'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'HP Simplified'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object mois: TEdit
    Left = 143
    Top = 146
    Width = 210
    Height = 28
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnKeyPress = moisKeyPress
  end
end
