   M S B A M L   `   `   `  ����G  CWpfAppGitHub, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:WpfAppGitHubWpfAppGitHub  5   	       WpfAppGitHub.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:WpfAppGitHub     5   	     � Title$  Desafio GitHub��5   	   $	��450��6    $	��500��6-   ���	#FFFDFDFD.��5	      � $��10,0,2,0q�6    � ColumnDefinitions 5
   
   �� 5      $	��83* �6   �� 5      $
��157* �6   .+�5   
   �� -   5         ��Name$ txtNome��5      $
��Left=�6#   $��23��6>   $��118,141,0,0q�6J    �� TextWrapping$
 Wrap=�6_   $	��Top=�6s   $	��240��6�   $��2��6�   6�   �� 5   
   $��Nome: ��6   $
��Left=�6!   $��116,114,0,0q�6<   $	��Top=�6Q   $��88��6i   $��14(�6t   $��2��6�   �� 5   
   $��Senha: ��6   $
��Left=�6"   $��118,167,0,0q�6=   $	��Top=�6R   $��88��6j   $��14(�6u   $��2��6�   G� 5   
   -   5         G�Name$ txtSenha��5      $
��Left=�6(   $��25��6C   $��118,194,0,0q�6O   $	��Top=�6d   $	��240��6|   $��2��6�    J� 	AllowDrop . 6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGrid��5      $
��Left=�6%   $��90��6@   $��
-4,312,0,0q�6L   $	��Top=�6`   $	��473��6x   $��2��6�   �� 5   
   -   5         ��Name$ 
btnIniciar��5      $��Logar��6%   $
��Left=�65   $��134,238,0,0q�6P   $	��Top=�6e   $	��210��6}   $��2��6�   ���	#FF49B867$��28��6�   
�������
�������$��Segoe UI Semibold)�6�    . $��Center=�6-   J� IsManipulationEnabled . $��Center=�6n  �� 5   
   -   5        $ btnConsultar��5      $��	Consultar��6'   $
��Left=�6;   $��134,275,0,0q�6V   $	��Top=�6k   $	��210��6�   $��28��6�   $��2��6�   ���	#FFFDFDFD
����������	#FF5B5B5B$��Segoe UI Semibold)�6	  �� 5   
   $��1��6   $
��Left=�6    $��59��6;   $��	10,25,0,0q�6G   $	��Top=�6Z   $��75��6r   �� 5   
   ���	#FF3F3F40$
��Left=�6%   $��56��6@   $��-13,10,-2,0q�6L   
���   �$	��Top=�6p   $	��495��6�   $��2��6�   �� 5   
   $��-12,8,113,347q�6   $��g.gif��6'   $
��Fill=�66   �� 5   
   $��Login no GitHub��6   $��1��6*   $
��Left=�6:   $��7,68,0,0q�6U   $	��Top=�6g   $��Segoe UI Semibold)�6   $��15(�6�   5      5      