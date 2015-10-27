<script>
var chart = new CanvasJS.Chart("chartContainer",{
            data: [{
                    type: "doughnut",
                    dataPoints: [
                      {  y: 53.37, indexLabel: "Food" },
                      {  y: 35.0, indexLabel: "Shopping" },
                      {  y: 7, indexLabel: "Bill" },
                      {  y: 20, indexLabel: "Rent" },
                      {  y: 5, indexLabel: "Others" }
                      ]
                  }]
            });
chart.render();
</script>