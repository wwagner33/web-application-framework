const apiBaseUrl = 'http://localhost:3000';

async function registerUser(name, email, password) {
  const response = await fetch(`${apiBaseUrl}/users/register`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ name, email, password }),
  });
  const data = await response.json();
  console.log(data);
}

async function loginUser(email, password) {
  const response = await fetch(`${apiBaseUrl}/users/login`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ email, password }),
  });
  const data = await response.json();
  console.log(data);
}

registerUser('John Doe', 'john@example.com', 'password123');
