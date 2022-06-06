using CoinApp.Model;
using CoinApp.Services;
using System;
using System.Collections.Generic;
using System.Data;
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

namespace CoinApp
{
    /// <summary>
    /// Логика взаимодействия для Page1.xaml
    /// </summary>
    public partial class Page1 : Page
    {
        AssetsService assetsService = new AssetsService();
        public  Page1()
        {
            InitializeComponent();
        }

        private async void LoadInfo(object sender, RoutedEventArgs e)
        {
            Uri uri = new Uri("https://api.coincap.io/v2/assets");
            AssetsModel assets = await assetsService.GetInfoAssets(uri);
            List<InfoAssetModel> assetsList = new List<InfoAssetModel>();
            foreach (var asset in assets.Data)
            {
                assetsList.Add(asset);
            }
            assetsGrid.ItemsSource = assetsList.Take(10);
        }

        private async void Button_Search(object sender, RoutedEventArgs e)
        {
            string search = searсhBox.Text;
            if (search != "")
            {
                Uri uri = new Uri("https://api.coincap.io/v2/assets");
                AssetsModel assets = await assetsService.GetInfoAssets(uri);
                var asset = assets.Data.Where(x => x.Id == search).ToList();
                assetsGrid.ItemsSource = asset;
            }
        }

        private void Page2_Button(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Page2());
        }

        private async void Markets_Button(object sender, RoutedEventArgs e)
        {
            var idCoin = assetsGrid.SelectedItem.ToString();
            MarketsModel marketsModel = await assetsService.GetInfoMarkets(idCoin);
            List<InfoMarketModel> infoMarketModels = new List<InfoMarketModel>();
            foreach (var market in marketsModel.Data)
            {
                infoMarketModels.Add(market);
            }
            MarketsWin marketsWin = new MarketsWin(infoMarketModels);
            marketsWin.Show();
        }
    }
}
