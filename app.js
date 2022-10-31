const request = require('request')
const url = 'https://api.publicapis.org/entries'
request({url: url},(error, response) =>{
    const datas = JSON.parse(response.body)
    let api= [];
  
    for(var p =0; p<datas.entries.length;p++)

    {
        api.push(datas.entries[p].API);
        
    }
    
    api.sort();
    api.reverse();
   // console.log(api); //reverse the API's


})