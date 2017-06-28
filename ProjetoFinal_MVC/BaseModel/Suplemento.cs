using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BaseModel
{
    public class Suplemento
    {
        [Key]
        public int SuplementoID { get; set; }

        [Required(ErrorMessage = "*"), StringLength(30, ErrorMessage = "Tamanho máximo é 30 caracteres")]
        public string Nome { get; set; }

        [Display(Name = "Descrição"), DataType(DataType.MultilineText)]
        public string Descricao { get; set; }

        [Required, Display(Name = "Preço"), DataType(DataType.Currency)]
        public decimal Preco { get; set; }

        [Required]
        public string Validade { get; set; }

        [Required]
        public bool Ativo { get; set; }

        public int MarcaID { get; set; }

        public virtual Marca _Marca { get; set; }
    }
}
