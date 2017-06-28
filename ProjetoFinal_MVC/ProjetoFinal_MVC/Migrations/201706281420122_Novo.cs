namespace ProjetoFinal_MVC.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Novo : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Marcas", "Nome", c => c.String(nullable: false, maxLength: 30));
            AlterColumn("dbo.Suplementoes", "Nome", c => c.String(nullable: false, maxLength: 30));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Suplementoes", "Nome", c => c.String(nullable: false));
            AlterColumn("dbo.Marcas", "Nome", c => c.String(nullable: false, maxLength: 10));
        }
    }
}
