using my.bookshop as mainService from '../db/data-model';
service catalogService
{
    @Capabilities : { Insertable:false,Deletable:true }
    entity Books as projection on mainService.Books;
    
    @readonly entity Authors as projection on mainService.Authors;
    
    entity Orders as projection on mainService.Orders;

}