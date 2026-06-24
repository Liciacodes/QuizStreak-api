import { Router } from "express";
import { getTodayQuiz, submitAnswer } from "../controllers/quizController";
import { requireAuth } from "../middleware/authMiddleware";


const router = Router()


router.get('/today', requireAuth, getTodayQuiz)
router.post('/submit', requireAuth, submitAnswer)

export default router