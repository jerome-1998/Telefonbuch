   M S B A M L   `   `   `  ����F  BTelefonbuch, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:TelefonbuchTelefonbuch  5      %    Telefonbuch.KontakteHinzufuegen   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      +localclr-namespace:Telefonbuch     5        N� Title$  KontakteHinzufuegen��5	       N� 
Background
 ����� N� FontSize$ 25(�66   .��5      �  � ColumnDefinitions 5   
   �� 5      $	��195 �6   6-   �� 5      6!    � RowDefinitions 5   
   �� 5      6   �� 5      6   �� 5      6   �� 5      6   .+�5   
   �� $��0��6   $��Vorname:��6   $��Right=�60   6N   �� 5   
   $��1��6   $��	Nachname:��6   $��Right=�61   6O   �� 5   
   $��2��6   $��Right=�6   ��5      �� 5       �� TextWrapping$
 Wrap=�6   $!��Telefonnummer/ Handynummer:��61   6V   5      �� 5   
   -   5         ��Name$ tbxVName��5   /   $��1��6   $��0��6"   6C   �� 5    
   -   5        $ tbxNName��5    /   $��1��6   $��1��6"   6C   �� 5!   
   -   5        $ tbxTHNummer��5!   /   $��1��6   $��2��6"   6F   �� 5#   
   -   5         ��Name$ btnback��5#   .   $��0��6   $��3��6!   ��5$      �� 5%      $
 Wrap=�6   $��zurück��61   6A   5'      �� 5(   
   -   5        $ btnnewcontact��5(   .   $��1��6   $��3��6!   ��5)      �� 5*      $
 Wrap=�6   $��Kontakt hinzufügen��61   6M   5,      5-      5.      