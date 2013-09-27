import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.Id

@Entity
class JingDian{
    @Id
    @GeneratedValue
    Integer id;
    Date clearCycle,gmtCreate,gmtModify
    String descri,bankNo,picUrl
}
