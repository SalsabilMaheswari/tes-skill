export function validateRegistration(body) {
  const { username, email, password, role } = body;
  if (!username || !email || !password || !role) {
    return { error: 'username, email, password, role are required' };
  }
  if (typeof username !== 'string' || username.length < 3) {
    return { error: 'username min 3 characters' };
  }
  if (!/^\S+@\S+\.\S+$/.test(email)) return { error: 'invalid email' };
  if (password.length < 6) return { error: 'password min 6 characters' };

  return { value: { username, email, password, role } };
}