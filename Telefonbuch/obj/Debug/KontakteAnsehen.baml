   M S B A M L   `   `   `  ����F  BTelefonbuch, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:TelefonbuchTelefonbuch  5      !    Telefonbuch.KontakteAnsehen   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      +localclr-namespace:Telefonbuch     5      -   5          N� Title$  KontakteAnsehen��5	       N� 
Background
 �����.��5      � -   5         �Name$ 
ParentGrid��5       � RowDefinitions 5   
   �� 5      $��* �6   6)   �� 5      $
��auto �6   6,    � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��dgShowKontakte��5   |      AutoGenerateColumns .  $��2��6/   $��20(�6C      
IsReadOnly . ��6Q   �� ��5      �� 5       �� 
TargetType)  #System.Windows.Controls.DataGridRow"  6   .�5      -   5        5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Vorname��6%   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 * 66   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6@   �� *	VorName+6^     5      $	 Nachname��6%   $
 * 67    6A   �� *
NachName+6`     5      $	 Telefonnummer��6%   $
 * 6<    6F   �� *	NummerR+6d   5       �� 5"   
   -   5        $��0��5"      $��1��6!   $��2��6.   $��Neue Nummer hinzufügen��6B   $��20(�6c   6�   5#      5$      