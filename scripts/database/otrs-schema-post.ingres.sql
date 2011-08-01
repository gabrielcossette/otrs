-- ----------------------------------------------------------
--  driver: ingres, generated: 2011-08-01 12:19:21
-- ----------------------------------------------------------
ALTER TABLE valid ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE valid ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE users ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE users ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE users ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE user_preferences ADD FOREIGN KEY (user_id) REFERENCES users(id);\g
ALTER TABLE groups ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE groups ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE groups ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE group_user ADD FOREIGN KEY (group_id) REFERENCES groups(id);\g
ALTER TABLE group_user ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE group_user ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE group_user ADD FOREIGN KEY (user_id) REFERENCES users(id);\g
ALTER TABLE group_role ADD FOREIGN KEY (role_id) REFERENCES roles(id);\g
ALTER TABLE group_role ADD FOREIGN KEY (group_id) REFERENCES groups(id);\g
ALTER TABLE group_role ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE group_role ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE group_customer_user ADD FOREIGN KEY (group_id) REFERENCES groups(id);\g
ALTER TABLE group_customer_user ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE group_customer_user ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE roles ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE roles ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE roles ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE role_user ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE role_user ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE role_user ADD FOREIGN KEY (user_id) REFERENCES users(id);\g
ALTER TABLE personal_queues ADD FOREIGN KEY (queue_id) REFERENCES queue(id);\g
ALTER TABLE personal_queues ADD FOREIGN KEY (user_id) REFERENCES users(id);\g
ALTER TABLE salutation ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE salutation ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE salutation ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE signature ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE signature ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE signature ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE system_address ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE system_address ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE system_address ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE follow_up_possible ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE follow_up_possible ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE follow_up_possible ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE queue ADD FOREIGN KEY (salutation_id) REFERENCES salutation(id);\g
ALTER TABLE queue ADD FOREIGN KEY (signature_id) REFERENCES signature(id);\g
ALTER TABLE queue ADD FOREIGN KEY (group_id) REFERENCES groups(id);\g
ALTER TABLE queue ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE queue ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE queue ADD FOREIGN KEY (follow_up_id) REFERENCES follow_up_possible(id);\g
ALTER TABLE queue ADD FOREIGN KEY (system_address_id) REFERENCES system_address(id);\g
ALTER TABLE queue ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE queue_preferences ADD FOREIGN KEY (queue_id) REFERENCES queue(id);\g
ALTER TABLE ticket_priority ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE ticket_priority ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE ticket_type ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE ticket_type ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE ticket_type ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE ticket_lock_type ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE ticket_lock_type ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE ticket_lock_type ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE ticket_state ADD FOREIGN KEY (type_id) REFERENCES ticket_state_type(id);\g
ALTER TABLE ticket_state ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE ticket_state ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE ticket_state ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE ticket_state_type ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE ticket_state_type ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE ticket ADD FOREIGN KEY (ticket_lock_id) REFERENCES ticket_lock_type(id);\g
ALTER TABLE ticket ADD FOREIGN KEY (ticket_priority_id) REFERENCES ticket_priority(id);\g
ALTER TABLE ticket ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE ticket ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE ticket ADD FOREIGN KEY (user_id) REFERENCES users(id);\g
ALTER TABLE ticket ADD FOREIGN KEY (responsible_user_id) REFERENCES users(id);\g
ALTER TABLE ticket ADD FOREIGN KEY (service_id) REFERENCES service(id);\g
ALTER TABLE ticket ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE ticket ADD FOREIGN KEY (sla_id) REFERENCES sla(id);\g
ALTER TABLE ticket ADD FOREIGN KEY (ticket_state_id) REFERENCES ticket_state(id);\g
ALTER TABLE ticket ADD FOREIGN KEY (queue_id) REFERENCES queue(id);\g
ALTER TABLE ticket ADD FOREIGN KEY (type_id) REFERENCES ticket_type(id);\g
ALTER TABLE ticket_flag ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE ticket_flag ADD FOREIGN KEY (ticket_id) REFERENCES ticket(id);\g
ALTER TABLE ticket_history ADD FOREIGN KEY (priority_id) REFERENCES ticket_priority(id);\g
ALTER TABLE ticket_history ADD FOREIGN KEY (owner_id) REFERENCES users(id);\g
ALTER TABLE ticket_history ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE ticket_history ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE ticket_history ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE ticket_history ADD FOREIGN KEY (state_id) REFERENCES ticket_state(id);\g
ALTER TABLE ticket_history ADD FOREIGN KEY (history_type_id) REFERENCES ticket_history_type(id);\g
ALTER TABLE ticket_history ADD FOREIGN KEY (article_id) REFERENCES article(id);\g
ALTER TABLE ticket_history ADD FOREIGN KEY (queue_id) REFERENCES queue(id);\g
ALTER TABLE ticket_history ADD FOREIGN KEY (type_id) REFERENCES ticket_type(id);\g
ALTER TABLE ticket_history ADD FOREIGN KEY (ticket_id) REFERENCES ticket(id);\g
ALTER TABLE ticket_history_type ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE ticket_history_type ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE ticket_history_type ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE ticket_watcher ADD FOREIGN KEY (user_id) REFERENCES users(id);\g
ALTER TABLE ticket_watcher ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE ticket_watcher ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE ticket_watcher ADD FOREIGN KEY (ticket_id) REFERENCES ticket(id);\g
ALTER TABLE ticket_index ADD FOREIGN KEY (group_id) REFERENCES groups(id);\g
ALTER TABLE ticket_index ADD FOREIGN KEY (queue_id) REFERENCES queue(id);\g
ALTER TABLE ticket_index ADD FOREIGN KEY (ticket_id) REFERENCES ticket(id);\g
ALTER TABLE ticket_lock_index ADD FOREIGN KEY (ticket_id) REFERENCES ticket(id);\g
ALTER TABLE article_type ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE article_type ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE article_type ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE article_sender_type ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE article_sender_type ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE article_sender_type ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE article_flag ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE article_flag ADD FOREIGN KEY (article_id) REFERENCES article(id);\g
ALTER TABLE article ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE article ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE article ADD FOREIGN KEY (article_sender_type_id) REFERENCES article_sender_type(id);\g
ALTER TABLE article ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE article ADD FOREIGN KEY (article_type_id) REFERENCES article_type(id);\g
ALTER TABLE article ADD FOREIGN KEY (ticket_id) REFERENCES ticket(id);\g
ALTER TABLE article_search ADD FOREIGN KEY (article_sender_type_id) REFERENCES article_sender_type(id);\g
ALTER TABLE article_search ADD FOREIGN KEY (article_type_id) REFERENCES article_type(id);\g
ALTER TABLE article_search ADD FOREIGN KEY (ticket_id) REFERENCES ticket(id);\g
ALTER TABLE article_plain ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE article_plain ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE article_plain ADD FOREIGN KEY (article_id) REFERENCES article(id);\g
ALTER TABLE article_attachment ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE article_attachment ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE article_attachment ADD FOREIGN KEY (article_id) REFERENCES article(id);\g
ALTER TABLE time_accounting ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE time_accounting ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE time_accounting ADD FOREIGN KEY (article_id) REFERENCES article(id);\g
ALTER TABLE time_accounting ADD FOREIGN KEY (ticket_id) REFERENCES ticket(id);\g
ALTER TABLE standard_response ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE standard_response ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE standard_response ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE queue_standard_response ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE queue_standard_response ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE queue_standard_response ADD FOREIGN KEY (standard_response_id) REFERENCES standard_response(id);\g
ALTER TABLE queue_standard_response ADD FOREIGN KEY (queue_id) REFERENCES queue(id);\g
ALTER TABLE standard_attachment ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE standard_attachment ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE standard_attachment ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE standard_response_attachment ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE standard_response_attachment ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE standard_response_attachment ADD FOREIGN KEY (standard_response_id) REFERENCES standard_response(id);\g
ALTER TABLE standard_response_attachment ADD FOREIGN KEY (standard_attachment_id) REFERENCES standard_attachment(id);\g
ALTER TABLE auto_response_type ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE auto_response_type ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE auto_response_type ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE auto_response ADD FOREIGN KEY (type_id) REFERENCES auto_response_type(id);\g
ALTER TABLE auto_response ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE auto_response ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE auto_response ADD FOREIGN KEY (system_address_id) REFERENCES system_address(id);\g
ALTER TABLE auto_response ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE queue_auto_response ADD FOREIGN KEY (auto_response_id) REFERENCES auto_response(id);\g
ALTER TABLE queue_auto_response ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE queue_auto_response ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE queue_auto_response ADD FOREIGN KEY (queue_id) REFERENCES queue(id);\g
ALTER TABLE service ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE service ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE service_preferences ADD FOREIGN KEY (service_id) REFERENCES service(id);\g
ALTER TABLE service_customer_user ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE service_customer_user ADD FOREIGN KEY (service_id) REFERENCES service(id);\g
ALTER TABLE sla ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE sla ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE sla_preferences ADD FOREIGN KEY (sla_id) REFERENCES sla(id);\g
ALTER TABLE service_sla ADD FOREIGN KEY (service_id) REFERENCES service(id);\g
ALTER TABLE service_sla ADD FOREIGN KEY (sla_id) REFERENCES sla(id);\g
ALTER TABLE customer_user ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE customer_user ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE customer_user ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE mail_account ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE mail_account ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE mail_account ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE notifications ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE notifications ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE notification_event ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE notification_event ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE notification_event ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE notification_event_item ADD FOREIGN KEY (notification_id) REFERENCES notification_event(id);\g
ALTER TABLE link_type ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE link_type ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE link_type ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE link_state ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE link_state ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE link_state ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE link_relation ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE link_relation ADD FOREIGN KEY (type_id) REFERENCES link_type(id);\g
ALTER TABLE link_relation ADD FOREIGN KEY (state_id) REFERENCES link_state(id);\g
ALTER TABLE link_relation ADD FOREIGN KEY (source_object_id) REFERENCES link_object(id);\g
ALTER TABLE link_relation ADD FOREIGN KEY (target_object_id) REFERENCES link_object(id);\g
ALTER TABLE virtual_fs_preferences ADD FOREIGN KEY (virtual_fs_id) REFERENCES virtual_fs(id);\g
ALTER TABLE package_repository ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE package_repository ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE gi_webservice_config ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE gi_webservice_config ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE gi_webservice_config ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE gi_webservice_config_history ADD FOREIGN KEY (config_id) REFERENCES gi_webservice_config(id);\g
ALTER TABLE gi_webservice_config_history ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE gi_webservice_config_history ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE gi_debugger_entry ADD FOREIGN KEY (webservice_id) REFERENCES gi_webservice_config(id);\g
ALTER TABLE gi_debugger_entry_content ADD FOREIGN KEY (gi_debugger_entry_id) REFERENCES gi_debugger_entry(id);\g
ALTER TABLE gi_object_lock_state ADD FOREIGN KEY (webservice_id) REFERENCES gi_webservice_config(id);\g
ALTER TABLE smime_signer_cert_relations ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE smime_signer_cert_relations ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
