using db.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
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

namespace BP2
{
    /// <summary>
    /// Interaction logic for Direktori.xaml
    /// </summary>
    public partial class Direktori : Window
    {
        public Direktori()
        {
            InitializeComponent();
            var db1 = new db.Model.databaseContainer();
            direktori.ItemsSource = LoadDirektori();
        }

        private BindingList<Radnik> LoadDirektori()
        {
            var db1 = new db.Model.databaseContainer();

            BindingList<Radnik> radniciList = new BindingList<Radnik>();


            foreach (var r in db1.Radniks)
            {
                if (r.POZ == "Direktor") { 

                radniciList.Add(r);
                
                }
            }


            return radniciList;

        }
    }
}
