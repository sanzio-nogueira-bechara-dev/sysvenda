unit vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UniProvider, MySQLUniProvider, Data.DB, Datasnap.DBClient,
  DBAccess, Uni, MemDS, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxStatusBar, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.DBCtrls, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  CRGrid;

type
  TfrmVendas = class(TForm)
    SQL_produtos: TUniQuery;
    SQL_produtoscodigo: TIntegerField;
    SQL_produtosdescricao: TStringField;
    SQL_produtosprecovenda: TFloatField;
    SQL_clientes: TUniQuery;
    SQL_clientescodigo: TIntegerField;
    SQL_clientesnome: TStringField;
    SQL_clientescidade: TStringField;
    SQL_clientesuf: TStringField;
    pnl_topo: TPanel;
    btn_sair: TSpeedButton;
    StatusBar1: TdxStatusBar;
    pnl_esquerda: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    data1: TDateTimePicker;
    pnl_venda: TPanel;
    SQL_pedidos: TUniQuery;
    SQL_pedidosnumero: TIntegerField;
    SQL_pedidosdataemissao: TDateTimeField;
    SQL_pedidoscodigocliente: TIntegerField;
    SQL_pedidosvalortotal: TFloatField;
    SQL_pedidosnomecliente: TStringField;
    DsPedidos: TDataSource;
    SQL_itens: TUniQuery;
    SQL_itenscodigo: TIntegerField;
    SQL_itensnumero_pedido: TIntegerField;
    SQL_itensqtde: TIntegerField;
    SQL_itensvalor_unit: TFloatField;
    SQL_itensvalor_total: TFloatField;
    SQL_itensproduto: TIntegerField;
    SQL_itensdescricao: TStringField;
    DsItens: TDataSource;
    Bevel1: TBevel;
    Label2: TLabel;
    edtEmissao: TJvDBDatePickerEdit;
    DBLCliente: TcxDBLookupComboBox;
    SQL_pedidoslk_cliente: TStringField;
    DsClientes: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    Panel1: TPanel;
    CRDBGrid1: TCRDBGrid;
    SQL_pedidoscal_total: TFloatField;
    SQLAux: TUniQuery;
    dbeTotal: TDBEdit;
    Label8: TLabel;
    Label5: TLabel;
    DBProduto: TMaskEdit;
    NomeProduto: TMaskEdit;
    Label9: TLabel;
    DBValor: TMaskEdit;
    DBQtde: TMaskEdit;
    Label10: TLabel;
    BitBtn1: TBitBtn;
    procedure btn_sairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SQL_pedidosCalcFields(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure data1Exit(Sender: TObject);
  private
    { Private declarations }
    procedure mostra_pedidos;
    Function SalvarRegistro : Boolean;
    function valortotal(chave:Integer):real;
    procedure novo;
    procedure padrao;
    function salvar_detalhes:boolean;
  public
    { Public declarations }
  end;

var
  frmVendas: TfrmVendas;

implementation

uses
  dm, Funcoes, ListaProdutos, uFuncoes, cArquivoIni;

{$R *.dfm}

procedure TfrmVendas.BitBtn1Click(Sender: TObject);
begin
  if Length(trim(DBPRODUTO.text))<=0 then
  begin
     ActiveControl:=DBPRODUTO;
     Raise exception.Create('Informe o PRODUTO.');
  end;

  if Length(trim(DBVALOR.text))<=0 then
  begin
     ActiveControl:=DBVALOR;
     Raise exception.Create('Informe o VALOR.');
  end;

  if Length(trim(DBQTDE.text))<=0 then
  begin
     ActiveControl:=DBQTDE;
     Raise exception.Create('Informe a QUANTIDADE.');
  end;

  ActiveControl:=DBPRODUTO;
  Salvar_Detalhes;

end;

procedure TfrmVendas.btn_sairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmVendas.Button1Click(Sender: TObject);
begin
  SalvarRegistro;
end;

procedure TfrmVendas.data1Exit(Sender: TObject);
begin
  mostra_pedidos;
end;

procedure TfrmVendas.DBProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  qtd:real;
begin
   qtd:=1;
   if Key=VK_F2 then
   begin
     frmListaProdutos:= TfrmListaProdutos.Create(frmVendas); // Instancia o ojeto para cadastrar novos usuários
     Try
        frmListaProdutos.origem.caption:='1';
        frmListaProdutos.ShowModal;
        if CONFIRME('Transportar Codigo?')=IDYES then
        begin
           dbProduto.Text  :=D.SQL_produtoscodigo.text;
           NomeProduto.Text:=D.SQL_produtosdescricao.Text;
           dbvalor.Text    :=formatfloat('###,###,##0.00',d.SQL_produtosprecovenda.AsFloat);
           dbqtde.Text     :=formatfloat('####',qtd);
           ActiveControl   :=DBQTDE;
        end;
      Finally
        FreeAndNil(frmListaProdutos);  // Libera o ojeto de memória.
      End;
   end;

end;


procedure TfrmVendas.FormCreate(Sender: TObject);
var
  Porta: string;
begin
  if not FileExists(TArquivoIni.ArquivoIni) then
  begin
    TArquivoIni.AtualizarIni('SERVER', 'TipoDataBase', 'MySQL');
    TArquivoIni.AtualizarIni('SERVER', 'ServerName', '.\');
    TArquivoIni.AtualizarIni('SERVER', 'Port', '3300');
    TArquivoIni.AtualizarIni('SERVER', 'User', 'root');
    TArquivoIni.AtualizarIni('SERVER', 'Password', '147258');
    TArquivoIni.AtualizarIni('SERVER', 'Database', 'vendas_teste');
    MessageDlg('Arquivo '+ TArquivoIni.ArquivoIni +' Criado com sucesso' +#13+
               'Configure o arquivo antes de inicializar aplicação',MtInformation,[mbok],0);
    Application.Terminate;
  end
  else
  begin
    d:=Td.Create(self);     //Instancia o DataModule
    with d.ConexaoDB do begin
      if TArquivoIni.LerIni('SERVER','TipoDataBase')='MySQL' then
          Server       := TArquivoIni.LerIni('SERVER','ServerName'); //Instancia do SQLServer
          Port         := StrToInt(TArquivoIni.LerIni('SERVER','Port'));  //Porta do SQL Server
          UserName     := TArquivoIni.LerIni('SERVER','User');  //Usuario do Banco de Dados
          Password     := TArquivoIni.LerIni('SERVER','Password');  //Senha do Usuário do banco
          Database     := TArquivoIni.LerIni('SERVER','Database');;  //Nome do Banco de Dados
          Porta        :=  IntToStr(Port);
          AutoCommit   := True;
          ConnectString:='Provider Name='+'MySQL'+';User ID='+UserName+';Password='+Password+';Data Source='+Server+';Database='+Database+';Port='+Porta+'';
          Connected    :=True;  //Faz a Conexão do Banco
    end;
  end;

end;

procedure TfrmVendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  begin
     Key := #0;
     Perform(Wm_NextDlgCtl, 0, 0);
  end;
  If Key = #27 Then close;

end;

procedure TfrmVendas.FormShow(Sender: TObject);
begin
  mostra_pedidos;
  SQL_itens.Close;
  SQL_itens.Open;
end;

procedure TfrmVendas.mostra_pedidos;
begin
    SQL_pedidos.Close;
    SQL_pedidos.Params[0].AsDateTime := data1.Date;
    SQL_pedidos.Open;
end;

procedure TfrmVendas.novo;
begin

  If SQL_pedidos.Active=false then
  begin
    SQL_pedidos.active:=true;
  end;

  SQL_pedidos.Cancel;
  SQL_pedidos.Insert;

  DBLCliente.Enabled:=True;
  DBLCliente.Enabled   :=True;

  padrao;

end;

procedure TfrmVendas.padrao;
var
  vDate : TDate;
begin
   vDate := Date();
   if DsPedidos.State=dsInsert then
   begin
     SQL_pedidos.Edit;
     SQL_pedidosdataemissao.AsDateTime:=vDate;
     ActiveControl:=edtEmissao;
   end;

   if DsPedidos.State=dsEdit then
   begin
     ActiveControl:=edtEmissao;
   end;

end;


function TfrmVendas.SalvarRegistro: Boolean;
var
  mes,ano   :string;
  ProxCodigo:Integer;
begin
   if not (SQL_pedidos.State in [dsInsert,dsEdit]) then
   begin
     result:=true;
     exit;
   end;

   if CONFIRME('Salvar Registro?')=IDNo then
   begin
      If DsPedidos.DataSet.State in [dsinsert,dsedit] then
         DsPedidos.DataSet.Cancel;

      result:=true;
      exit;

   end;

   Perform(Wm_NextDlgCtl, 0, 0);

   if Length(trim(DBLCliente.text))<=0 then
   begin
     ShowMessage('AVISO!!! CAMPO CLIENTE é de preenchimento obrigatório');
     ActiveControl:=DBLCliente;
     Exit;
   end;


   try
      if not d.conexaoDB.InTransaction then
        d.ConexaoDB.StartTransaction;

      If(DsPedidos.DataSet.State In [dsInsert,dsEdit])Then

      Begin

        TClientDataSet(DsPedidos.DataSet).Edit;
        TClientDataSet(DsPedidos.DataSet).Post;
        TClientDataSet(DsPedidos.DataSet).ApplyUpdates(0);

      End;

      d.ConexaoDB.Commit;

      ActiveControl:=edtEmissao;

      mostra_pedidos;

   except
       on exc:Exception do
       begin
          d.ConexaoDB.Rollback;
          raise exception.create('Ocorreu o seguinte erro: '+exc.message);
       end;
   end;


end;

function TfrmVendas.salvar_detalhes: boolean;
begin

   SQL_itens.Insert;
   SQL_itensproduto.AsInteger   :=StrToInt(DBPRODUTO.Text);
   SQL_itensvalor_unit.AsFloat  :=StrToFloat(DBVALOR.Text);
   SQL_itensQtde.AsFloat         :=StrToFloat(DBQTDE.Text);

   SQL_itensvalor_total.AsFloat    :=0;


   Perform(Wm_NextDlgCtl, 0, 0);

   SQL_itensnumero_pedido.AsInteger :=SQL_pedidosnumero.Value;
   SQL_itensvalor_total.Value       :=SQL_itensQTDE.Value*SQL_itensvalor_unit.Value;

   try
      if not d.ConexaoDB.InTransaction then
         d.ConexaoDB.StartTransaction;

      TClientDataSet(DsItens.DataSet).Edit;
      TClientDataSet(DsItens.DataSet).Post;
      GravaTransacaoBD( D.conexaoDB, SQL_itens, Nil );


      SQL_pedidos.Edit;
      SQL_pedidosvalortotal.AsFloat:=SQL_pedidoscal_total.AsFloat;
      SQL_pedidos.Post;

      result:=true;

      DBPRODUTO.Clear;
      NOMEPRODUTO.Clear;
      DBVALOR.Clear;
      DBQTDE.Clear;

      SQL_itens.Close;
      SQL_itens.Open;

      ActiveControl:=DBPRODUTO;

   except
       on exc:Exception do
       begin
         d.ConexaoDB.Rollback;
         raise exception.create('Ocorreu o seguinte erro: '+exc.message);
       end;
   end;

end;

procedure TfrmVendas.SpeedButton1Click(Sender: TObject);
begin
  if SalvarRegistro then
  Begin
     Novo;
  End;
end;

procedure TfrmVendas.SQL_pedidosCalcFields(DataSet: TDataSet);
begin
     SQL_pedidoscal_total.AsFloat  :=valortotal(SQL_pedidosnumero.value);
end;

function TfrmVendas.valortotal(chave: Integer): real;
var
  x:real;
begin
   x:=0;
   SQLAux.SQL.clear;
   SQLAux.SQL.add('select valor_total from itens_pedido where numero_pedido= :x1 ');
   SQLAux.ParamByName('x1').Value:=chave;
   SQLAux.open;
   while not(SQLAux.Eof) do
   begin
      x:=x+SQLAux.fieldbyname('valor_total').VALUE;
      SQLAux.Next;
   end;
   result:=x;
end;

end.
