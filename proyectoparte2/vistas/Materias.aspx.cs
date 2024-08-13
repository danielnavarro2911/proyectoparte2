using proyectoparte2.logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoparte2.vistas
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        ManejoDatos manejodatos = new ManejoDatos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                manejodatos.LlenarDropDown("select distinct Grados from Grados", grado_dropdown, "Grados");
            }


        }

        protected void aceptar_click(object sender, EventArgs e)
        {
            if (grado_dropdown.SelectedIndex > 0)
            {

               
                manejodatos.LlenarGrid($"select Horario, {grado_dropdown.SelectedItem.Text} from Materias", materias_grid);

      

            }
        }
        protected void calcularcostos_click(object sender, EventArgs e)
        {
            manejodatos.LlenarGrid("select *, [Costo por Materia]*[Costo Matricula] as [Monto Total] from COSTOS",gridcostos);


        }
        protected void matricular_click(object sender, EventArgs e)
        {
            string cedula = Session["Cedula"] as string;
            Session["Grado"] = grado_dropdown.SelectedItem.Text;
            Dictionary <string,string> datos = new Dictionary<string,string>();
            datos.Add("Cedula", cedula);
            datos.Add("Grado", grado_dropdown.SelectedItem.Text);
            manejodatos.InsertarDato("INFORMEMATRICULA",datos);
            Response.Redirect("resumen.aspx");
            

        }






    }
}