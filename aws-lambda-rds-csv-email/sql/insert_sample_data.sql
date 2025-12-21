INSERT INTO sys_state VALUES
(gen_random_uuid(),'California','CA'),
(gen_random_uuid(),'New York','NY'),
(gen_random_uuid(),'Texas','TX'),
(gen_random_uuid(),'Florida','FL'),
(gen_random_uuid(),'Illinois','IL');

INSERT INTO opt_party VALUES
(gen_random_uuid(),'Alice','Johnson','5550101','111-22-0001'),
(gen_random_uuid(),'Bob','Singh','5550102','111-22-0002'),
(gen_random_uuid(),'Charlie','Brown','5550103','111-22-0003'),
(gen_random_uuid(),'Deepa','Iyer','5550104','111-22-0004'),
(gen_random_uuid(),'Ethan','Williams','5550105','111-22-0005'),
(gen_random_uuid(),'Farah','Khan','5550106','111-22-0006'),
(gen_random_uuid(),'George','Miller','5550107','111-22-0007'),
(gen_random_uuid(),'Hema','Rao','5550108','111-22-0008'),
(gen_random_uuid(),'Ivan','Petrov','5550109','111-22-0009'),
(gen_random_uuid(),'Julia','Martinez','5550110','111-22-0010');

INSERT INTO opt_address (
    add_id, add_line1, add_city, add_state, add_zip, add_partyid
) VALUES
(gen_random_uuid(),'101 Main St','Los Angeles',(SELECT stt_id FROM sys_state WHERE stt_code='CA'),'90001',(SELECT pty_id FROM opt_party WHERE pty_firstname='Alice')),
(gen_random_uuid(),'202 Park Ave','New York',(SELECT stt_id FROM sys_state WHERE stt_code='NY'),'10001',(SELECT pty_id FROM opt_party WHERE pty_firstname='Bob')),
(gen_random_uuid(),'303 Elm St','Dallas',(SELECT stt_id FROM sys_state WHERE stt_code='TX'),'75001',(SELECT pty_id FROM opt_party WHERE pty_firstname='Charlie')),
(gen_random_uuid(),'404 Palm Rd','Miami',(SELECT stt_id FROM sys_state WHERE stt_code='FL'),'33101',(SELECT pty_id FROM opt_party WHERE pty_firstname='Deepa')),
(gen_random_uuid(),'505 Lake Shore','Chicago',(SELECT stt_id FROM sys_state WHERE stt_code='IL'),'60601',(SELECT pty_id FROM opt_party WHERE pty_firstname='Ethan')),
(gen_random_uuid(),'606 Sunset Blvd','San Diego',(SELECT stt_id FROM sys_state WHERE stt_code='CA'),'92101',(SELECT pty_id FROM opt_party WHERE pty_firstname='Farah')),
(gen_random_uuid(),'707 Broadway','New York',(SELECT stt_id FROM sys_state WHERE stt_code='NY'),'10002',(SELECT pty_id FROM opt_party WHERE pty_firstname='George')),
(gen_random_uuid(),'808 Ring Rd','Houston',(SELECT stt_id FROM sys_state WHERE stt_code='TX'),'77002',(SELECT pty_id FROM opt_party WHERE pty_firstname='Hema')),
(gen_random_uuid(),'909 Ocean Dr','Miami',(SELECT stt_id FROM sys_state WHERE stt_code='FL'),'33139',(SELECT pty_id FROM opt_party WHERE pty_firstname='Ivan')),
(gen_random_uuid(),'111 River Rd','Springfield',(SELECT stt_id FROM sys_state WHERE stt_code='IL'),'62701',(SELECT pty_id FROM opt_party WHERE pty_firstname='Julia'));
