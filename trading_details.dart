<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>TradingView Financials Widget</title>
  <style>
    body {
      background: #181a20;
      margin: 0;
      padding: 0;
    }
  </style>
</head>
<body>
  <!-- TradingView Widget BEGIN -->
  <div class="tradingview-widget-container">
    <div class="tradingview-widget-container__widget"></div>
    <div class="tradingview-widget-copyright">
      <a href="https://www.tradingview.com/" rel="noopener nofollow" target="_blank">
        <span class="blue-text">Track all markets on TradingView</span>
      </a>
    </div>
  </div>
  <script type="text/javascript">
    // Get symbol from URL, default to NASDAQ:AAPL
    function getSymbol() {
      const params = new URLSearchParams(window.location.search);
      return params.get('symbol') || 'NASDAQ:AAPL';
    }
    // Dynamically inject the widget script with the symbol
    const widgetScript = document.createElement('script');
    widgetScript.type = 'text/javascript';
    widgetScript.async = true;
    widgetScript.src = 'https://s3.tradingview.com/external-embedding/embed-widget-financials.js';
    widgetScript.innerHTML = JSON.stringify({
      "symbol": getSymbol(),
      "colorTheme": "dark",
      "displayMode": "regular",
      "isTransparent": false,
      "locale": "en",
      "width": 400,
      "height": 550
    });
    document.querySelector('.tradingview-widget-container__widget').appendChild(widgetScript);
  </script>
  <!-- TradingView Widget END -->
</body>
</html>