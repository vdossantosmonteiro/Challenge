using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfAppGitHub.Entities;
using Octokit;
using WpfAppGitHub.Repository;

namespace WpfAppGitHub
{
    /// <summary>
    /// Interação lógica para MainWindow.xam
    /// </summary>
    public partial class MainWindow : Window
    {
        public GitHubClient gitHubClient { get; set; }


        public MainWindow()
        {
            InitializeComponent();
            gitHubClient = new GitHubClient(new ProductHeaderValue("acesso"));

        }

        private void Iniciar_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var logarGitHub = new Login();

                logarGitHub.Nome = txtNome.Text;
                logarGitHub.Senha = txtSenha.Password;

                var autenticar = new Credentials(logarGitHub.Nome, logarGitHub.Senha);
                gitHubClient.Credentials = autenticar;

                var autenticacaoValida = gitHubClient.User.Get(logarGitHub.Nome).Result;

                MessageBox.Show("Usuário logado com sucesso");
            }

            catch (Exception c)
            {
                MessageBox.Show("Dados inválidos", c.Message);
            }
        }


        private void ListarRepositoryUsuario()
        {
            var consultarUsuario = new SearchRepositoriesRequest() { User = txtNome.Text };
            SearchRepositoryResult resultadoConsulta = gitHubClient.Search.SearchRepo(consultarUsuario).Result;
            CarregarRepository(resultadoConsulta);

            //carrega os dados Id, Name e URL na dataGrid
            dataGrid.ItemsSource = resultadoConsulta.Items.Select(i => new {i.Name, i.Url});

        }

        private void CarregarRepository(SearchRepositoryResult result)
        {
            List<UsuarioRepository> listaRepository = new List<UsuarioRepository>();

            foreach (var repositoryUsuario in result.Items)
            {
                //armazena os dados de Id, Name e URL
                listaRepository.Add(new UsuarioRepository(repositoryUsuario.Id,repositoryUsuario.Name, repositoryUsuario.Url));
            }


            dataGrid.ItemsSource = listaRepository;
        }

        private void Consultar_Click(object sender, RoutedEventArgs e)
        {
            ListarRepositoryUsuario();
        }

        private void TxtNome_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void TxtSenha_KeyDown(object sender, KeyEventArgs e)
        {
            if(e.Key == Key.Enter)
            {
                try
                {
                    var logarGitHub = new Login();

                    logarGitHub.Nome = txtNome.Text;
                    logarGitHub.Senha = txtSenha.Password;

                    var autenticar = new Credentials(logarGitHub.Nome, logarGitHub.Senha);
                    gitHubClient.Credentials = autenticar;

                    var autenticacaoValida = gitHubClient.User.Get(logarGitHub.Nome).Result;

                    MessageBox.Show("Usuário logado com sucesso");
                }

                catch (Exception c)
                {
                    MessageBox.Show("Dados inválidos", c.Message);
                }
            }
        }
    }

}
