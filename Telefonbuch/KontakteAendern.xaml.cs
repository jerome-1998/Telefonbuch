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
    /// Interaktionslogik für KontakteAendern.xaml
    /// </summary>
    public partial class KontakteAendern : Page
    {
        //Seite Initialisieren
        MainWindow mainWindow;
        TelefonBuchContext ctx = new TelefonBuchContext();
        List<KontaktListe> kontakte;
        ListCollectionView displayList;
        KontaktListe thisKontakt;
        public KontakteAendern(MainWindow wnd, KontaktListe kontakt)
        {
            InitializeComponent();
            mainWindow = wnd;
            thisKontakt = kontakt;
        }

        //Speichern und zur Seite: KontakteAnsehen
        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            //Änderungen speichern
            ctx.SaveChanges();
            mainWindow.ToHome();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            //Angewählten Kontakt aufrufen
            kontakte = ctx.KontaktListe.ToList();
            displayList = new ListCollectionView(kontakte);
            displayList.MoveCurrentTo(kontakte.Where(x=>x.ID.Equals(thisKontakt.ID)).FirstOrDefault());
            ParentGrid.DataContext = displayList;
        }
    }
}
