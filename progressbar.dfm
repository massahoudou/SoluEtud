object Fermerture: TFermerture
  Left = 0
  Top = 0
  Caption = 'Fermerture'
  ClientHeight = 110
  ClientWidth = 410
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
  object ProgressBar1: TProgressBar
    Left = 32
    Top = 40
    Width = 329
    Height = 17
    TabOrder = 0
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 192
    Top = 16
  end
end
