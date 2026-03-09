import { Router, Request, Response } from 'express';
import { z } from 'zod';

export const userRouter = Router();

const userSchema = z.object({
  name: z.string().min(2),
  email: z.string().email(),
});

// In-memory demo storage
const users: Array<{ id: number; name: string; email: string }> = [
  { id: 1, name: 'John Doe', email: 'john@example.com' },
  { id: 2, name: 'Jane Smith', email: 'jane@example.com' },
];

// Get all users
userRouter.get('/', (req: Request, res: Response) => {
  res.json({ users });
});

// Get user by ID
userRouter.get('/:id', (req: Request, res: Response) => {
  const id = parseInt(req.params.id);
  const user = users.find((u) => u.id === id);
  
  if (!user) {
    return res.status(404).json({ error: 'User not found' });
  }
  
  res.json({ user });
});

// Create user
userRouter.post('/', (req: Request, res: Response) => {
  const result = userSchema.safeParse(req.body);
  
  if (!result.success) {
    return res.status(400).json({ 
      error: 'Validation failed', 
      details: result.error.errors 
    });
  }
  
  const newUser = {
    id: users.length + 1,
    ...result.data,
  };
  
  users.push(newUser);
  res.status(201).json({ user: newUser });
});
