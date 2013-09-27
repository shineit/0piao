import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.Id

@Entity
class ShangPin{
    @Id
    @GeneratedValue
    Integer id;
    Date timeOut,gmtCreate,gmtModify
    String descri
    Integer marketPrice,nowPrice
}