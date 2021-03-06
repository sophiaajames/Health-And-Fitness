object Form1: TForm1
  Left = 270
  Top = 228
  Width = 483
  Height = 422
  Caption = 'Resamplers Example'
  Color = clBtnFace
  Constraints.MinHeight = 200
  Constraints.MinWidth = 200
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SidePanel: TPanel
    Left = 329
    Top = 0
    Width = 146
    Height = 374
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    object pnlResampler: TPanel
      Left = 0
      Top = 0
      Width = 146
      Height = 160
      Align = alTop
      TabOrder = 0
      DesignSize = (
        146
        160)
      object Label1: TLabel
        Left = 12
        Top = 24
        Width = 82
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Resampler Class:'
      end
      object Label4: TLabel
        Left = 12
        Top = 67
        Width = 91
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Pixel Access Mode:'
      end
      object Label5: TLabel
        Left = 12
        Top = 110
        Width = 59
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Wrap Mode:'
      end
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 144
        Height = 16
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Resampler Properties'
        Color = clBtnShadow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object ResamplerClassNamesList: TComboBox
        Left = 16
        Top = 40
        Width = 119
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemHeight = 13
        TabOrder = 1
        OnChange = ResamplerClassNamesListChange
      end
      object EdgecheckBox: TComboBox
        Left = 16
        Top = 83
        Width = 119
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemHeight = 13
        TabOrder = 2
        OnChange = EdgecheckBoxChange
        Items.Strings = (
          'Unsafe'
          'Safe'
          'Wrap')
      end
      object WrapBox: TComboBox
        Left = 16
        Top = 126
        Width = 119
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemHeight = 13
        TabOrder = 3
        OnChange = EdgecheckBoxChange
        Items.Strings = (
          'Clamp'
          'Repeat'
          'Mirror')
      end
    end
    object pnlKernel: TPanel
      Left = 0
      Top = 160
      Width = 146
      Height = 160
      Align = alTop
      TabOrder = 1
      Visible = False
      DesignSize = (
        146
        160)
      object Label2: TLabel
        Left = 12
        Top = 24
        Width = 62
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Kernel Class:'
      end
      object Label3: TLabel
        Left = 12
        Top = 67
        Width = 63
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Kernel Mode:'
      end
      object TableSizeLabel: TLabel
        Left = 8
        Top = 116
        Width = 97
        Height = 13
        Caption = 'Table Size (32/100):'
      end
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 144
        Height = 16
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Kernel Properties'
        Color = clBtnShadow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object KernelClassNamesList: TComboBox
        Left = 16
        Top = 40
        Width = 119
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemHeight = 13
        TabOrder = 1
        OnChange = KernelClassNamesListClick
      end
      object KernelModeList: TComboBox
        Left = 16
        Top = 83
        Width = 119
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemHeight = 13
        TabOrder = 2
        OnChange = KernelModeListChange
        Items.Strings = (
          'Default (precise, slow)'
          'Table Nearest (truncated, fastest)'
          'Table Linear (interpolated, fast)')
      end
      object gbTableSize: TGaugeBar
        Left = 16
        Top = 136
        Width = 113
        Height = 12
        Backgnd = bgPattern
        HandleSize = 16
        Min = 1
        ShowArrows = False
        ShowHandleGrip = True
        Style = rbsMac
        Position = 32
        OnChange = gbTableSizeChange
        OnMouseUp = gbTableSizeMouseUp
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 329
    Height = 374
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = ResamplerClassNamesListChange
    object TabSheet1: TTabSheet
      Caption = 'Details'
      object DstImg: TImage32
        Left = 0
        Top = 0
        Width = 321
        Height = 346
        Align = alClient
        Bitmap.ResamplerClassName = 'TKernelResampler'
        Bitmap.Resampler.KernelClassName = 'TCosineKernel'
        Bitmap.Resampler.KernelMode = kmTableLinear
        Bitmap.Resampler.TableSize = 32
        BitmapAlign = baTopLeft
        RepaintMode = rmOptimizer
        Scale = 1.000000000000000000
        ScaleMode = smStretch
        TabOrder = 0
        OnResize = DstImgResize
      end
    end
    object ResamplingTabSheet: TTabSheet
      Caption = 'Resampling'
      ImageIndex = 1
      object ResamplingPaintBox: TPaintBox32
        Left = 0
        Top = 0
        Width = 321
        Height = 348
        Align = alClient
        RepaintMode = rmOptimizer
        TabOrder = 0
        OnResize = ResamplingPaintBoxResize
      end
    end
    object tabKernel: TTabSheet
      Caption = 'Curve'
      ImageIndex = 2
      TabVisible = False
      object CurveImage: TImage32
        Left = 0
        Top = 0
        Width = 321
        Height = 346
        Align = alClient
        Bitmap.ResamplerClassName = 'TNearestResampler'
        BitmapAlign = baTopLeft
        Scale = 1.000000000000000000
        ScaleMode = smNormal
        TabOrder = 0
        OnPaintStage = CurveImagePaintStage
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 374
    Width = 475
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
end
