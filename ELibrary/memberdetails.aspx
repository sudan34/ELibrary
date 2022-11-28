<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="memberdetails.aspx.cs" Inherits="ELibrary.memberdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Details</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <label>Member ID</label>
                                <div class="form-group ms-1">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:LinkButton CssClass="btn btn-primary ms-1" ID="Button2" runat="server" OnClick="Button2_Click"> <i class="fa-regular fa-circle-check"></i></asp:LinkButton><br>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label>Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control ms-1" ID="TextBox8" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:LinkButton CssClass="btn btn-success ms-1" ID="Button3" runat="server" OnClick="Button3_Click"><i class="fa-regular fa-circle-check"></i></asp:LinkButton><br>
                                        <asp:LinkButton CssClass="btn btn-warning ms-1 " ID="Button4" runat="server" OnClick="Button4_Click"><i class="fa-solid fa-circle-pause"></i></asp:LinkButton><br>
                                        <asp:LinkButton CssClass="btn btn-danger ms-1" ID="Button5" runat="server" OnClick="Button5_Click"><i class="fa-solid fa-rectangle-xmark"></i></asp:LinkButton><br>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" TextMode="Date" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact Number" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="State" ReadOnly="True"></asp:TextBox>
                                    <%--<asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server" ReadOnly="true">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="Bagmati" Value="Bagmati" />
                                        <asp:ListItem Text="Karnali" Value="Karnali" />
                                        <asp:ListItem Text="Lunbini" Value="Lunbini" />
                                        <asp:ListItem Text="Gandaki" Value="Gandaki" />
                                    </asp:DropDownList>--%>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="City" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" placeholder="Pin Code" TextMode="Number" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Button CssClass="btn btn-danger btn-lg w-100" ID="Button1" runat="server" Text="Delete User Permanently" OnClick="Button1_Click" /><br>
                                </div>
                                <br>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="home.aspx"><< Back to Home</a><br>
                <br>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member List</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" DataKeyNames="member_id" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" ReadOnly="True" SortExpression="member_id"></asp:BoundField>
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name"></asp:BoundField>
                                        <asp:BoundField DataField="account_status" HeaderText="Status" SortExpression="accout_status"></asp:BoundField>
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact" SortExpression="contact_no"></asp:BoundField>
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email"></asp:BoundField>
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state"></asp:BoundField>
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city"></asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
