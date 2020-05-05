using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Common;

namespace FrameWork4
{
    public class AltaEmpleado
    {


        static AltaEmpleado()
        {
            //
            // TODO: Add constructor logic here
            //
        }
            internal static Tuple<int, string> altaEmpleado(string nombre, string Apellido, string EmpleadoCategoriaDescripcion, 
            string EmpleadoEstadoDescripcion, DateTime FechaAlta,DateTime FechaNacimiento, string CorreoElectronico,
            string telefono,  string NroCUIL, string Domicilio)
              {
            int res = 0;
            string sessID = "";
            DbCommand comm = Database.CreateCommand("sp_AltaEmpleado");
            comm.Parameters.Add(Database.CreateParameter(comm, "@Nombre", DbType.String, nombre));
            comm.Parameters.Add(Database.CreateParameter(comm, "@Apellido", DbType.String, Apellido));
            comm.Parameters.Add(Database.CreateParameter(comm, "@EmpleadoCategoriaDescripcion", DbType.String, EmpleadoCategoriaDescripcion));
            comm.Parameters.Add(Database.CreateParameter(comm, "@EmpleadoEstadoDescripcion", DbType.String, EmpleadoEstadoDescripcion));
            comm.Parameters.Add(Database.CreateParameter(comm, "@FechaAlta", DbType.Date, FechaAlta));

            comm.Parameters.Add(Database.CreateParameter(comm, "@FechaNacimiento", DbType.Date, FechaNacimiento));
            comm.Parameters.Add(Database.CreateParameter(comm, "@CorreoElectronico", DbType.String, CorreoElectronico));
            comm.Parameters.Add(Database.CreateParameter(comm, "@Telefono", DbType.String, telefono));

            comm.Parameters.Add(Database.CreateParameter(comm, "@NroCUIL", DbType.String, NroCUIL));
            comm.Parameters.Add(Database.CreateParameter(comm, "@Domicilio", DbType.String, Domicilio));
          
            DataTable dt = Database.ExecuteSelectCommand(comm);
            if (dt.Rows.Count > 0)
            {
                res = (int)dt.Rows[0]["res"];
                sessID = dt.Rows[0]["sessionID"].ToString();

            }
            return Tuple.Create(res, sessID);

        }

  
    }
}