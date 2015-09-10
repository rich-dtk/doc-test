## Component Module: {{module.name}}

**DTK DSL Version:** {{module.dsl_version}}

This is some content to go at the top of this example, lets put some content here...

## Components  
{{#module.components}}
*   {{name}}
{{/module.components}}

{{#module.components}}
### {{name}}

#### Attributes  
| Name | Type | Default | Description |
| ---- | ---- | ------- | ------ |
{{#attributes}}
| {{name}} | {{type}} | {{default_value}} | {{description}}
{{/attributes}}

{{/module.components}}


