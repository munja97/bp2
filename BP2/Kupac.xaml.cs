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
    /// Interaction logic for Kupac.xaml
    /// </summary>
    public partial class Kupac : Window
    {
        public static BindingList<db.Model.Kupac> kupciList;


        public Kupac()
        {
            InitializeComponent();
            var db1 = new db.Model.databaseContainer();
            kupci.ItemsSource = LoadKupci();
            DataContext = this;
        }


        private BindingList<db.Model.Kupac> LoadKupci()
        {
            var db1 = new db.Model.databaseContainer();

            kupciList = new BindingList<db.Model.Kupac>();
            foreach (var r in db1.Kupacs)
            {
                kupciList.Add(r);
                
            }


            return kupciList;

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

            db.Model.Kupac kupac = new db.Model.Kupac();
            kupac.KID = Int32.Parse(kid.Text);
            kupac.KBROJ = kbroj.Text;
            kupac.KFIKSNI = kfiksni.Text;
            kupac.KGRAD = kgrad.Text;
            kupac.KMOB = kmobilni.Text;
            kupac.KNAZIV = knaziv.Text;
            kupac.KULICA = kulica.Text;

            var db1 = new db.Model.databaseContainer();

            try
            {
                db1.Kupacs.Add(kupac);

                db1.SaveChanges();
                kupciList.Add(kupac);

            }
            catch (Exception)
            {
                MessageBox.Show("That user alredy exist");
            }




            

        }

        private void Button_Delete(object sender, RoutedEventArgs e)
        {

            int row = kupci.SelectedIndex;
            int kid = kupciList[row].KID;

            var db1 = new db.Model.databaseContainer();

            //if (!db1.Kupacs.Local.Contains(kupciList[row]))
            //{

            //    db1.Kupacs.Attach(kupciList[row]);
            //}

            db1.Kupacs.Remove(kupciList[row]);
            kupciList.RemoveAt(row);
            db1.SaveChanges();

        }
    }
}
