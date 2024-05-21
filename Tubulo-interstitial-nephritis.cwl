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
  acute-tubulo-interstitial-nephritis---primary:
    run: acute-tubulo-interstitial-nephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  toxic-tubulo-interstitial-nephritis---primary:
    run: toxic-tubulo-interstitial-nephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: acute-tubulo-interstitial-nephritis---primary/output
  neoplastic-tubulo-interstitial-nephritis---primary:
    run: neoplastic-tubulo-interstitial-nephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: toxic-tubulo-interstitial-nephritis---primary/output
  renal-tubulo-interstitial-nephritis---primary:
    run: renal-tubulo-interstitial-nephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: neoplastic-tubulo-interstitial-nephritis---primary/output
  tubulo-interstitial-nephritis-specified---primary:
    run: tubulo-interstitial-nephritis-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: renal-tubulo-interstitial-nephritis---primary/output
  tubulo-interstitial-nephritis-chron---primary:
    run: tubulo-interstitial-nephritis-chron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: tubulo-interstitial-nephritis-specified---primary/output
  tubulo-interstitial-nephritis-unspecified---primary:
    run: tubulo-interstitial-nephritis-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: tubulo-interstitial-nephritis-chron---primary/output
  other-tubulo-interstitial-nephritis---primary:
    run: other-tubulo-interstitial-nephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: tubulo-interstitial-nephritis-unspecified---primary/output
  tubulo-interstitial-nephritis-immune---primary:
    run: tubulo-interstitial-nephritis-immune---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: other-tubulo-interstitial-nephritis---primary/output
  tubulo-interstitial-nephritis-medicament---primary:
    run: tubulo-interstitial-nephritis-medicament---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: tubulo-interstitial-nephritis-immune---primary/output
  tubulo-interstitial-nephritis-disordr---primary:
    run: tubulo-interstitial-nephritis-disordr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: tubulo-interstitial-nephritis-medicament---primary/output
  tubulo-interstitial-nephritis-induced---primary:
    run: tubulo-interstitial-nephritis-induced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: tubulo-interstitial-nephritis-disordr---primary/output
  analgesic-tubulo-interstitial-nephritis---primary:
    run: analgesic-tubulo-interstitial-nephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: tubulo-interstitial-nephritis-induced---primary/output
  tubulo-interstitial-nephritis-substance---primary:
    run: tubulo-interstitial-nephritis-substance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: analgesic-tubulo-interstitial-nephritis---primary/output
  tubulo-interstitial-nephritis-transplant---primary:
    run: tubulo-interstitial-nephritis-transplant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: tubulo-interstitial-nephritis-substance---primary/output
  tubulointerstitial---primary:
    run: tubulointerstitial---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: tubulo-interstitial-nephritis-transplant---primary/output
  tubulo-interstitial-nephritis-classified---primary:
    run: tubulo-interstitial-nephritis-classified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: tubulointerstitial---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: tubulo-interstitial-nephritis-classified---primary/output
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
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
