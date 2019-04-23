CREATE VIEW Personal AS
SELECT id, last_login, is_superuser
FROM auth_user
WHERE username = 'bolaji';