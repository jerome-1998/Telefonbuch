   M S B A M L   `   `   `  ����F  BTelefonbuch, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:TelefonbuchTelefonbuch  5      !    Telefonbuch.KontakteAendern   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      +localclr-namespace:Telefonbuch     5      -   5          N� Title$  KontakteAendern��5	       N� 
Background
 ����� N� FontSize$ 25(�62   .��5      � -   5         �Name$ 
ParentGrid��5       � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!    � RowDefinitions 5   
   �� 5      6   �� 5      6   �� 5      6   �� 5      6   �� 5      6   .+�5   
   �� $��0��6   $��0��6    $��40(�6-   $��Kontakt Ändern: ��6;   6X   �� 5   
   $��1��6   $��0��6    $��40(�6-   ��6;   �� *	VorName+6Y   �� 5   
   $��0��6   $��1��6    $��	Vorname: ��6-   $��Center=�6A   6^   �� 5   
   $��0��6   $��2��6    $��
Nachname: ��6-   $��Center=�6B   6_   �� 5   
   $��0��6   $��3��6    $��Nummer: ��6-   $��Center=�6@   6]   �� 5   
   -   5        $��tbxVN��5   /   $��1��6   $��1��6"   $��Center=�6<   ��6W   �� *	VorName+6r   �� 5   
   -   5        $��tbxNN��5   /   $��1��6   $��2��6"   $��Center=�6<   ��6W   �� *
NachName+6s   �� 5    
   -   5        $��tbxNR��5    /   $��1��6   $��3��6"   $��Center=�6<   ��6W   �� *	NummerR+6r   �� 5"   
   -   5        $��btnSave��5"   V   $��0��6   $��4��6!   $��2��6.   $��	Speichern��6B   6}   5$      5%      