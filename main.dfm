object fMain: TfMain
  Left = 0
  Top = 0
  Caption = 'Machine Manager V.3.0 [Menu principal]'
  ClientHeight = 640
  ClientWidth = 812
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0788888800000000FF088880000000000F7777778000000FFFF0778000000000
    0F777777788880FFFFFF0780000000000F77777778880FFFFFFFF08000000000
    0F7777777880FFFFFFFFFF00000000000F777777880FFFFFFFFFFF8000000000
    0F77777780FFFFFFFFFFF080000000000F7777788FFFFFFFFFFF008000000000
    0FFFFFF7FFFFFFFFFFF88F700000000000000008888888888880000000000000
    078888880000000888888880000000000F777777800000877777778000000000
    0F7777777888887777777780000000000F777777777777777777778000000000
    0F7777777777777777777780000000000F777777777777770000008000000000
    0F777777777777770BBBB080000000000F777777777777770000008000000000
    0FFFFFFFFFFFFFFFFFFFFF700000000000000000000000000000000000000000
    078888880000000888888880000000000F777777800000877777778000000000
    0F7777777888887777777780000000000F777777777777777777778000000000
    0F7777777777777777777780000000000F777777777777770000008000000000
    0F777777777777770BBBB080000000000F777777777777770000008000000000
    0FFFFFFFFFFFFFFFFFFFFF70000000000000000000000000000000000000F000
    000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000
    000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000
    000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000
    000FF000000FF000000FF000000FF000000FF000000FF000000FF000000F}
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 621
    Width = 812
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 250
      end
      item
        Width = 150
      end>
  end
  object dxNavBar1: TdxNavBar
    Left = 0
    Top = 0
    Width = 225
    Height = 621
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ActiveGroupIndex = 0
    TabOrder = 1
    LookAndFeelSchemes.Flat = 8
    LookAndFeelSchemes.Standard = 8
    LookAndFeelSchemes.UltraFlat = 9
    LookAndFeelSchemes.Native = 18
    LookAndFeelSchemes.Office11 = 16
    LookAndFeelSchemes.Skin = 14
    View = 7
    OptionsStyle.DefaultStyles.GroupHeader.BackColor = clBtnFace
    OptionsStyle.DefaultStyles.GroupHeader.BackColor2 = clBtnFace
    OptionsStyle.DefaultStyles.GroupHeader.Font.Charset = DEFAULT_CHARSET
    OptionsStyle.DefaultStyles.GroupHeader.Font.Color = clBtnText
    OptionsStyle.DefaultStyles.GroupHeader.Font.Height = -13
    OptionsStyle.DefaultStyles.GroupHeader.Font.Name = 'Segoe UI'
    OptionsStyle.DefaultStyles.GroupHeader.Font.Style = []
    OptionsStyle.DefaultStyles.GroupHeader.AssignedValues = [savFont, savImage]
    OptionsStyle.DefaultStyles.GroupHeaderActive.BackColor = clBtnFace
    OptionsStyle.DefaultStyles.GroupHeaderActive.BackColor2 = clBtnFace
    OptionsStyle.DefaultStyles.GroupHeaderActive.Font.Charset = DEFAULT_CHARSET
    OptionsStyle.DefaultStyles.GroupHeaderActive.Font.Color = clBtnText
    OptionsStyle.DefaultStyles.GroupHeaderActive.Font.Height = -13
    OptionsStyle.DefaultStyles.GroupHeaderActive.Font.Name = 'Segoe UI Semibold'
    OptionsStyle.DefaultStyles.GroupHeaderActive.Font.Style = []
    OptionsStyle.DefaultStyles.GroupHeaderActive.AssignedValues = [savFont, savImage]
    OptionsStyle.DefaultStyles.GroupHeaderActiveHotTracked.BackColor = clBtnFace
    OptionsStyle.DefaultStyles.GroupHeaderActiveHotTracked.BackColor2 = clBtnFace
    OptionsStyle.DefaultStyles.GroupHeaderActiveHotTracked.Font.Charset = DEFAULT_CHARSET
    OptionsStyle.DefaultStyles.GroupHeaderActiveHotTracked.Font.Color = clBtnText
    OptionsStyle.DefaultStyles.GroupHeaderActiveHotTracked.Font.Height = -13
    OptionsStyle.DefaultStyles.GroupHeaderActiveHotTracked.Font.Name = 'Segoe UI'
    OptionsStyle.DefaultStyles.GroupHeaderActiveHotTracked.Font.Style = [fsBold]
    OptionsStyle.DefaultStyles.GroupHeaderActiveHotTracked.AssignedValues = [savImage]
    OptionsStyle.DefaultStyles.GroupHeaderHotTracked.BackColor = clBtnFace
    OptionsStyle.DefaultStyles.GroupHeaderHotTracked.BackColor2 = clBtnFace
    OptionsStyle.DefaultStyles.GroupHeaderHotTracked.Font.Charset = DEFAULT_CHARSET
    OptionsStyle.DefaultStyles.GroupHeaderHotTracked.Font.Color = clBtnText
    OptionsStyle.DefaultStyles.GroupHeaderHotTracked.Font.Height = -13
    OptionsStyle.DefaultStyles.GroupHeaderHotTracked.Font.Name = 'Segoe UI'
    OptionsStyle.DefaultStyles.GroupHeaderHotTracked.Font.Style = [fsBold]
    OptionsStyle.DefaultStyles.GroupHeaderHotTracked.AssignedValues = [savImage]
    OptionsStyle.DefaultStyles.GroupHeaderPressed.BackColor = clBtnFace
    OptionsStyle.DefaultStyles.GroupHeaderPressed.BackColor2 = clBtnFace
    OptionsStyle.DefaultStyles.GroupHeaderPressed.Font.Charset = DEFAULT_CHARSET
    OptionsStyle.DefaultStyles.GroupHeaderPressed.Font.Color = clBtnText
    OptionsStyle.DefaultStyles.GroupHeaderPressed.Font.Height = -13
    OptionsStyle.DefaultStyles.GroupHeaderPressed.Font.Name = 'Segoe UI'
    OptionsStyle.DefaultStyles.GroupHeaderPressed.Font.Style = [fsBold]
    OptionsStyle.DefaultStyles.GroupHeaderPressed.AssignedValues = [savImage]
    OptionsStyle.DefaultStyles.Item.BackColor = clWhite
    OptionsStyle.DefaultStyles.Item.BackColor2 = clWhite
    OptionsStyle.DefaultStyles.Item.Font.Charset = DEFAULT_CHARSET
    OptionsStyle.DefaultStyles.Item.Font.Color = clBtnText
    OptionsStyle.DefaultStyles.Item.Font.Height = -13
    OptionsStyle.DefaultStyles.Item.Font.Name = 'Segoe UI'
    OptionsStyle.DefaultStyles.Item.Font.Style = []
    OptionsStyle.DefaultStyles.Item.AssignedValues = [savFont]
    OptionsStyle.DefaultStyles.ItemPressed.BackColor = clWhite
    OptionsStyle.DefaultStyles.ItemPressed.BackColor2 = clWhite
    OptionsStyle.DefaultStyles.ItemPressed.Font.Charset = DEFAULT_CHARSET
    OptionsStyle.DefaultStyles.ItemPressed.Font.Color = clBtnText
    OptionsStyle.DefaultStyles.ItemPressed.Font.Height = -16
    OptionsStyle.DefaultStyles.ItemPressed.Font.Name = 'Segoe UI'
    OptionsStyle.DefaultStyles.ItemPressed.Font.Style = [fsUnderline]
    OptionsStyle.DefaultStyles.ItemPressed.HAlignment = haLeft
    OptionsStyle.DefaultStyles.ItemPressed.AssignedValues = [savFont, savHAlignment]
    OptionsStyle.DefaultStyles.NavigationPaneHeader.BackColor = clWhite
    OptionsStyle.DefaultStyles.NavigationPaneHeader.BackColor2 = clWhite
    OptionsStyle.DefaultStyles.NavigationPaneHeader.Font.Charset = DEFAULT_CHARSET
    OptionsStyle.DefaultStyles.NavigationPaneHeader.Font.Color = clWindowText
    OptionsStyle.DefaultStyles.NavigationPaneHeader.Font.Height = -11
    OptionsStyle.DefaultStyles.NavigationPaneHeader.Font.Name = 'Tahoma'
    OptionsStyle.DefaultStyles.NavigationPaneHeader.Font.Style = []
    OptionsStyle.DefaultStyles.NavigationPaneHeader.VAlignment = vaCenter
    OptionsStyle.DefaultStyles.NavigationPaneHeader.AssignedValues = [savVAlignment, savImage]
    object oParametros: TdxNavBarGroup
      Caption = 'Parametros'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = oOpt_Mant_Emp
        end
        item
          Item = oOpt_Calendar
        end
        item
          Item = oOpt_Frec_Pago
        end
        item
          Item = oOpt_Imp_Fijos
        end>
    end
    object oPersonal: TdxNavBarGroup
      Caption = 'Personal'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = oOpt_Dedu_Pers
        end
        item
          Item = oOpt_Mant_Pers
        end>
    end
    object oAgentes_Credito: TdxNavBarGroup
      Caption = 'Agentes Crediticios'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = oOpt_Mant_Prov
        end
        item
          Item = oOpt_Rem_Cheq_Acr
        end>
    end
    object oPlanilla: TdxNavBarGroup
      Caption = 'Planilla'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = oOpt_Rem_Cheq_Pers
        end>
    end
    object oSalir: TdxNavBarGroup
      Caption = 'Salir'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = oOpt_Salir
        end>
    end
    object oOpt_Imp_Fijos: TdxNavBarItem
      Caption = 'Impuestos Fijos'
      OnClick = oOpt_Imp_FijosClick
    end
    object oOpt_Mant_Pers: TdxNavBarItem
      Caption = 'Ficha Personal'
      OnClick = oOpt_Mant_PersClick
    end
    object oOpt_Dedu_Pers: TdxNavBarItem
      Caption = 'Deducciones'
      OnClick = oOpt_Dedu_PersClick
    end
    object oOpt_Rem_Cheq_Acr: TdxNavBarItem
      Caption = 'Cheques de Remesas'
      OnClick = oOpt_Rem_Cheq_AcrClick
    end
    object oOpt_Rem_Cheq_Pers: TdxNavBarItem
      Caption = 'Remesa de Cheques'
      OnClick = oOpt_Rem_Cheq_PersClick
    end
    object oOpt_Salir: TdxNavBarItem
      Caption = 'Salir'
      OnClick = oOpt_SalirClick
    end
    object oOpt_Mant_Emp: TdxNavBarItem
      Caption = 'Empresas'
      OnClick = oOpt_Mant_EmpClick
    end
    object oOpt_Mant_Prov: TdxNavBarItem
      Caption = 'Ficha Acreedores'
      OnClick = oOpt_Mant_ProvClick
    end
    object oOpt_Calendar: TdxNavBarItem
      Caption = 'Calendario'
      OnClick = oOpt_CalendarClick
    end
    object oOpt_Frec_Pago: TdxNavBarItem
      Caption = 'Frecuencias de Pagos'
      OnClick = oOpt_Frec_PagoClick
    end
  end
end
