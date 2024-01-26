import express from "express"
import sqlite3 from "sqlite3"

import cors from 'cors'

const app = express()
const db = new sqlite3.Database('cloudComparison.db')

app.use(cors())

app.get('/api/category/:id', (req,res)=>{
   const {id} = req.params
      db.all(`select
                  T1.name,
                  subCategoryId,
                  categoryId,
                  T2.name as 'categoryName'
               from subCategories T1
                  left join categories T2 on T1.category = T2.categoryId
                where category = ?;`, [id], (err, rows) => {
         if (err) return console.log(err)
         res.json(
            rows
            )
      })
})

app.get('/api/services', (req,res)=>{
      db.all(`select
               T1.name,
               link,
               subCategory,
               description,
               providerId,
               T2.name as 'ProviderName',
               T2.longName as 'ProviderLongName'
            from services T1
               left join providers T2 on T1.provider = T2.providerId
            order by T1.provider;`, [], (err, rows) => {
         if (err) return console.log(err)
         res.json(
            rows   
         )
      })
})

app.get('/api/services/:id', (req,res)=>{
   const {id} = req.params
   db.all(`select
            T1.name,
            link,
            subCategory,
            description,
            providerId,
            T2.name as 'ProviderName',
            T2.longName as 'ProviderLongName'
         from services T1
            left join providers T2 on T1.provider = T2.providerId
         where subCategory = ?
         order by T1.provider;`, [id], (err, rows) => {
      if (err) return console.log(err)
      res.json(
         rows   
      )
   })
})

const PORT = 3001
app.listen(PORT, ()=> console.log("funciona!!"))