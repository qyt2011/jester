jester.help_map.couchdb = {}
jester.help_map.couchdb.description_short = [[Access to CouchDB.]]
jester.help_map.couchdb.description_long = [[This module provides actions that allow access to CouchDB.

The module uses Luchia (https://github.com/thehunmonkgroup/luchia) to interface with CouchDB, so it must be installed and configured correctly.

For all actions below that support the 'server' parameter:
  The 'server' parameter is a table of connection parameters to the CouchDB server, see http://thehunmonkgroup.github.com/luchia/modules/luchia.core.server.html#new_params for details.

If things aren't working, be sure to check the log file, as configured in luchia/conf.lua.
]]

jester.help_map.couchdb.actions = {}

jester.help_map.couchdb.actions.couchdb_retrieve_document = {}
jester.help_map.couchdb.actions.couchdb_retrieve_document.description_short = [[Retrieve a document.]]
jester.help_map.couchdb.actions.couchdb_retrieve_document.params = {
  server = [[(Optional) Table of server connection parameters.]],
  database = [[Database to connect to.]],
  document_id = [[The document ID.]],
  query_parameters = [[(Optional) A table of query parameters to pass to the server, eg. '{revs = "true"}']],
  storage_area = [[(Optional) The storage area to store the document in after loading.  Defaults to 'couchdb_retrieve_document'. This will contain 'document', 'id' and 'rev' keys on success, 'document' is a table representing the document.]],
}

jester.help_map.couchdb.actions.couchdb_create_document = {}
jester.help_map.couchdb.actions.couchdb_create_document.description_short = [[Create a document.]]
jester.help_map.couchdb.actions.couchdb_create_document.params = {
  server = [[(Optional) Table of server connection parameters.]],
  database = [[Database to connect to.]],
  document = [[A table of data representing the docuement to create, eg. '{hello = "world", foo = "bar"}']],
  document_id = [[(Optional) The document ID, one will be generated by the server if not provided.]],
  storage_area = [[(Optional) The storage area to store the server response in.  Defaults to 'couchdb_create_document'. This will contain 'id' and 'rev' keys of the created document on success.]],
}

jester.help_map.couchdb.actions.couchdb_update_document = {}
jester.help_map.couchdb.actions.couchdb_update_document.description_short = [[Update a document.]]
jester.help_map.couchdb.actions.couchdb_update_document.params = {
  server = [[(Optional) Table of server connection parameters.]],
  database = [[Database to connect to.]],
  document = [[A table of data representing the docuement to update, eg. '{hello = "world", foo = "bar"}']],
  document_id = [[The document ID.]],
  document_rev = [[The current document revision.]],
  storage_area = [[(Optional) The storage area to store the server response in.  Defaults to 'couchdb_update_document'. This will contain 'id' and 'rev' keys of the updated document on success.]],
}

jester.help_map.couchdb.actions.couchdb_delete_document = {}
jester.help_map.couchdb.actions.couchdb_delete_document.description_short = [[Delete a document.]]
jester.help_map.couchdb.actions.couchdb_delete_document.params = {
  server = [[(Optional) Table of server connection parameters.]],
  database = [[Database to connect to.]],
  document_id = [[The document ID.]],
  document_rev = [[The current document revision.]],
  storage_area = [[(Optional) The storage area to store the server response in.  Defaults to 'couchdb_delete_document'. This will contain 'id' and 'rev' keys of the deleted document on success.]],
}

jester.help_map.couchdb.actions.couchdb_retrieve_attachment = {}
jester.help_map.couchdb.actions.couchdb_retrieve_attachment.description_short = [[Retrieve an attachment from a document.]]
jester.help_map.couchdb.actions.couchdb_retrieve_attachment.params = {
  server = [[(Optional) Table of server connection parameters.]],
  database = [[Database to connect to.]],
  attachment_name = [[The attachment name, eg. 'attachment.txt'.]],
  document_id = [[The document ID.]],
  file_path = [[File path to write the retrieved attachment to, eg. 'tmp/attachment.txt'.]],
  storage_area = [[(Optional) The storage area to store the server response in.  Defaults to 'couchdb_retrieve_attachment'. This will contain 'attachment_name' and 'file_path' keys of the retrieved attachment on success.]],
}

jester.help_map.couchdb.actions.couchdb_add_attachment = {}
jester.help_map.couchdb.actions.couchdb_add_attachment.description_short = [[Add an attachment to a document.]]
jester.help_map.couchdb.actions.couchdb_add_attachment.params = {
  server = [[(Optional) Table of server connection parameters.]],
  database = [[Database to connect to.]],
  file_path = [[File path to the attachment, eg. 'tmp/attachment.txt'.]],
  content_type = [[MIME type of the attachment, eg. 'text/plain'.]],
  attachment_name = [[(Optional) File name for the attachment, eg. 'attachment.txt'.]],
  document_id = [[(Optional) The document ID. If not provided, a new empty document will be created.]],
  document_rev = [[The current document revision, required if attaching to an existing document.]],
  storage_area = [[(Optional) The storage area to store the server response in.  Defaults to 'couchdb_add_attachment'. This will contain 'id' and 'rev' keys of the updated document on success.]],
}

jester.help_map.couchdb.actions.couchdb_delete_attachment = {}
jester.help_map.couchdb.actions.couchdb_delete_attachment.description_short = [[Delete an attachment from a document.]]
jester.help_map.couchdb.actions.couchdb_delete_attachment.params = {
  server = [[(Optional) Table of server connection parameters.]],
  database = [[Database to connect to.]],
  attachment_name = [[The attachment name, eg. 'attachment.txt'.]],
  document_id = [[The document ID.]],
  document_rev = [[The current document revision.]],
  storage_area = [[(Optional) The storage area to store the server response in.  Defaults to 'couchdb_delete_attachment'. This will contain 'id' and 'rev' keys of the updated document on success.]],
}
