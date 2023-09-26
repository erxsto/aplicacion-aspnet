<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="My_ASP.NET_Application._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <p>El sistema corrió por primera vez a las <%: DateTime.Now.TimeOfDay %></p>
    <table style="border-width: 1px; border-style: Solid; width: 100%;" name="tblClientes">
        <thead>
            <tr style="color: LightGrey; background-color: Black;">
                <th>Primer Apellido</th>
                <th>Segundo Apellido</th>
                <th>Nombre</th>
                <th>Sexo</th>
            </tr>
        </thead>
        <tbody id="tblClientes">
        </tbody>
    </table>
    <script>
        var data1 = [{ "idCliente": 1, "primerApellido": "Aguilar", "segundoApellido": "Yañez", "nombres": "Alejandro ", "fechaNacimiento": "1944-07-07T00:00:00", "sexo": "M" }, { "idCliente": 2, "primerApellido": "Alfaro ", "segundoApellido": "Vargas", "nombres": "Alexis", "fechaNacimiento": "1958-02-18T00:00:00", "sexo": "M" }, { "idCliente": 3, "primerApellido": "Bobadilla", "segundoApellido": "Treviño", "nombres": "Alis", "fechaNacimiento": "1959-04-03T00:00:00", "sexo": "F" }, { "idCliente": 4, "primerApellido": "Cavasos", "segundoApellido": "Treviño", "nombres": "Ana", "fechaNacimiento": "1962-10-27T00:00:00", "sexo": "F" }, { "idCliente": 5, "primerApellido": "Cruz", "segundoApellido": "Tellez", "nombres": "Ana Julia ", "fechaNacimiento": "1964-06-10T00:00:00", "sexo": "M" }, { "idCliente": 6, "primerApellido": "Esparza", "segundoApellido": "Saucedo", "nombres": "Andre", "fechaNacimiento": "1965-02-26T00:00:00", "sexo": "M" }, { "idCliente": 7, "primerApellido": "Espinosa", "segundoApellido": "Sanchez ", "nombres": "David Enrique", "fechaNacimiento": "1970-12-01T00:00:00", "sexo": "F" }, { "idCliente": 8, "primerApellido": "Fonseca ", "segundoApellido": "Ramos ", "nombres": "Dulce Rosario  ", "fechaNacimiento": "1971-06-24T00:00:00", "sexo": "M" }, { "idCliente": 9, "primerApellido": "Gamboa", "segundoApellido": "Patron", "nombres": "Erika Yulienth", "fechaNacimiento": "1975-10-10T00:00:00", "sexo": "F" }, { "idCliente": 10, "primerApellido": "García", "segundoApellido": "Ortiz", "nombres": "Francisco Javier", "fechaNacimiento": "1976-10-21T00:00:00", "sexo": "F" }, { "idCliente": 11, "primerApellido": "Gomez", "segundoApellido": "Mendoza", "nombres": "Gina", "fechaNacimiento": "1979-02-21T00:00:00", "sexo": "F" }, { "idCliente": 12, "primerApellido": "Gonzalez", "segundoApellido": "Ruiz", "nombres": "Guillermo Ulises", "fechaNacimiento": "1981-08-11T00:00:00", "sexo": "M" }, { "idCliente": 13, "primerApellido": "Gonzalez", "segundoApellido": "Martinez", "nombres": "Gustavo Adolfo", "fechaNacimiento": "1982-03-05T00:00:00", "sexo": "F" }, { "idCliente": 14, "primerApellido": "Gonzalez", "segundoApellido": "Lopez", "nombres": "Hever", "fechaNacimiento": "1984-09-09T00:00:00", "sexo": "M" }, { "idCliente": 15, "primerApellido": "Jones", "segundoApellido": "Lo", "nombres": "José Alfonso", "fechaNacimiento": "1986-06-01T00:00:00", "sexo": "M" }, { "idCliente": 16, "primerApellido": "Lara", "segundoApellido": "Jasso", "nombres": "Juan Ramón", "fechaNacimiento": "1987-10-29T00:00:00", "sexo": "M" }, { "idCliente": 17, "primerApellido": "Lopez", "segundoApellido": "Gomez", "nombres": "Manuel", "fechaNacimiento": "1987-12-29T00:00:00", "sexo": "M" }, { "idCliente": 18, "primerApellido": "Magaña", "segundoApellido": "García", "nombres": "Maria Argelia", "fechaNacimiento": "1988-11-21T00:00:00", "sexo": "M" }, { "idCliente": 19, "primerApellido": "Martinez ", "segundoApellido": "García", "nombres": "Maria Idalia", "fechaNacimiento": "1989-02-19T00:00:00", "sexo": "F" }, { "idCliente": 20, "primerApellido": "Matos", "segundoApellido": "Fisher", "nombres": "Maricela", "fechaNacimiento": "1991-03-19T00:00:00", "sexo": "F" }, { "idCliente": 21, "primerApellido": "Mendoza", "segundoApellido": "Espinosa", "nombres": "Mark", "fechaNacimiento": "1991-07-13T00:00:00", "sexo": "F" }, { "idCliente": 22, "primerApellido": "Mondradon ", "segundoApellido": "De Vega", "nombres": "Mayela Isabel", "fechaNacimiento": "1996-09-08T00:00:00", "sexo": "F" }, { "idCliente": 23, "primerApellido": "Mora", "segundoApellido": "De La Barrera", "nombres": "Mía Valentina", "fechaNacimiento": "2004-01-17T00:00:00", "sexo": "M" }, { "idCliente": 24, "primerApellido": "Palos", "segundoApellido": "Cruz", "nombres": "Mirtha Ramona", "fechaNacimiento": "2007-12-29T00:00:00", "sexo": "F" }, { "idCliente": 25, "primerApellido": "Perales", "segundoApellido": "Chávez ", "nombres": "Natalia ", "fechaNacimiento": "2010-11-17T00:00:00", "sexo": "F" }, { "idCliente": 26, "primerApellido": "Puente", "segundoApellido": "Canseco", "nombres": "Omar", "fechaNacimiento": "2011-04-10T00:00:00", "sexo": "M" }, { "idCliente": 27, "primerApellido": "Ruiz", "segundoApellido": "Canales ", "nombres": "Ricarda", "fechaNacimiento": "2012-05-25T00:00:00", "sexo": "F" }, { "idCliente": 28, "primerApellido": "Sanchez", "segundoApellido": "Beltran ", "nombres": "Roberto ", "fechaNacimiento": "2016-06-28T00:00:00", "sexo": "F" }, { "idCliente": 29, "primerApellido": "Segoviano", "segundoApellido": "Barajas", "nombres": "Romelia", "fechaNacimiento": "2023-03-25T00:00:00", "sexo": "M" }, { "idCliente": 30, "primerApellido": "Vallejo", "segundoApellido": "Angel", "nombres": "Santiago Eden", "fechaNacimiento": "2023-05-22T00:00:00", "sexo": "M" }]

        $.ajax({
            method: 'GET',
            url: '', //aqui iria el link del json que se envió por correo
            success: function (response) {
                myArray = response.data
                tablaCliente(data1)//cambiar todos data1 a myArray
            }
        })

        function tablaCliente(data1) {
            var table = document.getElementById('tblClientes')
            for (var i = 0; i < data1.length; i++) {


                //Mostrar genero
                if (data1[i].sexo == "F") {
                    var col = `
							<select id=${data1[i].idCliente} onchange="getComboA(this); prueba(this)">
                                <option value="F" selected>Femenino</option>
                                <option value="M">Masculino</option></select>
					  `
                } else {
                    var col = `
							<select id=${data1[i].idCliente} onchange="getComboA(this); prueba(this)">
                                <option value="F">Femenino</option>
                                <option value="M" selected>Masculino</option></select>
					  `
                }
                var row = `<tr>
							<td>${data1[i].primerApellido}</td>
							<td>${data1[i].segundoApellido}</td>
							<td>${data1[i].nombres}</td>
                            <td>${col}</td>
					  </tr>
                      `
                //Registro modificado

                table.innerHTML += row
            }
        }


        function getComboA(sl) {
            var table = document.getElementById('tblClientes')
            var tot = data1.length
            var totFem = data1.filter(x => x.sexo == "F").length
            var totMas = data1.filter(x => x.sexo == "M").length
            var porcF = (totFem/tot) *100
            var porcM = (totMas / tot) * 100
            for (var i = 0; i < data1.length; i++) {
                var idc = parseInt(sl.id, 10);
                if (idc == data1[i].idCliente && sl.value == "F") {
                    var row1 = `<tr>
                            <th id=${data1[i].idCliente} style="background-color: pink;"colspan="4" class="text-center">Registro Modificado: ${data1[i].primerApellido} ${data1[i].segundoApellido} ${data1[i].nombres} (${sl.value})	M: ${porcM}% F: ${porcF}%</th>
                      </tr>
					  `;
                    table.innerHTML += row1
                    document.getElementById(`${data1[i].idCliente}`).style.display = 'table-cell'

                } else if (idc == data1[i].idCliente && sl.value == "M") { 
                    var row2 = `<tr>
                            <th id=${data1[i].idCliente} style="background-color: LightSkyBlue;"colspan="4" class="text-center">Registro Modificado: ${data1[i].primerApellido} ${data1[i].segundoApellido} ${data1[i].nombres} (${sl.value})M: ${porcM}% F: ${porcF}%</th>
                      </tr>
					  `;
                    table.innerHTML += row2
                    console.log(sl.value, idc)
                    document.getElementById(`${data1[i].idCliente}`).style.display = 'table-cell'
                }
            }
        }
        function prueba(sl) {

        }

    </script>
</asp:Content>
