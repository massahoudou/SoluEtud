object Form_filiere: TForm_filiere
  Left = 0
  Top = 0
  Caption = 'Fili'#232're'
  ClientHeight = 299
  ClientWidth = 703
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
  object Panel_filiere: TPanel
    Left = 0
    Top = 0
    Width = 703
    Height = 299
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 18
      Top = 85
      Width = 38
      Height = 22
      Caption = 'Code'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 18
      Top = 136
      Width = 56
      Height = 22
      Caption = 'Lib'#233'ller'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 327
      Top = 42
      Width = 375
      Height = 256
      Align = alRight
      DataSource = DataM.DS_filiere
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -16
      TitleFont.Name = 'Trebuchet MS'
      TitleFont.Style = [fsBold]
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Code_F'
          Title.Caption = 'Code fili'#232're'
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'libelle'
          Title.Caption = 'libell'#233' fili'#232're'
          Width = 230
          Visible = True
        end>
    end
    object Button1: TButton
      Left = 26
      Top = 217
      Width = 61
      Height = 32
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 4
      ImageMargins.Left = 20
      ImageMargins.Right = 20
      Images = DataM.ImageList2
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 104
      Top = 217
      Width = 57
      Height = 32
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ImageMargins.Left = 20
      ImageMargins.Right = 20
      Images = DataM.ImageList2
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 176
      Top = 217
      Width = 57
      Height = 32
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 2
      ImageMargins.Left = 20
      ImageMargins.Right = 20
      Images = DataM.ImageList2
      ParentFont = False
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 248
      Top = 217
      Width = 65
      Height = 32
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 0
      ImageMargins.Left = 20
      ImageMargins.Right = 20
      Images = DataM.ImageList2
      ParentFont = False
      TabOrder = 4
      OnClick = Button4Click
    end
    object code: TEdit
      Left = 112
      Top = 85
      Width = 209
      Height = 28
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = codeKeyPress
    end
    object libeller: TEdit
      Left = 112
      Top = 136
      Width = 209
      Height = 28
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnKeyPress = libellerKeyPress
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 701
      Height = 41
      Align = alTop
      Caption = 'FILIERE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'HP Simplified'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
  end
end
