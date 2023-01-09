object frmVendas: TfrmVendas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Tela de Vendas'
  ClientHeight = 470
  ClientWidth = 942
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_topo: TPanel
    Left = 0
    Top = 0
    Width = 942
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object btn_sair: TSpeedButton
      AlignWithMargins = True
      Left = 899
      Top = 5
      Width = 38
      Height = 31
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Flat = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF4E2FCD690FBCA70FDE9C3FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF0FDDCA0FBC665FBC664FBC664
        FCCF7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFDE6BCFBC96DFBC664FB
        C664FBC664FBC664FBCC76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF5E4FBCD77FBC6
        64FBC664FBC664FBC664FBC664FBC664F8C872837A78A29B9AB2ABAAB2ABAAB2
        ABAAB2ABAAB7B0B0EAE8E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEECCCFBC664FBC664FBC664FBC664FBC664FBC664FBC664EDBD674D403F5547
        45594A49594A49594A49594A49594A49695B5AFCFCFCFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEECCCFBC664FBC664FBC664FBC664FBC664FBC664FBC664
        F7C872DEDDDDD8D5D6D6D2D2D6D2D2D6D2D2D6D2D2978E8D594A49EEEDECFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEECCCFBC664FBC664FBC664FBC664FB
        C664FBC664FBC664F7C872E0DFDFE9E7E7EDEBECEDEBECEDEBECEDEBECA39B9A
        594A49EEEDECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEECCCFBC664FBC6
        64FBC664FBC664FBC664FBC664FBC664F7C872E0DFDFE9E7E7EDEBECEDEBECED
        EBECEDEBECA39B9A594A49EEEDECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEECCCFBC664FBC664FBC664FBC664FBC664FBC664FBC664F7C872E0DFDFE9E7
        E7EDEBECEDEBECEDEBECEDEBECA39B9A594A49EEEDECFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEECCCFBC664FBC664FBC664FBC664FAC86FF9CB78FBC664
        F7C872E0DFDFE9E7E7EDEBECEDEBECD1CEEFEDEBECA39B9A594A49EEEDECFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEECCCFBC664FBC664FBC664FBC664EE
        E7DAEDEAEAF9CB78F7C872E0DFDFE9E7E7EAE8EC9492F66362FBE3E1ED9E97A1
        594B55E4E3EEF7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEECCCFBC664FBC6
        64FBC664FBC664F1E0C4EFE6DCF9C96FF7C872E0DFDFE2E0E88482F85A59FC5A
        59FC5A59FC5A59FC5A59FC5A59FC5C5BFCDEDEFEFFFFFFFFFFFFFFFFFFFFFFFF
        FEECCCFBC664FBC664FBC664FBC664FBC664FBC664FBC664F7C872E0DFDF8280
        F65A59FC5A59FC5A59FC5A59FC5A59FC5A59FC5A59FC5A59FCCECEFEFFFFFFFF
        FFFFFFFFFFFFFFFFFEECCCFBC664FBC664FBC664FBC664FBC664FBC664FBC664
        F7C872E0DFDFC4C2EC6362FB5A59FC5A59FC5A59FC5A59FC5A59FC5A59FC5A59
        FCD1D1FEFFFFFFFFFFFFFFFFFFFFFFFFFEECCCFBC664FBC664FBC664FBC664FB
        C664FBC664FBC664F7C872E0DFDFE9E7E7D4D1EE6B6BFA5F5EFBA8A7F4817DC8
        59519DA9A8F4B9B9FEF9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFEECCCFBC664FBC6
        64FBC664FBC664FBC664FBC664FBC664F7C872E0DFDFE9E7E7EDEBECDEDCEE9D
        9CF4EDEBECA39B9A594A49EEEDECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEECCCFBC664FBC664FBC664FBC664FBC664FBC664FBC664F7C872E0DFDFE9E7
        E7EDEBECEDEBECEDEBECEDEBECA39B9A594A49EEEDECFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEECCCFBC664FBC664FBC664FBC664FBC664FBC664FBC664
        F7C872E0DFDFE9E7E7EDEBECEDEBECEDEBECEDEBECA39B9A594A49EEEDECFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEECCCFBC664FBC664FBC664FBC664FB
        C664FBC664FBC664F7CA77E0DFDFE9E7E8EDEBECEDEBECEDEBECEDEBECA39B9A
        594A49EEEDECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEECCCFBC664FBC6
        64FBC664FBC664FBC664FBC664FAC667EAD6B1E0DFDFEBE9EAEDEBECEDEBECED
        EBECEDEBECA39B9A594A49EEEDECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEECCCFBC664FBC664FBC664FBC664FBC664F4CC84E4DACAE0DFDFE7E6E7EDEB
        ECEDEBECEDEBECEDEBECEDEBECA39B9A594A49EEEDECFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEECCCFBC664FBC664FBC664F7CA78E8D8BCE0DFDFE3E2E2
        EAE8E9EDEBECEDEBECEDEBECEDEBECEDEBECEDEBECA39B9A594A49EEEDECFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEECCCFBC664F0BE64D0B58BB0A8A7AF
        A9A8AAA2A2948A89948A8A948A8A948A8A948A8A948A8A948A8A948A8A766A69
        594A49F3F2F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0CEB0B08D555748
        414D4040534544594A49594A49594A49594A49594A49594A49594A49594A4959
        4A49594A495C4D4C9B9292FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btn_sairClick
      ExplicitLeft = 728
      ExplicitTop = 6
      ExplicitHeight = 29
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 220
      Height = 35
      Align = alLeft
      Caption = 'LAN'#199'AMENTO DE PEDIDOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 18
    end
  end
  object StatusBar1: TdxStatusBar
    AlignWithMargins = True
    Left = 5
    Top = 445
    Width = 932
    Height = 20
    Margins.Left = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clWindowText
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Tahoma'
        PanelStyle.Font.Style = [fsBold]
        PanelStyle.ParentFont = False
        MinWidth = 150
        Width = 250
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        MinWidth = 80
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 350
        Width = 350
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    PaintStyle = stpsUseLookAndFeel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object pnl_esquerda: TPanel
    Left = 0
    Top = 41
    Width = 334
    Height = 401
    Align = alLeft
    TabOrder = 2
    object Label1: TLabel
      Left = 15
      Top = 16
      Width = 73
      Height = 13
      Caption = 'Pedidos do dia:'
    end
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 48
      Width = 326
      Height = 349
      Align = alBottom
      DataSource = DsPedidos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'numero'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomecliente'
          Visible = True
        end>
    end
    object data1: TDateTimePicker
      Left = 98
      Top = 12
      Width = 92
      Height = 21
      Date = 44914.000000000000000000
      Time = 0.546250011575466500
      TabOrder = 1
      OnExit = data1Exit
    end
  end
  object pnl_venda: TPanel
    Left = 334
    Top = 41
    Width = 608
    Height = 401
    Align = alClient
    TabOrder = 3
    object Bevel1: TBevel
      Left = 6
      Top = 11
      Width = 595
      Height = 115
    end
    object Label2: TLabel
      Left = 16
      Top = 37
      Width = 46
      Height = 14
      Caption = 'Emiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 21
      Top = 70
      Width = 41
      Height = 14
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 207
      Top = 33
      Width = 68
      Height = 22
      Caption = 'Novo'
      OnClick = SpeedButton1Click
    end
    object Label8: TLabel
      Left = 300
      Top = 35
      Width = 68
      Height = 18
      Caption = 'R$ Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtEmissao: TJvDBDatePickerEdit
      Left = 67
      Top = 34
      Width = 121
      Height = 21
      AllowNoDate = True
      DataField = 'dataemissao'
      DataSource = DsPedidos
      TabOrder = 0
    end
    object DBLCliente: TcxDBLookupComboBox
      Left = 67
      Top = 66
      DataBinding.DataField = 'codigocliente'
      DataBinding.DataSource = DsPedidos
      Enabled = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.KeyFieldNames = 'codigo'
      Properties.ListColumns = <
        item
          FieldName = 'nome'
        end>
      Properties.ListSource = DsClientes
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = clYellow
      TabOrder = 1
      Width = 415
    end
    object Button1: TButton
      Left = 224
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 132
      Width = 600
      Height = 265
      Align = alBottom
      TabOrder = 3
      object Label5: TLabel
        Left = 18
        Top = 9
        Width = 177
        Height = 18
        Caption = 'Produto <F2> Consulta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 406
        Top = 9
        Width = 37
        Height = 18
        Caption = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 476
        Top = 9
        Width = 36
        Height = 18
        Caption = 'Qtde'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object CRDBGrid1: TCRDBGrid
        Left = 1
        Top = 72
        Width = 598
        Height = 192
        Align = alBottom
        DataSource = DsItens
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 274
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtde'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor_unit'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor_total'
            Width = 85
            Visible = True
          end>
      end
      object DBProduto: TMaskEdit
        Left = 19
        Top = 30
        Width = 33
        Height = 26
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 3
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = ''
        OnKeyDown = DBProdutoKeyDown
      end
      object NomeProduto: TMaskEdit
        Left = 59
        Top = 30
        Width = 338
        Height = 26
        TabStop = False
        Color = clGradientActiveCaption
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = ''
      end
      object DBValor: TMaskEdit
        Left = 407
        Top = 30
        Width = 56
        Height = 26
        TabStop = False
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = ''
      end
      object DBQtde: TMaskEdit
        Left = 475
        Top = 30
        Width = 37
        Height = 26
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        Text = ''
      end
      object BitBtn1: TBitBtn
        Left = 527
        Top = 31
        Width = 21
        Height = 25
        Caption = '...'
        TabOrder = 5
        OnClick = BitBtn1Click
      end
    end
    object dbeTotal: TDBEdit
      Left = 372
      Top = 34
      Width = 110
      Height = 26
      TabStop = False
      DataField = 'cal_total'
      DataSource = DsPedidos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  object SQL_produtos: TUniQuery
    Connection = d.ConexaoDB
    SQL.Strings = (
      'select * from produtos order by descricao')
    Left = 560
    Top = 304
    object SQL_produtoscodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
    end
    object SQL_produtosdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 45
    end
    object SQL_produtosprecovenda: TFloatField
      DisplayLabel = 'Pre'#231'o de Venda'
      FieldName = 'precovenda'
    end
  end
  object SQL_clientes: TUniQuery
    Connection = d.ConexaoDB
    SQL.Strings = (
      'select * from clientes order by nome')
    Left = 728
    Top = 144
    object SQL_clientescodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
    end
    object SQL_clientesnome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Required = True
      Size = 45
    end
    object SQL_clientescidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Size = 45
    end
    object SQL_clientesuf: TStringField
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Size = 2
    end
  end
  object SQL_pedidos: TUniQuery
    Connection = d.ConexaoDB
    SQL.Strings = (
      'select p.numero'
      '      ,p.dataemissao'
      '      ,p.codigocliente'
      '      ,p.valortotal'
      '      ,c.nome as nomecliente'
      ' from pedidos as p'
      ''
      'inner join clientes c on'
      '     c.codigo=p.codigocliente'
      ''
      'where p.dataemissao = :dat1'
      ''
      'order by p.numero desc')
    OnCalcFields = SQL_pedidosCalcFields
    Left = 648
    Top = 263
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dat1'
        Value = nil
      end>
    object SQL_pedidosnumero: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'numero'
    end
    object SQL_pedidosdataemissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'dataemissao'
      EditMask = '!99/99/00;1;_'
    end
    object SQL_pedidoscodigocliente: TIntegerField
      FieldName = 'codigocliente'
      Required = True
    end
    object SQL_pedidosvalortotal: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valortotal'
      DisplayFormat = '###,###,##0.00'
    end
    object SQL_pedidosnomecliente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nomecliente'
      ReadOnly = True
      Required = True
      Size = 45
    end
    object SQL_pedidoslk_cliente: TStringField
      FieldKind = fkLookup
      FieldName = 'lk_cliente'
      LookupDataSet = SQL_clientes
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codigocliente'
      Size = 60
      Lookup = True
    end
    object SQL_pedidoscal_total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cal_total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object DsPedidos: TDataSource
    DataSet = SQL_pedidos
    Left = 740
    Top = 267
  end
  object SQL_itens: TUniQuery
    Connection = d.ConexaoDB
    SQL.Strings = (
      'select i.codigo'
      '       ,i.numero_pedido'
      '       ,i.qtde'
      '       ,i.valor_unit'
      '       ,i.valor_total'
      '       ,i.produto'
      '       ,p.descricao'
      ''
      ' from itens_pedido as i'
      ''
      'inner join produtos p on'
      '     p.codigo=i.produto'
      '')
    MasterSource = DsPedidos
    MasterFields = 'numero'
    DetailFields = 'numero_pedido'
    Left = 648
    Top = 343
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'numero'
        Value = nil
      end>
    object SQL_itenscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object SQL_itensnumero_pedido: TIntegerField
      FieldName = 'numero_pedido'
    end
    object SQL_itensqtde: TIntegerField
      DisplayLabel = 'Qtde'
      FieldName = 'qtde'
    end
    object SQL_itensvalor_unit: TFloatField
      DisplayLabel = 'R$ Unit'#225'rio'
      FieldName = 'valor_unit'
      DisplayFormat = '###,###,##0.00'
    end
    object SQL_itensvalor_total: TFloatField
      DisplayLabel = 'R$ Total'
      FieldName = 'valor_total'
      DisplayFormat = '###,###,##0.00'
    end
    object SQL_itensproduto: TIntegerField
      FieldName = 'produto'
    end
    object SQL_itensdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      ReadOnly = True
      Required = True
      Size = 45
    end
  end
  object DsItens: TDataSource
    DataSet = SQL_itens
    Left = 732
    Top = 347
  end
  object DsClientes: TDataSource
    DataSet = SQL_clientes
    Left = 652
    Top = 131
  end
  object SQLAux: TUniQuery
    Connection = d.ConexaoDB
    SQL.Strings = (
      'select p.numero'
      '      ,p.dataemissao'
      '      ,p.codigocliente'
      '      ,p.valortotal'
      '      ,c.nome as nomecliente'
      ' from pedidos as p'
      ''
      'inner join clientes c on'
      '     c.codigo=p.codigocliente'
      ''
      'where p.dataemissao = :dat1')
    Left = 424
    Top = 271
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dat1'
        Value = nil
      end>
  end
end
