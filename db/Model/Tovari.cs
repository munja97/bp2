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
    
    public partial class Tovari
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tovari()
        {
            this.Vozis = new HashSet<Vozi>();
        }
    
        public int VozacJMBG { get; set; }
        public int OdvajaPovrceMagacinMID { get; set; }
        public int OdvajaPovrceVID { get; set; }
    
        public virtual Vozac Vozac { get; set; }
        public virtual Odvaja Odvaja { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Vozi> Vozis { get; set; }
    }
}
