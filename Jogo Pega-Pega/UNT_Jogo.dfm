object FRM_PegaPega: TFRM_PegaPega
  Left = 0
  Top = 0
  Caption = 'Pega-Pega'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  TextHeight = 15
  object ShapeHeroi: TShape
    Left = 208
    Top = 176
    Width = 30
    Height = 30
    Brush.Color = clForestgreen
  end
  object ShapeVilao: TShape
    Left = 368
    Top = 176
    Width = 30
    Height = 30
    Brush.Color = clFirebrick
  end
  object GameTimer: TTimer
    Interval = 16
    OnTimer = GameTimerTimer
    Left = 48
    Top = 24
  end
end
