object Form_print: TForm_print
  Left = 0
  Top = 0
  Caption = 'Preview'
  ClientHeight = 503
  ClientWidth = 865
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_imprime_etud: TPanel
    Left = 0
    Top = 0
    Width = 865
    Height = 344
    Align = alClient
    Caption = 'Panel_imprime_etud'
    TabOrder = 0
    ExplicitHeight = 503
    object QRlist_etud: TQuickRep
      Left = -26
      Top = 0
      Width = 794
      Height = 1123
      ShowingPreview = False
      DataSet = DataM.etud_list
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = A4
      Page.Continuous = False
      Page.Values = (
        100.000000000000000000
        2970.000000000000000000
        100.000000000000000000
        2100.000000000000000000
        100.000000000000000000
        100.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.OutputBin = Auto
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrinterSettings.MemoryLimit = 1000000
      PrinterSettings.PrintQuality = 0
      PrinterSettings.Collate = 0
      PrinterSettings.ColorOption = 0
      PrintIfEmpty = True
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      PreviewWidth = 500
      PreviewHeight = 500
      PrevInitialZoom = qrZoomToFit
      PreviewDefaultSaveType = stPDF
      PreviewLeft = 0
      PreviewTop = 0
      object TitleBand1: TQRBand
        Left = 38
        Top = 90
        Width = 718
        Height = 95
        AlignToBottom = False
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          251.354166666666700000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbTitle
        object QRShape1: TQRShape
          Left = 1
          Top = 55
          Width = 49
          Height = 37
          Size.Values = (
            97.895833333333330000
            2.645833333333333000
            145.520833333333300000
            129.645833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRLabel7: TQRLabel
          Left = 0
          Top = 6
          Width = 174
          Height = 24
          Size.Values = (
            63.500000000000000000
            0.000000000000000000
            15.875000000000000000
            460.375000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'La liste des etudiants'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Bahnschrift SemiBold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 14
        end
        object QRShape3: TQRShape
          Left = 168
          Top = 55
          Width = 131
          Height = 37
          Size.Values = (
            97.895833333333330000
            444.500000000000000000
            145.520833333333300000
            346.604166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape5: TQRShape
          Left = 348
          Top = 55
          Width = 89
          Height = 37
          Size.Values = (
            97.895833333333330000
            920.750000000000000000
            145.520833333333300000
            235.479166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape6: TQRShape
          Left = 436
          Top = 55
          Width = 148
          Height = 37
          Size.Values = (
            97.895833333333330000
            1153.583333333333000000
            145.520833333333300000
            391.583333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape7: TQRShape
          Left = 583
          Top = 55
          Width = 133
          Height = 37
          Size.Values = (
            97.895833333333330000
            1542.520833333333000000
            145.520833333333300000
            351.895833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRLabel1: TQRLabel
          Left = 620
          Top = 64
          Width = 60
          Height = 17
          Size.Values = (
            44.979166666666670000
            1640.416666666667000000
            169.333333333333300000
            158.750000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Telephone'
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRLabel2: TQRLabel
          Left = 461
          Top = 64
          Width = 109
          Height = 17
          Size.Values = (
            44.979166666666670000
            1219.729166666667000000
            169.333333333333300000
            288.395833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Date de niassance'
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRLabel3: TQRLabel
          Left = 374
          Top = 64
          Width = 36
          Height = 17
          Size.Values = (
            44.979166666666670000
            989.541666666666700000
            169.333333333333300000
            95.250000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Filiere'
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRLabel4: TQRLabel
          Left = 204
          Top = 64
          Width = 46
          Height = 17
          Size.Values = (
            44.979166666666670000
            539.750000000000000000
            169.333333333333300000
            121.708333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Prenom'
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRLabel5: TQRLabel
          Left = -43
          Top = 211
          Width = 15
          Height = 17
          Size.Values = (
            44.979166666666670000
            -113.770833333333300000
            558.270833333333300000
            39.687500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'N'#176
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRShape2: TQRShape
          Left = 42
          Top = 55
          Width = 127
          Height = 37
          Size.Values = (
            97.895833333333330000
            111.125000000000000000
            145.520833333333300000
            336.020833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRLabel6: TQRLabel
          Left = 81
          Top = 64
          Width = 28
          Height = 17
          Size.Values = (
            44.979166666666670000
            214.312500000000000000
            169.333333333333300000
            74.083333333333330000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Nom'
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRShape4: TQRShape
          Left = 298
          Top = 55
          Width = 52
          Height = 37
          Size.Values = (
            97.895833333333330000
            788.458333333333300000
            145.520833333333300000
            137.583333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRLabel8: TQRLabel
          Left = 311
          Top = 64
          Width = 31
          Height = 17
          Size.Values = (
            44.979166666666670000
            822.854166666666700000
            169.333333333333300000
            82.020833333333330000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Sexe'
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRLabel25: TQRLabel
          Left = 10
          Top = 67
          Width = 15
          Height = 17
          Size.Values = (
            44.979166666666670000
            26.458333333333330000
            177.270833333333300000
            39.687500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'N'#176
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 10
        end
      end
      object PageHeaderBand1: TQRBand
        Left = 38
        Top = 38
        Width = 718
        Height = 52
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        AlignToBottom = False
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          137.583333333333300000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageHeader
        object QRLabel20: TQRLabel
          Left = 552
          Top = 8
          Width = 161
          Height = 17
          Size.Values = (
            44.979166666666670000
            1460.500000000000000000
            21.166666666666670000
            425.979166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Ecole superieur des affaires'
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRLabel24: TQRLabel
          Left = 621
          Top = 28
          Width = 31
          Height = 17
          Size.Values = (
            44.979166666666670000
            1643.062500000000000000
            74.083333333333330000
            82.020833333333330000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Ago'#233
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 10
        end
      end
      object DetailBand1: TQRBand
        Left = 38
        Top = 185
        Width = 718
        Height = 37
        AlignToBottom = False
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          97.895833333333330000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRShape16: TQRShape
          Left = 299
          Top = 0
          Width = 52
          Height = 37
          Size.Values = (
            97.895833333333330000
            791.104166666666700000
            0.000000000000000000
            137.583333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape8: TQRShape
          Left = 582
          Top = 0
          Width = 135
          Height = 37
          Size.Values = (
            97.895833333333330000
            1539.875000000000000000
            0.000000000000000000
            357.187500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape14: TQRShape
          Left = 435
          Top = 0
          Width = 150
          Height = 37
          Size.Values = (
            97.895833333333330000
            1150.937500000000000000
            0.000000000000000000
            396.875000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape15: TQRShape
          Left = 348
          Top = 0
          Width = 92
          Height = 37
          Size.Values = (
            97.895833333333330000
            920.750000000000000000
            0.000000000000000000
            243.416666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape18: TQRShape
          Left = 38
          Top = 0
          Width = 132
          Height = 37
          Size.Values = (
            97.895833333333330000
            100.541666666666700000
            0.000000000000000000
            349.250000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRDBText1: TQRDBText
          Left = -66
          Top = 46
          Width = 44
          Height = 17
          Size.Values = (
            44.979166666666670000
            -174.625000000000000000
            121.708333333333300000
            116.416666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = DataM.etud_list
          DataField = 'Num_E'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRDBText2: TQRDBText
          Left = 489
          Top = 10
          Width = 57
          Height = 17
          Size.Values = (
            44.979166666666670000
            1293.812500000000000000
            26.458333333333330000
            150.812500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = DataM.etud_list
          DataField = 'datnaisse'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRDBText3: TQRDBText
          Left = 617
          Top = 10
          Width = 60
          Height = 17
          Size.Values = (
            44.979166666666670000
            1632.479166666667000000
            26.458333333333330000
            158.750000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = DataM.etud_list
          DataField = 'Telephone'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRDBText4: TQRDBText
          Left = 374
          Top = 10
          Width = 46
          Height = 17
          Size.Values = (
            44.979166666666670000
            989.541666666666700000
            26.458333333333330000
            121.708333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = DataM.etud_list
          DataField = 'Code_F'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRDBText5: TQRDBText
          Left = 309
          Top = 11
          Width = 31
          Height = 17
          Size.Values = (
            44.979166666666670000
            817.562500000000000000
            29.104166666666670000
            82.020833333333330000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = DataM.etud_list
          DataField = 'Sexe'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRDBText6: TQRDBText
          Left = 54
          Top = 10
          Width = 28
          Height = 17
          Size.Values = (
            44.979166666666670000
            142.875000000000000000
            26.458333333333330000
            74.083333333333330000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = DataM.etud_list
          DataField = 'Nom'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRShape17: TQRShape
          Left = 167
          Top = 0
          Width = 133
          Height = 37
          Size.Values = (
            97.895833333333330000
            441.854166666666700000
            0.000000000000000000
            351.895833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRDBText7: TQRDBText
          Left = 187
          Top = 10
          Width = 46
          Height = 17
          Size.Values = (
            44.979166666666670000
            494.770833333333300000
            26.458333333333330000
            121.708333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = DataM.etud_list
          DataField = 'Prenom'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRShape20: TQRShape
          Left = 1
          Top = 0
          Width = 42
          Height = 37
          Size.Values = (
            97.895833333333330000
            2.645833333333333000
            0.000000000000000000
            111.125000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRDBText17: TQRDBText
          Left = 7
          Top = 10
          Width = 44
          Height = 17
          Size.Values = (
            44.979166666666670000
            18.520833333333330000
            26.458333333333330000
            116.416666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = DataM.etud_list
          DataField = 'Num_E'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
      end
    end
  end
  object PanelSolde: TPanel
    Left = 0
    Top = 0
    Width = 865
    Height = 344
    Align = alClient
    Caption = 'PanelSolde'
    TabOrder = 1
    ExplicitHeight = 503
    object QuickRep1: TQuickRep
      Left = 40
      Top = 112
      Width = 794
      Height = 1123
      ShowingPreview = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = A4
      Page.Continuous = False
      Page.Values = (
        100.000000000000000000
        2970.000000000000000000
        100.000000000000000000
        2100.000000000000000000
        100.000000000000000000
        100.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.OutputBin = Auto
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrinterSettings.MemoryLimit = 1000000
      PrinterSettings.PrintQuality = 0
      PrinterSettings.Collate = 0
      PrinterSettings.ColorOption = 0
      PrintIfEmpty = True
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      PreviewWidth = 500
      PreviewHeight = 500
      PrevInitialZoom = qrZoomToFit
      PreviewDefaultSaveType = stPDF
      PreviewLeft = 0
      PreviewTop = 0
      object qrsolde: TQuickRep
        Left = -18
        Top = -23
        Width = 794
        Height = 1123
        ShowingPreview = False
        DataSet = DataM.DM_solde
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Continuous = False
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.OutputBin = Auto
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.UseStandardprinter = False
        PrinterSettings.UseCustomBinCode = False
        PrinterSettings.CustomBinCode = 0
        PrinterSettings.ExtendedDuplex = 0
        PrinterSettings.UseCustomPaperCode = False
        PrinterSettings.CustomPaperCode = 0
        PrinterSettings.PrintMetaFile = False
        PrinterSettings.MemoryLimit = 1000000
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PreviewWidth = 500
        PreviewHeight = 500
        PrevInitialZoom = qrZoomToFit
        PreviewDefaultSaveType = stPDF
        PreviewLeft = 0
        PreviewTop = 0
        object QRBand1: TQRBand
          Left = 38
          Top = 40
          Width = 718
          Height = 52
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            137.583333333333300000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel27: TQRLabel
            Left = 621
            Top = 28
            Width = 31
            Height = 19
            Size.Values = (
              50.270833333333330000
              1643.062500000000000000
              74.083333333333330000
              82.020833333333330000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Ago'#233
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel28: TQRLabel
            Left = 552
            Top = 8
            Width = 161
            Height = 19
            Size.Values = (
              50.270833333333330000
              1460.500000000000000000
              21.166666666666670000
              425.979166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Ecole superieur des affaires'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
        end
        object QRBand2: TQRBand
          Left = 39
          Top = 91
          Width = 718
          Height = 45
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            119.062500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel16: TQRLabel
            Left = 8
            Top = 9
            Width = 163
            Height = 25
            Size.Values = (
              66.145833333333330000
              21.166666666666670000
              23.812500000000000000
              431.270833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Liste des Etudiants'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 14
          end
        end
        object QRBand3: TQRBand
          Left = 38
          Top = 135
          Width = 718
          Height = 45
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            119.062500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbColumnHeader
          object QRLabel9: TQRLabel
            Left = 13
            Top = 12
            Width = 48
            Height = 17
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              44.979166666666670000
              34.395833333333330000
              31.750000000000000000
              127.000000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Num'#233'ro'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel10: TQRLabel
            Left = 107
            Top = 13
            Width = 28
            Height = 17
            Size.Values = (
              44.979166666666670000
              283.104166666666700000
              34.395833333333330000
              74.083333333333330000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Nom'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel11: TQRLabel
            Left = 245
            Top = 13
            Width = 46
            Height = 17
            Size.Values = (
              44.979166666666670000
              648.229166666666700000
              34.395833333333330000
              121.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Prenom'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel14: TQRLabel
            Left = 361
            Top = 12
            Width = 36
            Height = 17
            Size.Values = (
              44.979166666666670000
              955.145833333333300000
              31.750000000000000000
              95.250000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Filiere'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel15: TQRLabel
            Left = 469
            Top = 13
            Width = 64
            Height = 17
            Size.Values = (
              44.979166666666670000
              1240.895833333333000000
              34.395833333333330000
              169.333333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Date payer'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel12: TQRLabel
            Left = 608
            Top = 16
            Width = 48
            Height = 17
            Size.Values = (
              44.979166666666670000
              1608.666666666667000000
              42.333333333333330000
              127.000000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Montant'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
        end
        object QRBand4: TQRBand
          Left = 38
          Top = 180
          Width = 718
          Height = 42
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            111.125000000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText8: TQRDBText
            Left = 12
            Top = 10
            Width = 44
            Height = 17
            Size.Values = (
              44.979166666666670000
              31.750000000000000000
              26.458333333333330000
              116.416666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = DataM.DM_solde
            DataField = 'Num_E'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText9: TQRDBText
            Left = 109
            Top = 10
            Width = 26
            Height = 17
            Size.Values = (
              44.979166666666670000
              288.395833333333300000
              26.458333333333330000
              68.791666666666670000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = DataM.DM_solde
            DataField = 'nom'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText10: TQRDBText
            Left = 248
            Top = 10
            Width = 44
            Height = 17
            Size.Values = (
              44.979166666666670000
              656.166666666666700000
              26.458333333333330000
              116.416666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = DataM.DM_solde
            DataField = 'prenom'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText12: TQRDBText
            Left = 491
            Top = 10
            Width = 42
            Height = 17
            Size.Values = (
              44.979166666666670000
              1299.104166666667000000
              26.458333333333330000
              111.125000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = DataM.DM_solde
            DataField = 'date_P'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText14: TQRDBText
            Left = 365
            Top = 10
            Width = 46
            Height = 17
            Size.Values = (
              44.979166666666670000
              965.729166666666700000
              26.458333333333330000
              121.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = DataM.DM_solde
            DataField = 'Code_F'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText11: TQRDBText
            Left = 621
            Top = 10
            Width = 48
            Height = 17
            Size.Values = (
              44.979166666666670000
              1643.062500000000000000
              26.458333333333330000
              127.000000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = DataM.DM_solde
            DataField = 'Montant'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRShape10: TQRShape
            Left = 437
            Top = -46
            Width = 1
            Height = 93
            Size.Values = (
              246.062500000000000000
              1156.229166666667000000
              -121.708333333333300000
              2.645833333333333000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRShape11: TQRShape
            Left = 594
            Top = -54
            Width = 1
            Height = 93
            Size.Values = (
              246.062500000000000000
              1571.625000000000000000
              -142.875000000000000000
              2.645833333333333000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRShape12: TQRShape
            Left = 74
            Top = -48
            Width = 1
            Height = 87
            Size.Values = (
              230.187500000000000000
              195.791666666666700000
              -127.000000000000000000
              2.645833333333333000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRShape13: TQRShape
            Left = 206
            Top = -49
            Width = 1
            Height = 88
            Size.Values = (
              232.833333333333300000
              545.041666666666700000
              -129.645833333333300000
              2.645833333333333000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRShape9: TQRShape
            Left = 350
            Top = -48
            Width = 1
            Height = 87
            Size.Values = (
              230.187500000000000000
              926.041666666666700000
              -127.000000000000000000
              2.645833333333333000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Shape = qrsRectangle
            VertAdjust = 0
          end
        end
        object QRBand5: TQRBand
          Left = 38
          Top = 222
          Width = 718
          Height = 40
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            105.833333333333300000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
        end
      end
    end
  end
  object Panelhistorique: TPanel
    Left = 0
    Top = 344
    Width = 865
    Height = 159
    Align = alBottom
    TabOrder = 2
    object QuickRep2: TQuickRep
      Left = 40
      Top = 23
      Width = 794
      Height = 1123
      ShowingPreview = False
      DataSet = DataM.Dm_historique
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = A4
      Page.Continuous = False
      Page.Values = (
        100.000000000000000000
        2970.000000000000000000
        100.000000000000000000
        2100.000000000000000000
        100.000000000000000000
        100.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.OutputBin = Auto
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrinterSettings.MemoryLimit = 1000000
      PrinterSettings.PrintQuality = 0
      PrinterSettings.Collate = 0
      PrinterSettings.ColorOption = 0
      PrintIfEmpty = True
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      PreviewWidth = 500
      PreviewHeight = 500
      PrevInitialZoom = qrZoomToFit
      PreviewDefaultSaveType = stPDF
      PreviewLeft = 0
      PreviewTop = 0
      object DetailBand2: TQRBand
        Left = 38
        Top = 209
        Width = 718
        Height = 39
        AlignToBottom = False
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          103.187500000000000000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRShape19: TQRShape
          Left = 62
          Top = 0
          Width = 114
          Height = 38
          Size.Values = (
            100.541666666666700000
            164.041666666666700000
            0.000000000000000000
            301.625000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape21: TQRShape
          Left = 170
          Top = 0
          Width = 114
          Height = 38
          Size.Values = (
            100.541666666666700000
            449.791666666666700000
            0.000000000000000000
            301.625000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape22: TQRShape
          Left = 278
          Top = 0
          Width = 114
          Height = 38
          Size.Values = (
            100.541666666666700000
            735.541666666666700000
            0.000000000000000000
            301.625000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape23: TQRShape
          Left = 391
          Top = 0
          Width = 114
          Height = 38
          Size.Values = (
            100.541666666666700000
            1034.520833333333000000
            0.000000000000000000
            301.625000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape24: TQRShape
          Left = 503
          Top = 0
          Width = 114
          Height = 38
          Size.Values = (
            100.541666666666700000
            1330.854166666667000000
            0.000000000000000000
            301.625000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRDBText20: TQRDBText
          Left = 78
          Top = 8
          Width = 26
          Height = 19
          Size.Values = (
            50.270833333333330000
            206.375000000000000000
            21.166666666666670000
            68.791666666666670000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = DataM.Dm_historique
          DataField = 'nom'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRDBText21: TQRDBText
          Left = 180
          Top = 8
          Width = 45
          Height = 19
          Size.Values = (
            50.270833333333330000
            476.250000000000000000
            21.166666666666670000
            119.062500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = DataM.Dm_historique
          DataField = 'prenom'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRDBText22: TQRDBText
          Left = 304
          Top = 8
          Width = 29
          Height = 19
          Size.Values = (
            50.270833333333330000
            804.333333333333300000
            21.166666666666670000
            76.729166666666670000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = DataM.Dm_historique
          DataField = 'mois'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRDBText23: TQRDBText
          Left = 412
          Top = 8
          Width = 42
          Height = 19
          Size.Values = (
            50.270833333333330000
            1090.083333333333000000
            21.166666666666670000
            111.125000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = DataM.Dm_historique
          DataField = 'Date_P'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRDBText24: TQRDBText
          Left = 518
          Top = 8
          Width = 50
          Height = 19
          Size.Values = (
            50.270833333333330000
            1370.541666666667000000
            21.166666666666670000
            132.291666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = DataM.Dm_historique
          DataField = 'montant'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          VerticalAlignment = tlTop
          FontSize = 10
        end
      end
      object TitleBand2: TQRBand
        Left = 38
        Top = 100
        Width = 718
        Height = 109
        AlignToBottom = False
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          288.395833333333300000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbTitle
        object QRLabel13: TQRLabel
          Left = 8
          Top = 24
          Width = 226
          Height = 25
          Size.Values = (
            66.145833333333330000
            21.166666666666670000
            63.500000000000000000
            597.958333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Historique des payements '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 14
        end
        object QRShape26: TQRShape
          Left = 62
          Top = 61
          Width = 117
          Height = 38
          Size.Values = (
            100.541666666666700000
            164.041666666666700000
            161.395833333333300000
            309.562500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape27: TQRShape
          Left = 170
          Top = 61
          Width = 114
          Height = 38
          Size.Values = (
            100.541666666666700000
            449.791666666666700000
            161.395833333333300000
            301.625000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape28: TQRShape
          Left = 278
          Top = 61
          Width = 114
          Height = 38
          Size.Values = (
            100.541666666666700000
            735.541666666666700000
            161.395833333333300000
            301.625000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape29: TQRShape
          Left = 391
          Top = 61
          Width = 114
          Height = 38
          Size.Values = (
            100.541666666666700000
            1034.520833333333000000
            161.395833333333300000
            301.625000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape30: TQRShape
          Left = 498
          Top = 61
          Width = 119
          Height = 38
          Size.Values = (
            100.541666666666700000
            1317.625000000000000000
            161.395833333333300000
            314.854166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRLabel17: TQRLabel
          Left = 84
          Top = 72
          Width = 27
          Height = 19
          Size.Values = (
            50.270833333333330000
            222.250000000000000000
            190.500000000000000000
            71.437500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Nom'
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRLabel18: TQRLabel
          Left = 190
          Top = 72
          Width = 45
          Height = 19
          Size.Values = (
            50.270833333333330000
            502.708333333333300000
            190.500000000000000000
            119.062500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Prenom'
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRLabel19: TQRLabel
          Left = 309
          Top = 72
          Width = 28
          Height = 19
          Size.Values = (
            50.270833333333330000
            817.562500000000000000
            190.500000000000000000
            74.083333333333330000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Mois'
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRLabel21: TQRLabel
          Left = 407
          Top = 72
          Width = 68
          Height = 19
          Size.Values = (
            50.270833333333330000
            1076.854166666667000000
            190.500000000000000000
            179.916666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Date payer '
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRLabel22: TQRLabel
          Left = 522
          Top = 72
          Width = 49
          Height = 21
          Size.Values = (
            55.562500000000000000
            1381.125000000000000000
            190.500000000000000000
            129.645833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Montant'
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 10
        end
      end
      object PageHeaderBand2: TQRBand
        Left = 38
        Top = 38
        Width = 718
        Height = 62
        Frame.DrawTop = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        AlignToBottom = False
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          164.041666666666700000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageHeader
        object QRLabel23: TQRLabel
          Left = 621
          Top = 28
          Width = 30
          Height = 19
          Size.Values = (
            50.270833333333330000
            1643.062500000000000000
            74.083333333333330000
            79.375000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Ago'#233
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 10
        end
        object QRLabel26: TQRLabel
          Left = 552
          Top = 8
          Width = 164
          Height = 19
          Size.Values = (
            50.270833333333330000
            1460.500000000000000000
            21.166666666666670000
            433.916666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          ActiveInPreview = False
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Ecole superieur des affaires'
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          VerticalAlignment = tlTop
          FontSize = 10
        end
      end
    end
  end
end
