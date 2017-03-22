<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="Exemplo_01_Componentes.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <fieldset>
    <legend>Telefone</legend>
    <div>
      <label for="nome">Nome</label> :
      <input type="text" name="nome" id="nome" placeholder="Digite seu nome" runat="server"/>
        <asp:RequiredFieldValidator ID="validaNome" ControlToValidate="nome" ErrorMessage="Digite o seu nome!" runat="server" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
  </fieldset>
  <fieldset>
    <legend>Telefone</legend>
    <div>
      <label for="telFixo">Fixo</label> :
      <input type="text" name="telFixo" id="telFixo" runat="server" placeholder="Digite o nr do Tel Fixo"/>
        <asp:RequiredFieldValidator ID="validaFixo" ControlToValidate="telFixo" ErrorMessage="Digite o nr do Tel Fixo!" runat="server" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div>
      <label for="telMovel">Celular</label> :
      <input type="text" name="telMovel" id="telMovel" runat="server" placeholder="Digite o nr do Celular"/>
        <asp:RequiredFieldValidator ID="validaCel" ControlToValidate="telMovel" ErrorMessage="Digite o nr do Celular!" runat="server" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="comparaCel" ControlToValidate="telMovel" ValueToCompare="10" Operator="GreaterThan" runat="server" ErrorMessage="O número deve ser maior que 10" ></asp:CompareValidator>
    </div>
  </fieldset>
        <div>
            <asp:Button ID="btnEnviar" Text="PROCESSAR" runat="server" /> 
        </div>
        
    </form>
    <asp:HyperLink ID="linkCad" Text="Cadastro" runat="server" NavigateUrl="~/cadastro.aspx"></asp:HyperLink>
</body>
</html>

