   M S B A M L   `   `   `  ����>  :ses, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:sesses  5   	       ses.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   #localclr-namespace:ses     5   	   -   5          � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � 	Resources 5	         ses.sesDataSet   
sesDataSet  userViewSource �� Source �� Source��%U   &	        &	      7     5
   
   6   �� 5   
    66   �� *User+8   5      .��5      �  � DataContext# [ 6   .+�5   
   �� -   5        $��Login��5      $
��Left=�6   $��23��6:   $��331,181,0,0q�6F    �� TextWrapping$
 Wrap=�6[   $��
Логин��6o   $	��Top=�6|   $	��120��6�   6�   �� 5   
   -   5        $��Parol��5      $
��Left=�6   $��23��6:   $��331,210,0,0q�6F   $
 Wrap=�6[   $��Пароль��6o   $	��Top=�6}   $	��120��6�   �� 5   
   -   5        $��Авторизация��5      $
��Left=�6'   $��348,248,0,0q�6B   $	��Top=�6W   $��80��6o   6z   �� 5   
   $��Регистрация��6   $
��Left=�6'   $��349,275,0,0q�6B   $	��Top=�6W   $��79��6o   �� 5   
   $��1,0,712,351q�6   $��logo.png��6%   $
��Fill=�67   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ userDataGrid��5         AutoGenerateColumns .     EnableRowVirtualization . $��0,151,475,68q�6|   	   RowDetailsVisibilityMode$	 VisibleWhenSelected=�6�   $y�	Collapsed=�6�   ��6d   �� 
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        userIDColumn��,  &System.Windows.Controls.DataGridColumn   Header$ User ID��5   V      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToHeader 6y   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6;   �� *UserID+6y     5      -   5        userSurnameColumn��$ User Surname��5   `   $ SizeToHeader 6v    6@   �� *UserSurname+6v     5      -   5        userNameColumn��$ 	User Name��5   Z   $ SizeToHeader 6m    6=   �� *
UserName+6m     5      -	   5        userPatronymicColumn��$ User Patronymic��5   f   $ SizeToHeader 6    6C   �� *UserPatronymic+6     5      -
   5        userLoginColumn��$ 
User Login��5   \   $ SizeToHeader 6p    6>   �� *	UserLogin+6p     5      -   5        userPasswordColumn��$ User Password��5   b   $ SizeToHeader 6y    6A   �� *UserPassword+6y     5      -   5        userRoleColumn��$ 	User Role��5   Z   $ SizeToHeader 6m    6=   �� *
UserRole+6m   5      5      5       