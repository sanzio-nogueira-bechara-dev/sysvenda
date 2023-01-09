unit ListaProdutos;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
    Vcl.Graphics, Datasnap.DBClient,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons,
    Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
    cxEdit, dxSkinsCore, dxSkinsDefaultPainters, Vcl.StdCtrls, cxTextEdit, cxDBEdit,
    Data.DB, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
    cxDBLookupComboBox, Vcl.Menus, cxButtons, Vcl.ComCtrls, dxStatusBar,
    Vcl.Grids, Vcl.DBGrids, CRGrid, MemDS, DBAccess, Uni, System.ImageList,
  Vcl.ImgList, Vcl.Mask, sMaskEdit, sStatusBar, Vcl.ToolWin;


type
  TfrmListaProdutos = class(TForm)
    origem: TLabel;
    acao: TLabel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    DataSource: TDataSource;
    sStatusBar1: TsStatusBar;
    sMaskEdit1: TsMaskEdit;
    Panel1: TPanel;
    btn_sair: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure BuscarKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure sMaskEdit1Change(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
  private
    { Private declarations }
    procedure mostra;
  public
    { Public declarations }
  end;

var
  frmListaProdutos: TfrmListaProdutos;

implementation

uses Funcoes, dm;

{$R *.dfm}


procedure TfrmListaProdutos.mostra;
begin
  d.SQL_produtos.close;
  d.SQL_produtos.SQL.clear;
  if Not(Empty(frmListaProdutos.sMaskEdit1.Text)) then
     d.SQL_produtos.SQL.add('select * from Produtos where descricao LIKE '''+frmListaProdutos.smaskedit1.Text+'%'+''' ');
  if Empty(frmListaProdutos.sMaskEdit1.Text)      then
     d.SQL_produtos.SQL.add('select * from Produtos order by descricao ');
     d.SQL_produtos.open;
end;



procedure TfrmListaProdutos.FormActivate(Sender: TObject);
begin
  ActiveControl:=DBGRID1;
  mostra;
end;


procedure TfrmListaProdutos.btSairClick(Sender: TObject);
begin
  Close;
end;



procedure TfrmListaProdutos.BuscarKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  begin
     Key := #0;
     Perform(Wm_NextDlgCtl, 0, 0);
  end;
  If Key = #27 Then close;
end;



procedure TfrmListaProdutos.btn_sairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmListaProdutos.DBGrid1DblClick(Sender: TObject);
begin
  if (d.SQL_produtos.Active=False) or (d.SQL_produtos.RecordCount=0) then
  begin
    raise exception.Create('Nenhum PRODUTO selecionado.');
  end;
  if (origem.caption='1') or (origem.caption='3')  then
  begin
    origem.Caption:='0';
    close;
  end;

end;



procedure TfrmListaProdutos.DBGrid1Enter(Sender: TObject);
begin
  KeyPreview:=false;
end;

procedure TfrmListaProdutos.DBGrid1Exit(Sender: TObject);
begin
  KeyPreview:=false;
end;

procedure TfrmListaProdutos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #27 Then
  begin
    ActiveControl:=sMASKEDIT1;
  end;
  If Key = #13 Then
  begin
     Key := #0;
     if origem.caption='1' then
     begin
       origem.Caption:='0';
       close;
     end;
  end;

end;

procedure TfrmListaProdutos.DBGrid1TitleClick(Column: TColumn);
begin
  try
     d.SQL_produtos.IndexFieldNames := Column.FieldName;
  except
  end;
end;

procedure TfrmListaProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  begin
     Key := #0;
     Perform(Wm_NextDlgCtl, 0, 0);
  end;
  If Key = #27 Then close;
end;

procedure TfrmListaProdutos.MaskEdit1Change(Sender: TObject);
begin
  Mostra;
end;



procedure TfrmListaProdutos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if odd(d.SQL_produtos.RecNo) and (d.SQL_produtos.State <> dsInsert) then
  begin
     DBGrid1.Canvas.Brush.Color := clSkyBlue;
     DBGrid1.Canvas.FillRect(Rect);
     Dbgrid1.Canvas.Font.Color:= clBlack;
     DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
  end;
end;


procedure TfrmListaProdutos.sMaskEdit1Change(Sender: TObject);
begin
  Mostra;
end;

end.
