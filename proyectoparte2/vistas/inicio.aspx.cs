using proyectoparte2.logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoparte2.vistas
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ManejoDatos manejodatos = new ManejoDatos();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Guardar_click(object sender, EventArgs e)
        {
            Dictionary<string,string> datos = new Dictionary<string,string>();
            Session["Cedula"] = TextBoxCedulaEstudiante.Text;

            datos.Add("CEDULA_ESTUDIANTE", TextBoxCedulaEstudiante.Text);
            datos.Add("NOMBRE_ESTUDIANTE", TextBoxNombreEstudiante.Text);
            datos.Add("NACIMIENTO_ESTUDIANTE", TextBoxNacimientoEstudiante.Text);
            datos.Add("TUTOR_NOMBRE", TextBoxTutorNombre.Text);
            datos.Add("TUTOR_CEDULA", TextBoxTutorCedula.Text);
            datos.Add("DIRECCON", TextBoxDireccion.Text);
            datos.Add("TUTOR_TELEFONO", TextBoxTutorTelefono.Text);
            datos.Add("TUTOR_CORREO", TextBoxTutorCorreo.Text);
            datos.Add("RELACION_TUTOR_ESTUDIANTE", TextBoxRelacionTutorEstudiante.Text);
            datos.Add("SEGUNDOS_ENCARGADOS", TextBoxSegundosEncargados.Text);

            manejodatos.InsertarDato("ESTUDIANTE", datos);
            Response.Redirect("Materias.aspx");
        }

        

    }
}