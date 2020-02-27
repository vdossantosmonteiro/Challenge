using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfAppGitHub.Entities;

namespace WpfAppGitHub.Repository
{
    public class UsuarioRepository
    {
        public UsuarioRepository(long id, string nome, string url)
        {

            var listagem = new Listagem();

            listagem.IdListagem = id;
            listagem.Nome = nome;
            listagem.Url = url;
        }
    }
}
