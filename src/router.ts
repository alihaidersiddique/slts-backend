import { Router } from "express";
import { body, validationResult } from "express-validator";
import { handleInputErrors } from "./modules/middleware";

const router = Router()

/** 
 * category
*/
router.get('/categories', (req, res) => {
    res.json({ message: "hello" })
})

router.get('/category/:id', () => { })

router.put(
    '/category/:id',
    body('name').isString().escape(),
    handleInputErrors,
    (req, res, next) => {

    })
router.post('/category', () => { })
router.delete('/category/:id', () => { })

/**
 * parts
 */
router.get('/parts', () => { })
router.get('/part/:id', () => { })
router.put('/part/:id', () => { })
router.post('/part', () => { })
router.delete('/part/:id', () => { })


export default router