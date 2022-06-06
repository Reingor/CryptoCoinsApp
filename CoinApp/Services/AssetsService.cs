using CoinApp.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Json;
using System.Text;
using System.Threading.Tasks;

namespace CoinApp.Services
{
    public class AssetsService
    {
        public HttpClient _client = new HttpClient();
        public async Task<AssetsModel> GetInfoAssets(Uri url)
        {
            AssetsModel assetsModel = null;
            HttpResponseMessage response = await _client.GetAsync(url);
            if (response.IsSuccessStatusCode)
            {
                assetsModel = await response.Content.ReadFromJsonAsync<AssetsModel>();
            }
            return assetsModel;
        }

        public async Task<MarketsModel> GetInfoMarkets(string id)
        {
            MarketsModel marketsModel = null;
            string url = $"https://api.coincap.io/v2/assets/{id}/markets";
            HttpResponseMessage response = await _client.GetAsync(url);
            if (response.IsSuccessStatusCode)
            {
                marketsModel = await response.Content.ReadFromJsonAsync<MarketsModel>();
            }
            return marketsModel;
        }

    }
}
