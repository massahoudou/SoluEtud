object FormSolde: TFormSolde
  Left = 0
  Top = 0
  Caption = 'Solde '
  ClientHeight = 480
  ClientWidth = 840
  Color = clBtnFace
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
  object Label1: TLabel
    Left = 24
    Top = 67
    Width = 73
    Height = 22
    Caption = 'Par Filiere'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 108
    Width = 83
    Height = 22
    Caption = 'Par Montant'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 840
    Height = 41
    Align = alTop
    Caption = 'Solde des Etudiants'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'HP Simplified'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 448
    Width = 840
    Height = 32
    Align = alBottom
    TabOrder = 1
  end
  object Button6: TButton
    Left = 704
    Top = 105
    Width = 88
    Height = 28
    Caption = 'Imprimer'
    Font.Charset = ANSI_CHARSET
    Font.Color = clHighlight
    Font.Height = -15
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ImageIndex = 3
    ImageMargins.Left = 5
    Images = DataM.ImageList3
    ParentFont = False
    TabOrder = 2
    OnClick = Button6Click
  end
  object Recherche: TButton
    Left = 583
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
    TabOrder = 3
    OnClick = RechercheClick
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 136
    Width = 840
    Height = 312
    DataSource = DataM.DS_solde
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Trebuchet MS'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'Num_E'
        Title.Alignment = taCenter
        Title.Caption = 'N'#176
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nom'
        Title.Alignment = taCenter
        Title.Caption = 'Nom'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prenom'
        Title.Alignment = taCenter
        Title.Caption = 'Prenom'
        Width = 171
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'code_F'
        Title.Alignment = taCenter
        Title.Caption = 'Filiere'
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Montant'
        Title.Alignment = taCenter
        Width = 197
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'date_P'
        Title.Alignment = taCenter
        Title.Caption = 'Date payer'
        Width = 123
        Visible = True
      end>
  end
  object Filiere: TDBLookupComboBox
    Left = 128
    Top = 69
    Width = 161
    Height = 30
    Color = clGrayText
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    KeyField = 'Code_F'
    ListField = 'Code_F'
    ListSource = DataM.DS_filiere
    ParentFont = False
    TabOrder = 5
    OnCloseUp = FiliereCloseUp
  end
  object nom: TEdit
    Left = 319
    Top = 71
    Width = 258
    Height = 28
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -15
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    TextHint = 'Nom...'
    OnClick = nomClick
    OnKeyPress = nomKeyPress
  end
  object Button3: TButton
    Left = 709
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
    TabOrder = 7
    OnClick = Button3Click
  end
  object montant: TEdit
    Left = 128
    Top = 105
    Width = 161
    Height = 28
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    TextHint = 'Votre montant...'
    OnChange = montantChange
    OnKeyPress = montantKeyPress
  end
end
