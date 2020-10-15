object Formhistorique: TFormhistorique
  Left = 0
  Top = 0
  Caption = 'Historique'
  ClientHeight = 497
  ClientWidth = 889
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 72
    Width = 57
    Height = 20
    Caption = 'Par mois'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object prenom: TEdit
    Left = 319
    Top = 69
    Width = 154
    Height = 28
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -15
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = 'Prenom'
    OnClick = prenomClick
    OnKeyPress = prenomKeyPress
  end
  object nom: TEdit
    Left = 192
    Top = 70
    Width = 121
    Height = 28
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -15
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Text = 'Nom'
    OnClick = nomClick
    OnKeyPress = nomKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 889
    Height = 41
    Align = alTop
    Caption = 'HISTORIQUE DES PAYEMENT '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'HP Simplified'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = -8
    Top = 120
    Width = 889
    Height = 347
    DataSource = DataM.DS_historique
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Date_P'
        Title.Alignment = taCenter
        Title.Caption = 'date_P'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 153
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nom'
        Title.Alignment = taCenter
        Title.Caption = 'Nom'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prenom'
        Title.Alignment = taCenter
        Title.Caption = 'Prenom'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'code_F'
        Title.Alignment = taCenter
        Title.Caption = 'Fiiliere'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'montant'
        Title.Alignment = taCenter
        Title.Caption = 'Montant'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 164
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mois'
        Title.Alignment = taCenter
        Title.Caption = 'Mois'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Button3: TButton
    Left = 647
    Top = 68
    Width = 75
    Height = 31
    Caption = 'Tous'
    Font.Charset = ANSI_CHARSET
    Font.Color = clHighlight
    Font.Height = -15
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button3Click
  end
  object Mois: TDBLookupComboBox
    Left = 71
    Top = 70
    Width = 115
    Height = 30
    Color = clGrayText
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    KeyField = 'Mois'
    ListField = 'Mois'
    ListSource = DataM.DS_recouvr
    ParentFont = False
    TabOrder = 5
    OnCloseUp = MoisCloseUp
  end
  object Recherche: TButton
    Left = 479
    Top = 70
    Width = 120
    Height = 31
    Caption = 'Recherche'
    Font.Charset = ANSI_CHARSET
    Font.Color = clHighlight
    Font.Height = -15
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ImageIndex = 5
    ImageMargins.Left = 5
    ImageMargins.Right = 5
    Images = DataM.ImageList3
    ParentFont = False
    TabOrder = 6
    OnClick = RechercheClick
  end
  object Button6: TButton
    Left = 742
    Top = 68
    Width = 75
    Height = 31
    Caption = 'Imprimer'
    Font.Charset = ANSI_CHARSET
    Font.Color = clHighlight
    Font.Height = -15
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button6Click
  end
end
