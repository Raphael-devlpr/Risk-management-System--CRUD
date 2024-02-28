const mysql = require('mysql');

const pool = mysql.createPool({
    
    connectionLimit : 100,
    host        : process.env.DB_HOST,
    user        : process.env.BD_USER,
    pass        : process.env.DB_PASS,
    database    : process.env.DB_NAME
});
/////////////////////////////////////////////// View User\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
exports.view = (req, res) => {
     
pool.getConnection((err, connection) => {  
        if(err) throw err; 
        console.log('connected as ID' + connection.threadId);  
//user connection
connection.query('SELECT * FROM user WHERE status = "active"', (err, rows) => {

//Release once connection id done
connection.release();
if(!err){
    let removedUser = req.query.removed;
    res.render('home', { rows, removedUser });
    } else{
        console.log(err);
        }console.log('The data from user table:  \n', rows);

    })   });
}

//search bar
exports.find = (req, res) => {

    pool.getConnection((err, connection) => {  
        if(err) throw err; 
        console.log('connected as ID' + connection.threadId);  

       let searchTerm = req.body.search;

      
       connection.query('SELECT * FROM user WHERE first_name LIKE ? OR last_name LIKE ?', ['%' + searchTerm + '%', '%' + searchTerm + '%'], (err, rows) => ///sql query for search- avoids SQL injection
        {
connection.release();

if(!err){
    res.render('home', { rows });
    } else{
        console.log(err);
        }

console.log('The data from user table:  \n', rows);

    })   });


}


///////////////////////////POSTS NEW DATA WHEN IT IS  SUBIMTED\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

//just to render form
exports.form = (req, res) => {
    res.render('add-user');
}

//add new user
exports.create = (req, res) => {
const {first_name, last_name, email, phone, comments} = req.body

    pool.getConnection((err, connection) => {  
        if(err) throw err; 
        console.log('connected as ID' + connection.threadId);  

       let searchTerm = req.body.search;

      
       connection.query('INSERT INTO user SET first_name = ?, last_name = ?, email = ?, phone = ?',  [first_name, last_name, email, phone], (err, rows) => /// insert submit user data
        {
connection.release();

 

if(!err){
    res.render('add-user', {alert:'Supplier added successfully!' });
    } else{
        console.log(err);
        }

console.log('The data from user table:  \n', rows);

    })   });
}


//editing user 
exports.edit = (req, res) => {
pool.getConnection((err, connection) => {  
    if(err) throw err; 
    console.log('connected as ID' + connection.threadId);  

    //user connection
    connection.query('SELECT * FROM user WHERE id = ?',[req.params.id], (err, rows) => {

//Release once connection id done
connection.release();

if(!err){
res.render('edit-user', { rows });
} else{
    console.log(err);
    }console.log('The data from user table:  \n', rows);
}) });}



/////////////////////////UPDATING USER\\\\\\\\\\\\\\\\\\\\\\\\\\\\
exports.update = (req, res) => {
    const { first_name, last_name, email, phone, comments } = req.body;
    
    pool.getConnection((err, connection) => {  
        if(err) throw err; 
        console.log('Connected as ID' + connection.threadId);  
    
        //user connection
        connection.query('UPDATE user SET first_name = ?, last_name = ?, email = ?, phone = ?, comments = ? WHERE id = ?', [first_name, last_name, email, phone, comments, req.params.id], (err, rows) => {
    
    //Release once connection id done
    connection.release();
    if(!err){
  
        pool.getConnection((err, connection) => {  
            if(err) throw err; 
            console.log('connected as ID' + connection.threadId);  

        connection.query('SELECT * FROM user WHERE id = ?',[req.params.id], (err, rows) => {
        connection.release();
        
        if(!err){
        res.render('edit-user', { rows, alert:`${first_name} has been updated`});
        } else{
            console.log(err);
            }console.log('The data from user table:  \n', rows);
        }) });


    } else{
        console.log(err);
        }
    
    console.log('The data from user table: \n', rows);
    
    })   });
    
    }


    //////////////////////////////////Deleting user \\\\\\\\\\\\\\\\\\\\\\\\\\
    exports.delete = (req, res) => {
        pool.getConnection((err, connection) => {  
            if(err) throw err; 
            console.log('connected as ID' + connection.threadId);  
        
            //user connection
            connection.query('UPDATE user SET status = ? WHERE id = ?', ['removed', req.params.id], (err, rows) => {
        
        //Release once connection id done
        connection.release();
        
        if(!err){
            let removedUser = encodeURIComponent('User successeflly removed.');
      res.redirect('/?removed=' + removedUser);
        } else{
            console.log(err);
            }
            console.log('The data from user table:  \n', rows);
        }) });}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        exports.view = (req, res) => {
     
            pool.getConnection((err, connection) => {  
                    if(err) throw err; 
                    console.log('connected as ID' + connection.threadId);  
            //user connection
            connection.query('SELECT * FROM user WHERE status = "active"', (err, rows) => {
            
            //Release once connection id done
            connection.release();
            if(!err){
                res.render('home', { rows });
                } else{
                    console.log(err);
                    }console.log('The data from user table:  \n', rows);
            
                })   });
            }


            /////view users\\\\\
            exports.viewall = (req, res) => {
     
                pool.getConnection((err, connection) => {  
                        if(err) throw err; 
                        console.log('connected as ID' + connection.threadId);  
                //user connection
                connection.query('SELECT * FROM user WHERE id = ?', [req.params.id], (err, rows) => {
                
                //Release once connection id done
                connection.release();
                if(!err){
                    res.render('view-user', { rows });
                    } else{
                        console.log(err);
                        }console.log('The data from user table:  \n', rows);
                
                    })   });
                }