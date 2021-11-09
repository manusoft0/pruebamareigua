using System.ComponentModel.DataAnnotations;

namespace Datos
{
    public class Multiplo
    {
        [Key]
        public int MultiploId { get; set; }
        public int Numero { get; set; }
        public string MultiploDe { get; set; }
        public string Mensaje { get; set; }
    }
}
