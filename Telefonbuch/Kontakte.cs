using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace Telefonbuch
{
    class Kontakte
    {
        //Datenbankkontext herstellen
        private TelefonBuchContext ctx = new TelefonBuchContext();
        private List<KontaktListe> kontakts = new List<KontaktListe>();


        //Eigenschaften festlegen
        private static int StartID = 1000;
        private int ID;
        private string Vorname;
        private string Nachname;
        private string Nummer;

        //Konstruktor
        public Kontakte(string VName, string NName, string Nummer)
        {
            kontakts = ctx.KontaktListe.ToList();
            StartID = StartID + 1 + kontakts.Count;
            this.ID = StartID;
            this.Vorname = VName;
            this.Nachname = NName;
            this.Nummer = Nummer;
        }

        //Lade Daten aus der Datenbank
        public static void LoadFromDB(TelefonBuchContext ctx, Grid ParentGrid)
        {
            ctx = new TelefonBuchContext();
            ParentGrid.DataContext = ctx.KontaktListe.ToList();
        }

        //Daten in Datenbank hinzufügen
        public void InDB()
        {
            KontaktListe kl = new KontaktListe();
            kl.ID = ID;
            kl.NachName = Nachname;
            kl.VorName = Vorname;
            kl.NummerR = Nummer;

            ctx.KontaktListe.Add(kl);
            ctx.SaveChanges();
        }

        //Daten ändern
        public void ChangeSaves()
        {

        }
    }
}
