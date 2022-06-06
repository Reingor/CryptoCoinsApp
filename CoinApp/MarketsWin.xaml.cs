using CoinApp.Model;
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
using System.Windows.Shapes;

namespace CoinApp
{
    public partial class MarketsWin : Window
    {
        List<InfoMarketModel> marketsModel = new List<InfoMarketModel>();
        public MarketsWin()
        {
            InitializeComponent();
        }

        public MarketsWin(List<InfoMarketModel> infoMarketModels)
        {
            InitializeComponent();
            marketsModel = infoMarketModels;
        }
        
        private void LoadMarketsInfo(object sender, RoutedEventArgs e)
        {
            marketsGrid.ItemsSource = marketsModel;
        }
    }
}
