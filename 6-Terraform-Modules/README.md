# Modules
Modules are container for multiple resources that are used together, it is collection of .tf files.

- Root Module - Every terraform configuration has one root module
- Child Module - Terrform module that can call other module to include resource in configuration. This module can be called multiple times within same configuration
- Published Module - Terraform can load modules from private and public registry