using Senai.Senatur.WebApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.Senatur.WebApi.Interfaces
{
    interface ITiposUsuariossRepository
    {
        List<TiposUsuarios> ListarTipos();

        TiposUsuarios BuscarPorId(int id);
        
        void Cadastrar(TiposUsuarios novoTipoUsuario);

        void Atualizar(int id, TiposUsuarios tipoUsuarioAtualizado);

        void Deletar(int id);
    }
}
