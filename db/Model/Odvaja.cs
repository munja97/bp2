//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace db.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Odvaja
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Odvaja()
        {
            this.Tovaris = new HashSet<Tovari>();
        }
    
        public int PovrceMagacinMID { get; set; }
        public int PovrceVID { get; set; }
        public int ProsledjujePorudzbinaID { get; set; }
        public int ProsledjujeMagacionerJMBG1 { get; set; }
    
        public virtual Povrce Povrce { get; set; }
        public virtual Prosledjuje Prosledjuje { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tovari> Tovaris { get; set; }
    }
}
