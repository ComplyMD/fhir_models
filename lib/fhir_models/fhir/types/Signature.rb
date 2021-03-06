module FHIR
  class Signature < FHIR::Model
    include FHIR::Hashable
    include FHIR::Json
    include FHIR::Xml

    MULTIPLE_TYPES = {
      'who' => ['uri', 'Reference'],
      'onBehalfOf' => ['uri', 'Reference']
    }
    SEARCH_PARAMS = 
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'Signature.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'Signature.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'type' => {'valid_codes'=>{'urn:iso-astm:E1762-95:2013'=>['1.2.840.10065.1.12.1.1', '1.2.840.10065.1.12.1.2', '1.2.840.10065.1.12.1.3', '1.2.840.10065.1.12.1.4', '1.2.840.10065.1.12.1.5', '1.2.840.10065.1.12.1.6', '1.2.840.10065.1.12.1.7', '1.2.840.10065.1.12.1.8', '1.2.840.10065.1.12.1.9', '1.2.840.10065.1.12.1.10', '1.2.840.10065.1.12.1.11', '1.2.840.10065.1.12.1.12', '1.2.840.10065.1.12.1.13', '1.2.840.10065.1.12.1.14', '1.2.840.10065.1.12.1.15', '1.2.840.10065.1.12.1.16', '1.2.840.10065.1.12.1.17', '1.2.840.10065.1.12.1.18']}, 'type'=>'Coding', 'path'=>'Signature.type', 'min'=>1, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/signature-type'}},
      'when' => {'type'=>'instant', 'path'=>'Signature.when', 'min'=>1, 'max'=>1},
      'whoUri' => {'type'=>'uri', 'path'=>'Signature.who[x]', 'min'=>1, 'max'=>1},
      'whoReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Signature.who[x]', 'min'=>1, 'max'=>1},
      'onBehalfOfUri' => {'type'=>'uri', 'path'=>'Signature.onBehalfOf[x]', 'min'=>0, 'max'=>1},
      'onBehalfOfReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Signature.onBehalfOf[x]', 'min'=>0, 'max'=>1},
      'contentType' => {'type'=>'code', 'path'=>'Signature.contentType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://www.rfc-editor.org/bcp/bcp13.txt'}},
      'blob' => {'type'=>'base64Binary', 'path'=>'Signature.blob', 'min'=>0, 'max'=>1}
    }

    attr_accessor :id                  # 0-1 string
    attr_accessor :extension           # 0-* [ Extension ]
    attr_accessor :type                # 1-* [ Coding ]
    attr_accessor :when                # 1-1 instant
    attr_accessor :whoUri              # 1-1 uri
    attr_accessor :whoReference        # 1-1 Reference(Practitioner|RelatedPerson|Patient|Device|Organization)
    attr_accessor :onBehalfOfUri       # 0-1 uri
    attr_accessor :onBehalfOfReference # 0-1 Reference(Practitioner|RelatedPerson|Patient|Device|Organization)
    attr_accessor :contentType         # 0-1 code
    attr_accessor :blob                # 0-1 base64Binary
  end
end