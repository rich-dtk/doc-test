## Service Module - {{module.name}}

This is some content to go at the top of this example, lets put some content here...

## Assembly Templates
| Name | Description |
| ---- | ------ |
{{#module.assemblies}}
| {{name}} | {{description}}
{{/module.assemblies}}

{{#module.assemblies}}
### {{name}}

#### Workflows
{{#workflows}}
* {{name}}
{{/workflows}}

{{/module.assemblies}}


