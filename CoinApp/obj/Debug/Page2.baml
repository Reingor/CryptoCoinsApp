   M S B A M L   `   `   `  ����B  >CoinApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:CoinAppCoinApp  5          CoinApp.Page2   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:CoinApp     5        N� Title$  Page2��5	      .��5      � 
���/kU�.+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 
assetsGrid��5         AutoGenerateColumns .  $��10,64,10,46q�6D      Columns 5      4  .System.Windows.Controls.DataGridTemplateColumn  5         CellTemplate 5      �� 5      .R�5      �� -   5        .��5   <   M6?   5      5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Id��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6M   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   ��  �� Path$ Id�6M     5      $
 Rank��6%   $
 Auto 6Q    63   �� $
 Rank�6Q     5      $ Symbol��6%   $
 Auto 6U    65   �� $ Symbol�6U     5      $
 Name��6%   $
 Auto 6Q    63   �� $
 Name�6Q     5      $ Supply��6%   $
 Auto 6U    65   �� $ Supply�6U     5      $ Market Cap Usd��6%   $
 Auto 6c    6=   �� $ MarketCapUsd�6c     5      $ Volume Usd 24Hr��6%   $
 Auto 6e    6>   �� $ VolumeUsd24Hr�6e     5      $ 	Price Usd��6%   $
 Auto 6Z    68   �� $ PriceUsd�6Z     5      $ Change Percent 24Hr��6%   $
 Auto 6m    6B   �� $ ChangePercent24Hr�6m     5      $ 	Vwap 24Hr��6%   $
 Auto 6Z    68   �� $ Vwap24Hr�6Z     5      $ Explorer��6%   $
 Auto 6Y    67   �� $ Explorer�6Y   5!      �� 5"   
   -   5        	 ��Name$	 
searсhBox��5"      $
��Left=�6&   $��	26,41,0,0q�6A   
 �� TextWrapping$

 Wrap=�6T   $	��Top=�6h   $	��120��6�   �� 5#   
   -   5        $��Search��5#      $
��Left=�6"   $��
164,40,0,0q�6=   $	��Top=�6Q   $��50��6   �� 5$   
   -   5        $��1��5$      $
��Left=�6   $��
244,41,0,0q�68   $	��Top=�6L   $��17��6d   6o   5%      5&      