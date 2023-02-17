using System.ComponentModel.DataAnnotations;

namespace PartyInvites {
    public class GuestResponse {

       
      
        [Required(ErrorMessage="Please tell us if you will attend")]
        public bool? WillAttend { get; set; }
        [Required]
        public string FirstName { get; set; }
        [Required]
        public string LastName { get; set; }
        [Required]
        public string GradeMath { get; set; }
        [Required]
        public string GradePhys { get; set; }
        [Required]
        public string GradeProg { get; set; }
    }    
}