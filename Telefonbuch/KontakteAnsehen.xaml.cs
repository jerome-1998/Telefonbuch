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
    /// Interaktionslogik für KontakteAnsehen.xaml
    /// </summary>
    public partial class KontakteAnsehen : Page
    {
        //Seite initialiesieren
        MainWindow mainWindow;
        TelefonBuchContext ctx;
        public KontakteAnsehen(MainWindow wnd)
        {
            InitializeComponent();
            mainWindow = wnd;
        }

        //Zur Seite: KontaktAendern
        private void DataGridRow_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            //Ausgewählten Kontakt wählen
            KontaktListe kontakt = ctx.KontaktListe.ToList().Where(x => x.ID.Equals(((KontaktListe)dgShowKontakte.SelectedItem).ID)).FirstOrDefault();//((DataGridRow)(dg.SelectedItem)).Row.ItemArray[0].ToString()
            mainWindow.toKontAendern(kontakt);
        }
        
        //Zur Seite: Kontakt hinzufügen
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            mainWindow.toKontHinz();
        }

        //Seite mit Daten füllen
        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            ctx = new TelefonBuchContext();
            Kontakte.LoadFromDB(ctx, ParentGrid);
        }
    }
}
