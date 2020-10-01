<script>
  import { Pie } from 'vue-chartjs'

  export default {
    extends: Pie,
    props: ['labels', 'data'],
    data () {
      return {
        chartData: {
          labels: this.labels,
          datasets: [{
              data: this.data,
              backgroundColor: this.getColors()
            }]
        },
        options: {
          legend: {
            display: true
          },
          responsive: true,
          maintainAspectRatio: false
        }
      }
    },
    mounted () {
      this.renderChart(this.chartData, this.options)
    },
    methods: {
      getColors() {
        let colors = []
        for(let i=0; i<this.data.length; i++){
          colors.push('#'+Math.floor(Math.random()*16777215).toString(16));
        }

        return colors
      }
    }
  }
</script>