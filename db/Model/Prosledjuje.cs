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
    
    public partial class Prosledjuje
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Prosledjuje()
        {
            this.Povrces = new HashSet<Povrce>();
            this.Odvajas = new HashSet<Odvaja>();
        }
    
        public int PorudzbinaID { get; set; }
        public int MagacionerJMBG1 { get; set; }
    
        public virtual Porudzbina Porudzbina { get; set; }
        public virtual Magacioner Magacioner { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Povrce> Povrces { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Odvaja> Odvajas { get; set; }
    }
}