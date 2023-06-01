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

namespace ses
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            ses.sesDataSet sesDataSet = ((ses.sesDataSet)(this.FindResource("sesDataSet")));
            // Загрузить данные в таблицу User. Можно изменить этот код как требуется.
            ses.sesDataSetTableAdapters.UserTableAdapter sesDataSetUserTableAdapter = new ses.sesDataSetTableAdapters.UserTableAdapter();
            int? coderole = sesDataSetUserTableAdapter.Avto(Login.Text, Parol.Text);
            if (coderole == 1)
            {
                zakaz zakaz2 = new zakaz();
                zakaz2.Show();
                this.Hide();

            }
            else if (coderole == 2)
            {
                zakaz zakaz2 = new zakaz();
                zakaz2.Show();
                this.Hide();

            }
            else if (coderole == 3)
            {
                zakaz zakaz2 = new zakaz();
                zakaz2.Show();
                this.Hide();

            }
            else
            {
                MessageBox.Show("ты долаёб, нет такого ");
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            ses.sesDataSet sesDataSet = ((ses.sesDataSet)(this.FindResource("sesDataSet")));
            // Загрузить данные в таблицу User. Можно изменить этот код как требуется.
            ses.sesDataSetTableAdapters.UserTableAdapter sesDataSetUserTableAdapter = new ses.sesDataSetTableAdapters.UserTableAdapter();
            sesDataSetUserTableAdapter.Fill(sesDataSet.User);
            System.Windows.Data.CollectionViewSource userViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("userViewSource")));
            userViewSource.View.MoveCurrentToFirst();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {

        }
    }
}
