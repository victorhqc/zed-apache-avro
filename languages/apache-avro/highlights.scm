[
  "schema"
  "protocol"
  "import"
  "fixed"
  "record"
  "error"
  "enum"
  "throws"
  "namespace"
  "union"
  (oneway)
] @keyword

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
  "<"
  ">"
] @punctuation.bracket

[
  ";"
  ","
  ":"
] @punctuation.delimiter

"=" @operator

(comment) @comment

(parameter name: (identifier) @variable)

[
  (field_declaration name: (identifier) @property)
  (field_declaration
    (default_value_expression left: (identifier) @property))
  (enumeral (identifier) @property)
]

[
  (primitive_type)
  (logical_type (identifier))
  (logical_type (call_expression (identifier)))
  "?"
] @type

(throw_statement (identifier) @type)

[
  (string)
  (literal_type (string))
] @string

(literal_type (number)) @number

[
  (void)
  (true)
  (false)
  (null)
] @constant.builtin

(default_enumeral (identifier) @constant)

[
  (value (identifier) @constant)
  (array_value (identifier) @constant)
  (map_entry value: (identifier) @constant)
]

[
  (known_logical_type)
  "map"
  "array"
] @function.builtin

(rpc_message_declaration name: (identifier) @function)

(anotation_statement name: (anotation_identifier) @attribute)

(namespace_statement (namespace_identifier) @module)

(record_declaration
  name: (identifier) @constructor)

(error_declaration
  name: (identifier) @constructor)

(enum_declaration
  name: (identifier) @constructor)

(protocol_declaration
  name: (identifier) @constructor)

(schema_declaration (identifier) @constructor)

[
  (fixed_declaration (call_expression (identifier) @constructor))
  (fixed_declaration (identifier) @constructor)
]

(import_declaration (identifier) @keyword)
