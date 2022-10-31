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

   const myArgs = process.argv.slice(2);
    
   var final =[]
   
        for(var i=0;i<datas.entries.length;i++)
        {
                 
            if(datas.entries[i].Category == myArgs[0])
            {
                final.push(datas.entries[i]);

            }
        
        }
        for(var b=0; b<myArgs[1];b++)
        {
            console.log(final[b]);
        }


})