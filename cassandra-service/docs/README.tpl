## Service Module - {{module.name}}

This is some content to go at the top of this example, lets put some content here...

## Assembly Templates
| Name | Description |
| ---- | ------ |
{{#module.assemblies}}
| {{name}} | {{description}}
{{/module.assemblies}}

## Workflows

{{#module.assemblies}}
### {{name}}
{{#workflows}}
* {{name}}
{{/workflows}}

{{/module.assemblies}}

## Component Module References

{{#module.component_module_refs}}
* {{namespace}}:{{module_name}}
{{/module.component_module_refs}}
