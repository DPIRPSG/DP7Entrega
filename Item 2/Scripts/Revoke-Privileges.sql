use `Acme-Supermarket`;

revoke all privileges on `Acme-Supermarket`.* from 'acme-user'@'%';
revoke all privileges on `Acme-Supermarket`.* from 'acme-manager'@'%';