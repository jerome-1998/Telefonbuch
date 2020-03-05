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

namespace Telefonbuch
{
    /// <summary>
    /// Interaktionslogik für KontakteHinzufuegen.xaml
    /// </summary>
    public partial class KontakteHinzufuegen : Page
    {
        //Seite Initialisieren
        MainWindow mainWindow;
        public KontakteHinzufuegen(MainWindow wnd)
        {
            InitializeComponent();
            mainWindow = wnd;
        }
        //Zur Seite: Kontakte Ansehen
        private void Btnback_Click(object sender, RoutedEventArgs e)
        {
            mainWindow.ToHome();
        }

        //Neuen Kontakt anlegen
        private void Btnnewcontact_Click(object sender, RoutedEventArgs e)
        {
            string Vn = tbxVName.Text;
            string Nn = tbxNName.Text;
            string Nr = tbxTHNummer.Text;
            Kontakte neuerKontakt = new Kontakte(Vn, Nn, Nr);
            neuerKontakt.InDB();
            tbxNName.Clear();
            tbxTHNummer.Clear();
            tbxVName.Clear();
        }
    }
}
