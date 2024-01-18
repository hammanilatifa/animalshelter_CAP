const cds = require('@sap/cds');
// const req = require("express/lib/request");
const { Pets } = cds.entities('my.shelter')
// const { Adopters } = cds.entities('my.shelter')
  module.exports = srv => {
    srv.on("READ", "Pets", async (/*req, res*/) => {
      const aFilter = cds.ql.SELECT.where;
      if (!aFilter) {
        // const result =  await cds.ql.SELECT.from(Pets);
        const result =  await cds.ql.SELECT.from `my_shelter_Pets` ;
        console.log(result);
        return result;
      }else{
        const result =  await cds.ql.SELECT.from(Pets).where(aFilter);
      console.log(result);
      return result;
      }
      
    });
    srv.before('CREATE', 'Pets', async (req) => {
      const pets = req.data
      const tx = cds.transaction(req)
      
    });
    srv.on("UPDATE", "Pets", (/*req, res*/) => {

    });
  }
