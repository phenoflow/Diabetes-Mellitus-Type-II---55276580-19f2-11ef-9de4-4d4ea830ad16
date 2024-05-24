cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  diabetes-mellitus-type-ii-dmii-insulin---primary:
    run: diabetes-mellitus-type-ii-dmii-insulin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  nephropathy-diabetes-mellitus-type-ii-dmii---primary:
    run: nephropathy-diabetes-mellitus-type-ii-dmii---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: diabetes-mellitus-type-ii-dmii-insulin---primary/output
  diabetes-mellitus-type-ii-dmii-cataract---primary:
    run: diabetes-mellitus-type-ii-dmii-cataract---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: nephropathy-diabetes-mellitus-type-ii-dmii---primary/output
  arthropathy-diabetes-mellitus-type-ii-dmii---primary:
    run: arthropathy-diabetes-mellitus-type-ii-dmii---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: diabetes-mellitus-type-ii-dmii-cataract---primary/output
  mononeuropathy-diabetes-mellitus-type-ii-dmii---primary:
    run: mononeuropathy-diabetes-mellitus-type-ii-dmii---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: arthropathy-diabetes-mellitus-type-ii-dmii---primary/output
  diabetes-mellitus-type-ii-dmii-state---primary:
    run: diabetes-mellitus-type-ii-dmii-state---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: mononeuropathy-diabetes-mellitus-type-ii-dmii---primary/output
  neurological-diabetes-mellitus-type-ii-dmii---primary:
    run: neurological-diabetes-mellitus-type-ii-dmii---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: diabetes-mellitus-type-ii-dmii-state---primary/output
  angiopathy-diabetes-mellitus-type-ii-dmii---primary:
    run: angiopathy-diabetes-mellitus-type-ii-dmii---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: neurological-diabetes-mellitus-type-ii-dmii---primary/output
  diabetes-mellitus-type-ii-dmii-ulcer---primary:
    run: diabetes-mellitus-type-ii-dmii-ulcer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: angiopathy-diabetes-mellitus-type-ii-dmii---primary/output
  diabetes-mellitus-type-ii-dmii---primary:
    run: diabetes-mellitus-type-ii-dmii---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: diabetes-mellitus-type-ii-dmii-ulcer---primary/output
  neuropathic-diabetes-mellitus-type-ii-dmii---primary:
    run: neuropathic-diabetes-mellitus-type-ii-dmii---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: diabetes-mellitus-type-ii-dmii---primary/output
  renal-diabetes-mellitus-type-ii-dmii---primary:
    run: renal-diabetes-mellitus-type-ii-dmii---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: neuropathic-diabetes-mellitus-type-ii-dmii---primary/output
  retinopathy-diabetes-mellitus-type-ii-dmii---primary:
    run: retinopathy-diabetes-mellitus-type-ii-dmii---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: renal-diabetes-mellitus-type-ii-dmii---primary/output
  diabetes-mellitus-type-ii-dmii-proteinuria---primary:
    run: diabetes-mellitus-type-ii-dmii-proteinuria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: retinopathy-diabetes-mellitus-type-ii-dmii---primary/output
  diabetes-mellitus-type-ii-dmii-control---primary:
    run: diabetes-mellitus-type-ii-dmii-control---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: diabetes-mellitus-type-ii-dmii-proteinuria---primary/output
  hypoglycaemic-diabetes-mellitus-type-ii-dmii---primary:
    run: hypoglycaemic-diabetes-mellitus-type-ii-dmii---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: diabetes-mellitus-type-ii-dmii-control---primary/output
  diabetes---primary:
    run: diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: hypoglycaemic-diabetes-mellitus-type-ii-dmii---primary/output
  polyneuropathy-diabetes-mellitus-type-ii-dmii---primary:
    run: polyneuropathy-diabetes-mellitus-type-ii-dmii---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: diabetes---primary/output
  diabetes-mellitus-type-ii-dmii-treated---primary:
    run: diabetes-mellitus-type-ii-dmii-treated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: polyneuropathy-diabetes-mellitus-type-ii-dmii---primary/output
  multiple-diabetes-mellitus-type-ii-dmii---primary:
    run: multiple-diabetes-mellitus-type-ii-dmii---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: diabetes-mellitus-type-ii-dmii-treated---primary/output
  ophthalmic-diabetes-mellitus-type-ii-dmii---primary:
    run: ophthalmic-diabetes-mellitus-type-ii-dmii---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: multiple-diabetes-mellitus-type-ii-dmii---primary/output
  diabetes-mellitus-type-ii-dmii-gangrene---primary:
    run: diabetes-mellitus-type-ii-dmii-gangrene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ophthalmic-diabetes-mellitus-type-ii-dmii---primary/output
  diabetes-mellitus-type-ii-dmii-microalbuminuria---primary:
    run: diabetes-mellitus-type-ii-dmii-microalbuminuria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: diabetes-mellitus-type-ii-dmii-gangrene---primary/output
  diabetes-mellitus-type-ii-dmii-review---primary:
    run: diabetes-mellitus-type-ii-dmii-review---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: diabetes-mellitus-type-ii-dmii-microalbuminuria---primary/output
  dietary-diabetes-mellitus-type-ii-dmii---primary:
    run: dietary-diabetes-mellitus-type-ii-dmii---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: diabetes-mellitus-type-ii-dmii-review---primary/output
  diabetes-mellitus-type-ii-dmii-complication---primary:
    run: diabetes-mellitus-type-ii-dmii-complication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: dietary-diabetes-mellitus-type-ii-dmii---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: diabetes-mellitus-type-ii-dmii-complication---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
