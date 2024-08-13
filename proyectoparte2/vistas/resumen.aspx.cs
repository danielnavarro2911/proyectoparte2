using proyectoparte2.logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoparte2.vistas
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        ManejoDatos manejodatos = new ManejoDatos();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                string grado = Session["Grado"] as string;
                string cedula = Session["Cedula"] as string;
                manejodatos.LlenarGrid($"select * from ESTUDIANTE where CEDULA_ESTUDIANTE = '{cedula}'",grid_resumen);
                manejodatos.LlenarGrid($"select * from INFORMEMATRICULA where Cedula = '{cedula}'",grid_grado);
                manejodatos.LlenarGrid($"select Horario, {grado} from Materias",grid_horario);

            }




        }
        protected void salir_click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}