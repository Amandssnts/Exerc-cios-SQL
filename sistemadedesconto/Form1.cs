using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace sistemadedesconto
{
    public partial class frmsistemadedesconto : Form
    {
        public frmsistemadedesconto()
        {
            InitializeComponent();
        }

        private void btnCalcular_Click(object sender, EventArgs e)
        {
            {
                try //Se ocorrer algum erro vai passar para o catch.
                {
                    double valorCompra = double.Parse(txtValorCompra.Text); //Convertendo o texto para um valor tipo double.
                    double desconto = double.Parse(txtDesconto.Text);

                    double Desconto = valorCompra * (1 - desconto / 100);//Convertendo a porcetagem para um valor decimal.

                    lblResultado.Text = $"Resultado da compra com desconto: R$ {Desconto:F2}"; //Resultado da compra com desconto.
                }
                catch (FormatException) //Manda para a mensagem de Erro.
                {
                    MessageBox.Show("Erro! Insira valores válidos!"); //Caso inserir algo que não seja válido.

                }



            }

        }
    }
}


