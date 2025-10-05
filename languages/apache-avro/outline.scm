(protocol_declaration
    "protocol" @context
    name: (identifier) @name
) @item

(import_declaration
    "import" @context
    (identifier) @name
) @item

(record_declaration
    "record" @context
    name: (identifier) @name
) @item

(error_declaration
    "error" @context
    name: (identifier) @name
) @item

(enum_declaration
    "enum" @context
    name: (identifier) @name
) @item

(fixed_declaration
  "fixed" @context
  (call_expression
    (identifier) @name
  )
) @item

(fixed_declaration
  "fixed" @context
  (identifier) @name
) @item

(field_declaration
    name: (identifier) @name
) @item

(field_declaration
    (default_value_expression
      left: (identifier) @name
    )
) @item

(anotation_statement
  (anotation_identifier) @context
  (anotation_arguments
    (literal_type
      (string)
    )
  ) @name
) @item

(enumeral
    (identifier) @name
) @item

(rpc_message_declaration
  (return_value
    (_)
  ) @context
  name: (identifier) @name
) @item

(throw_statement
  "throws" @context
  (identifier) @name
) @item
