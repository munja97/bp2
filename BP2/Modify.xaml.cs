using db.Model;
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

namespace BP2
{
    /// <summary>
    /// Interaction logic for Modify.xaml
    /// </summary>
    public partial class Modify : Window
    {
        int indeks;

        public Modify(int jmbg)
        {
            this.indeks = jmbg;
            InitializeComponent();
        }

        private void Button_Save(object sender, RoutedEventArgs e)
        {

           
            

            //var db1 = new db.Model.databaseContainer();


            //Radnici.radniciList[indeks].IME = ime.Text;
            //Radnici.radniciList[indeks].PRZ = prezime.Text;
            //Radnici.radniciList[indeks].JMBG = Int32.Parse(jmbg.Text);
            //Radnici.radniciList[indeks].PLT = Int32.Parse(plata.Text);
            //Radnici.radniciList[indeks].POZ = pozicija.Text;
            //this.Close();


            //int x = 0;
            //foreach (Radnik r in Radnici.radniciList)
            //{
            //    if (r.JMBG == mbr)
            //    {
            //        r
            //    }

            //db1.Radniks.Remove(radniciList[row]);
            //radniciList.RemoveAt(row);
            //db1.SaveChanges();

        }
    }
}
