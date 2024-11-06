10:40 / 22:49

Multi-Level Navbar Menu in Power Apps


/Formlas Criar um menu

//Aspas simples para nomes compostos para telas  EX composto: 'About Us' EX simples: AboutUs


CHATCOD--------------------------------------------------------------------------------------------------------------------
MenuItens = 
Table(
    {Id: 1, Name: "Home", Screen: Home},
    {Id: 2, Name: "Company", Submenu: Table(
        {Id: 2.1, Name: "About Us", Screen: 'About Us'},
        {Id: 2.2, Name: "Contact", Screen: Contact},
        {Id: 2.3, Name: "Location", Screen: 'Our Location'}
    )},
    {Id: 3, Name: "Resources", Screen: Resources},
    {Id: 4, Name: "Analytics", Submenu: Table(
        {Id: 4.1, Name: "Overview", Screen: Overview},
        {Id: 4.2, Name: "Reports", Screen: Reports}
    )}
);
MenuTheme = {
    Menu: ColorValue("#4f5a5e"),
    MenuSelected: ColorValue("#3f484b"),
    Submenu: ColorValue("#838b8e"),
    SubmenuSelected: ColorValue("#727a7e")
};

-----------------------------------------------





//Selecione Aoo ==> Formulas ==>

MenuItens = 
Table (
    {Id: 1, Name: "Home", Screen: Home} ,
    {Id: 2, Name: "Company", Submenu: Table({
        Id: 2.1, Name: "About Us", Screen: 'About Us'}, {
            Id: 2.2, Name: "Contact", Screen: Contact}, {
                Id: 2.3, Name: "Location", Screen: 'Our Location'
            })},
            {Id: 3, Name: "Resources", Screen: Resources},
            {Id: 4, Name: "Analytics", Submenu: Table({
                Id: 4.1, Name: "Overview", Screen: Overview}, {
                    Id: 4.2, Name: "Reports", Screen: Reports})}
);

MenuTheme = {Menu: ColorValue("#4f5a5e"), MenuSelected: ColorValue("#3f484b"), Submenu: ColorValue("#838b8e"), SubmenuSelected: ColorValue("#727a7e")};

//Components ==> New Component ==> Name: TopNav ==> Barra lateral direita ==> Access app scope : ON ===> Width : App.Width
//Insert : Container Horizontal | JUSTIFY:PRIMEIRO | Align:Ultimo   ==> NameContainer: conRoot ==> Position x:0 y:0 ==> Parent.Width ==> Parent.Height ==>Border Radius : 0 ==> Drop shadow : None
//Insert: Container Vertical ==> name: conCompany | Altura e largura mín : 0 ==> Flexivel widhth : ON 
//Insert: Container Horizontal ==> Name:conCompany2 | Largura minima: 0 ==> Altura flexivel: Desativado ==> Altura: 50 ==> preenchimento: 0,0,0,0 ==> Alinhar contaiver: personalizado==> Raio de borda: 0 (None)
//Insert: Container Horizontal ==> Name: conCompany3 | Altura e largura mín : 0 ==> Algn (vertical) : centro ==> lacuna: 10 ==> paddingLeft: 20 ==> Flexivel: On ==> Border radius: 0 (none) ==> Alinhamento: personalizado ==> Color ==> Fill : MenuTheme.Menu
//Select conRoot container ==> Insert Blank galeria horizontal ==> name: galMenu ==> items: MenuItems ==> minimo height: 0 ==> alinhamento: personalizado ==> alinhamento : ultimo ==> Flexivel = desativado ==> Width: Self.AllItemsCount * 150 ==> TemplanteSize: Self.Wisth / Self.AllItemsCount ==> TemplantePadding: 0 ==> DelayItemLoading : false ==> ShowScrollbar : false
//Clicar no lapis da galeria ==> Insert: Vertical Container ==> Name: conMenu ==> Align(horizontal): ultimo ==> X: 0 ==> Y: 0 ==> Width: Parent.TemplanteWidht ==> Height: Parent.Height ==> Border Radius : 0 ==> DropShadow : none
//Clica no container conMenu ==> Insert: ContainerNormal ==> Name:conMenu2 ==> Minimum widht: o ==> Align: ultimo ==> Flexible: Desabilitado ==> Height : 50 ==> borderradius: 0 (none)







