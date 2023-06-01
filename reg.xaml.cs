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
using System.Windows.Shapes;

namespace ses
{
    /// <summary>
    /// Логика взаимодействия для reg.xaml
    /// </summary>
    public partial class reg : Window
    {
        public reg()
        {
            InitializeComponent();
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
    }
}
