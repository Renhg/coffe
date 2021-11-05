import { Router } from "express"

class DrinksRoutes {

    public router: Router = Router();
    
    constructor(){
        this.config();
    }

    config(): void {
        this.router.get('/',(req,res)=> res.send('free Drinks inside the taberna'));
    } 
}
const indexRoutes = new DrinksRoutes();
export default indexRoutes.router;