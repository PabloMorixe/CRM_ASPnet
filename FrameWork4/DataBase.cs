﻿using System;
using System.Data;
using System.Data.Common;
using System.Configuration;
using System.Collections.Generic;

namespace FrameWork4
{
    public class Database
    {

        static Database()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        private static DbCommand CreateCommand()
        {
            String CRM_aspConnectionString = ConfigurationManager.ConnectionStrings["CRM_aspConnectionString"].ConnectionString;
            String dbProviderName = ConfigurationManager.ConnectionStrings["CRM_aspConnectionString"].ProviderName;

            DbProviderFactory factory = DbProviderFactories.GetFactory(dbProviderName);
            DbConnection conn = factory.CreateConnection();
            conn.ConnectionString = CRM_aspConnectionString;
            DbCommand comm = conn.CreateCommand();
            return comm;
        }

        public static DbCommand CreateCommand(String sql)
        {
            DbCommand comm = CreateCommand();
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = sql;
            return comm;
        }
        //
        public static DbParameter CreateParameter(DbCommand comm, string nombre, string Apellido, string EmpleadoCategoriaDescripcion,
            string EmpleadoEstadoDescripcion, string FechaAlta, string FechaNacimiento, string CorreoElectronico,
            string telefono, string NroCUIL, string Domicilio)

        {
            DbParameter param = comm.CreateParameter();
            param.ParameterName = nombre;
            param.DbType = Type;
            param.Value = Value;
            return param;
        }
        //

        public static DbCommand CreateCommand(String sql, bool adhocSQL)
        {
            DbCommand comm = CreateCommand();
            comm.CommandType = CommandType.Text;
            comm.CommandText = sql;
            return comm;
        }

        public static DbParameter CreateParameter(DbCommand comm, String Name, DbType Type, String Value)
        {
            DbParameter param = comm.CreateParameter();
            param.ParameterName = Name;
            param.DbType = Type;
            param.Value = Value;
            return param;
        }

        public static DbParameter CreateParameter(DbCommand comm, String Name, DbType Type, Int32 Value)
        {
            DbParameter param = comm.CreateParameter();
            param.ParameterName = Name;
            param.DbType = Type;
            param.Value = Value;
            return param;
        }

        public static DbParameter CreateParameter(DbCommand comm, String Name, DbType Type, byte Value)
        {
            DbParameter param = comm.CreateParameter();
            param.ParameterName = Name;
            param.DbType = Type;
            param.Value = Value;
            return param;
        }

        public static DbParameter CreateParameter(DbCommand comm, String Name, DbType Type, Boolean Value)
        {
            DbParameter param = comm.CreateParameter();
            param.ParameterName = Name;
            param.DbType = Type;
            param.Value = Value;
            return param;
        }

        public static DbParameter CreateParameter(DbCommand comm, String name, DbType type, ParameterDirection direction)
        {
            DbParameter param = comm.CreateParameter();
            param.ParameterName = name;
            param.DbType = type;
            if (type == DbType.String)
                param.Size = 255;
            param.Direction = direction;
            return param;
        }

        public static DbParameter CreateParameter(DbCommand comm, String Name, DbType Type, DateTime Value)
        {
            DbParameter param = comm.CreateParameter();
            param.ParameterName = Name;
            param.DbType = Type;
            param.Value = Value;
            return param;
        }

        // execute the stored ExecuteNonQueryprocedure and return true if it executes successfully, or false otherwise
        public static Int32 ExecuteNonQuery(DbCommand command)
        {
            int affectedRows = -1;
            try
            {
                command.Connection.Open();
                affectedRows = command.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                throw ex;
            }
            finally
            {
                command.Connection.Close();
            }
            return affectedRows;
        }

        public static DataTable ExecuteSelectCommand(DbCommand command)
        {
            DataTable table;
            try
            {
                command.Connection.Open();
                DbDataReader reader = command.ExecuteReader();
                table = new DataTable();
                table.Load(reader);
                reader.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                throw ex;
            }
            finally
            {
                command.Connection.Close();
            }
            return table;
        }

        public static DbDataReader ExecuteReader(DbCommand command)
        {
            DbDataReader reader;
            try
            {
                command.Connection.Open();
                reader = command.ExecuteReader();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                throw ex;
            }
            finally
            {
                //command.Connection.Close();
                // ver de implementar el using
                // http://www.codeproject.com/Articles/6564/Understanding-the-using-statement-in-C
            }
            return reader;
        }

        public static String ExecuteScalar(DbCommand command)
        {
            String value = "";
            try
            {
                command.Connection.Open();
                value = command.ExecuteScalar().ToString();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                throw ex;
            }
            finally
            {
                command.Connection.Close();
            }
            return value;
        }
    }
}
