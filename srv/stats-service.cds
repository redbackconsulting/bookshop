
using my.bookshop as Stats from '../db/data-model';
service bookshopStats {

@readonly entity OrdersInfo as projection on Stats.Orders 
    excluding
    {   createdAt, 
        createdBy, 
        modifiedAt, 
        modifiedby, 
        books
    }
    

}