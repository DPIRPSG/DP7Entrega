start transaction;

use `Acme-Supermarket`;

revoke all privileges on `Acme-Supermarket`.* from 'acme-user'@'%';
revoke all privileges on `Acme-Supermarket`.* from 'acme-manager'@'%';

drop user 'acme-user'@'%';
drop user 'acme-manager'@'%';

drop database `Acme-Supermarket`;

commit;