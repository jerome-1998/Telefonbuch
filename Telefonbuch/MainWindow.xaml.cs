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
    /// Interaktionslogik für MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        //Initialisierung von Seiten
        KontakteAnsehen kontakteAnsehen;
        KontakteHinzufuegen kontakteHinzufuegen;
        KontakteAendern kontakteAendern;
        public MainWindow()
        {
            InitializeComponent();
            kontakteAnsehen = new KontakteAnsehen(this);
            kontakteHinzufuegen = new KontakteHinzufuegen(this);
            myFrame.Content = kontakteAnsehen;
        }

        //Methoden zum Seitenwechsel
        public void toKontAendern(KontaktListe kontakt)
        {
            kontakteAendern = new KontakteAendern(this, kontakt);
            myFrame.Content = kontakteAendern;
        }
        public void toKontHinz()
        {
            myFrame.Content = kontakteHinzufuegen;
        }
        public void ToHome()
        {
            myFrame.Content = kontakteAnsehen;
        }
    }
}
