
<script>
  

var chart2 = new CanvasJS.Chart("chartContainer2",{
            data: [{
                    type: "line",
                    dataPoints: [
                      { x: new Date(2015, 00, 1), y: 7500 },
                      { x: new Date(2015, 01, 1), y: 8000 },
                      { x: new Date(2015, 02, 1), y: 6000 },
                      { x: new Date(2015, 03, 1), y: 6500 },
                      { x: new Date(2015, 04, 1), y: 9000 },
                      { x: new Date(2015, 05, 1), y: 7000 },
                      { x: new Date(2015, 06, 1), y: 10000 },
                      { x: new Date(2015, 07, 1), y: 6000 },
                      { x: new Date(2015, 08, 1), y: 8500 },
                      { x: new Date(2015, 09, 1), y: 9000 },
                      { x: new Date(2015, 10, 1), y: 7500 },
                      { x: new Date(2015, 11, 1), y: 6500 }
                      ]
                  }]
            });
            chart2.render();
</script>