
var app = new Vue({

    el:'#app',
    data:{
        message:'titulo',
        sum:2+6,
        value:5,
        isVisible:false
    },
    computed:{
        reversedMessage: function(){
            return this.message.split('').reverse().join('')
        }
    },
    methods:{
        calculateSum(value1,value2){
            return value1 + value2;
        }
    }
    
});