using proyectoparte2.logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoparte2.vistas
{
    public partial class Login : System.Web.UI.Page
    {
        ManejoDatos manejodatos = new ManejoDatos();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sign_Up_click(object sender, EventArgs e)
        {
            // Asegúrate de que 'manejodatos.checkear_credenciales' esté bien definido y accesible
            if (manejodatos.checkear_credenciales(cedula_sign.Text, password_sign.Text))
            {
                text_sign.Text = "si";
                Response.Redirect("inicio.aspx");
            }
            else
            {
                text_sign.Text = "Error, cedula o contraseña incorrecta";
            }
        }

        protected void Log_in_click(object sender, EventArgs e)
        {
            if (password_log.Text == password_log_confirm.Text)
            {
                Dictionary<string, string> nuevo_usuario = new Dictionary<string, string>();

                nuevo_usuario.Add("Cedula", cedula_log.Text);
                nuevo_usuario.Add("Password", password_log.Text);
                manejodatos.InsertarDato("LOGIN", nuevo_usuario);
                text_log.Text = "Usuario registrado correctamente";
            }
            else
            {
                text_log.Text = "Error, contraseñas no coinciden o estan vacias";
            }

        }


    }
}