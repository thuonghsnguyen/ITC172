<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Customer Entry Form</h2>
    <table>
    <tr>
        <td>Enter Last Name</td>
        <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
    <td><asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="
        Last Name is required" CssClass="error"></asp:RequiredFieldValidator></td>
    </tr>        
       <tr>     
        <td>Enter First Name</td>
        <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
       </tr> 
        <tr>  
        <td>Enter Email</td>
        <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="
        Email is required" CssClass="error"></asp:RequiredFieldValidator></td>
        <td><asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Must be a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="error"></asp:RegularExpressionValidator></td>
            
        </tr>
        <tr>   
        <td>Enter Phone</td>
        <td><asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
        <td>Enter Password</td>
        <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
        <td>
                <asp:RequiredFieldValidator ID="rfvConfirm" runat="server" 
                    ErrorMessage="You must confirm the password" ControlToValidate="txtPassword" CssClass="error"
                    >
                </asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvConfirm" runat="server" 
                    ErrorMessage="Password must match" 
                    ControlToValidate="txtConfirm" 
                    ControlToCompare="txtPassword" CssClass="error">
                </asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>Confirm Password</td>       
        <td><asp:TextBox ID="txtConfirm" runat="server"></asp:TextBox></td>    
    </tr>
    <tr>
        <td><asp:Button ID="btnSumbit" runat="server" Text="Submit" OnClick="btnSumbit_Click"/></td>
        <td><asp:Label ID="lblError" runat="server" Text="" CssClass="error"></asp:Label></td>
         <td>&nbsp;</td>
   </tr>

    </table>



</asp:Content>

