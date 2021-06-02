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
    /// Interaction logic for Radnici.xaml
    /// </summary>
    public partial class Radnici : Window
    {
        public static BindingList<Radnik> radniciList;
        

        public Radnici()
        {
            InitializeComponent();
            var db1 = new db.Model.databaseContainer();
            radnici.ItemsSource = LoadRadnici();
            DataContext = this;

        }

        private BindingList<Radnik> LoadRadnici()
        {
            var db1 = new db.Model.databaseContainer();

            radniciList = new BindingList<Radnik>();
            foreach(var r in db1.Radniks)
            {
                radniciList.Add(r);
            }


            return radniciList;

        }

        private void Button_Delete(object sender, RoutedEventArgs e)
        {

            int row = radnici.SelectedIndex;
            int jmbg = radniciList[row].JMBG;

            var db1 = new db.Model.databaseContainer();

            if (!db1.Radniks.Local.Contains(radniciList[row]))
            {

                db1.Radniks.Attach(radniciList[row]);
            }

            db1.Radniks.Remove(radniciList[row]);
            radniciList.RemoveAt(row);
            db1.SaveChanges();

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Radnik radnik = new Radnik();
            radnik.IME = ime.Text;
            radnik.JMBG = Int32.Parse(jmbg.Text);
            radnik.PLT = Int32.Parse(plata.Text);
            radnik.PRZ = prezime.Text;
            radnik.POZ = pozicija.Text;

            var db1 = new db.Model.databaseContainer();

            

            try
            {
                db1.Radniks.Add(radnik);
               
                db1.SaveChanges();
                radniciList.Add(radnik);

            }
            catch(Exception)
            {
                MessageBox.Show("That user alredy exist");
            }



        }

        //private void Button_Modify(object sender, RoutedEventArgs e)
        //{
        //    int row = radnici.SelectedIndex;
        //    int jmbg = radniciList[row].JMBG;
        //    Modify mw = new Modify(row);
        //    mw.Show();

        //}
    }
}
