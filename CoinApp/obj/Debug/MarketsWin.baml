   M S B A M L   `   `   `  ����B  >CoinApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:CoinAppCoinApp  5   	       CoinApp.MarketsWin   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:CoinApp     5   	     � Title$  
MarketsWin��5   	   $	��450��6   $	��800��6)   .��5	      � 
���/kU�.+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ marketsGrid��5
         AutoGenerateColumns .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Exchange Id��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6^   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6:   ��  �� Path$ 
ExchangeId�6^     5      $ Base Symbol��6%   $
 Auto 6^    6:   �� $ 
BaseSymbol�6^     5      $ Base Id��6%   $
 Auto 6V    66   �� $ BaseId�6V     5      $ Quote Symbol��6%   $
 Auto 6`    6;   �� $ QuoteSymbol�6`     5      $ Quote Id��6%   $
 Auto 6X    67   �� $ QuoteId�6X     5      $ 	Price Usd��6%   $
 Auto 6Z    68   �� $ PriceUsd�6Z     5      $ Volume Usd 24Hr��6%   $
 Auto 6e    6>   �� $ VolumeUsd24Hr�6e   5      5      5      