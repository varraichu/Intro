import { z } from 'zod';

export const createUserSchema = z.object({
  email: z.string().email(),
  name: z.string().min(3),
});

export type CreateUserDto = z.infer<typeof createUserSchema>;
