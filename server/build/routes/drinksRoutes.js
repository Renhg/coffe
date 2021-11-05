"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
class DrinksRoutes {
    constructor() {
        this.router = (0, express_1.Router)();
        this.config();
    }
    config() {
        this.router.get('/', (req, res) => res.send('free Drinks inside the taberna'));
    }
}
const indexRoutes = new DrinksRoutes();
exports.default = indexRoutes.router;
