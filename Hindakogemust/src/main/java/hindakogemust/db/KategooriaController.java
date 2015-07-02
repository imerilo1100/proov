package hindakogemust.db;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

//import hindakogemust.db.model.Kategooria;
//import hindakogemust.db.service.KategooriaService;

@Controller
public class KategooriaController {
//    private KategooriaService katService;

    @RequestMapping(value = "/Kategooria")
    @ResponseBody
    public String findKategooriaByID(@RequestParam("id") int id) {
    	return "Mapping works";
    }
 
}
