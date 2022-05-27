#
# This file is distributed under the MIT License. See LICENSE.md for details.
#

register_artifact_category("tests_analysis" "OFF")
register_artifact("tests_analysis" "switch-addls" "arm" "switch-addls.S")
register_artifact("tests_analysis" "switch-ldrls" "arm" "switch-ldrls.S")
register_artifact("tests_analysis" "switch-disjoint-ranges" "arm"
                  "switch-disjoint-ranges.S")
register_artifact("tests_analysis" "call" "arm" "call.S")
register_artifact("tests_analysis" "fake-function" "arm" "fake-function.S")
register_artifact("tests_analysis" "fake-function-without-push" "arm"
                  "fake-function-without-push.S")
register_artifact("tests_analysis" "indirect-call" "arm" "indirect-call.S")
register_artifact("tests_analysis" "longjmp" "arm" "longjmp.S")
register_artifact("tests_analysis" "indirect-tail-call" "arm"
                  "indirect-tail-call.S")
register_artifact("tests_analysis" "memset" "arm" "memset.S")

register_artifact("tests_analysis" "switch-jump-table" "mips"
                  "switch-jump-table.S")
register_artifact("tests_analysis" "switch-jump-table-stack" "mips"
                  "switch-jump-table-stack.S")
register_artifact("tests_analysis" "jump-table-base-before-function-call"
                  "mips" "jump-table-base-before-function-call.S")

register_artifact("tests_analysis" "try-catch-ehframe" "x86_64"
                  "try-catch-ehframe.S")
register_artifact("tests_analysis" "switch-jump-table" "x86_64"
                  "switch-jump-table.S")
register_artifact("tests_analysis" "switch-jump-table-32-bit-comparison"
                  "x86_64" "switch-jump-table-32-bit-comparison.S")
register_artifact("tests_analysis" "rda-in-memory" "x86_64" "rda-in-memory.S")
register_artifact("tests_analysis" "longjmp" "x86_64" "longjmp.S")
register_artifact("tests_analysis" "indirect-tail-call" "x86_64"
                  "indirect-tail-call.S")
register_artifact("tests_analysis" "indirect-call" "x86_64" "indirect-call.S")
register_artifact("tests_analysis" "call" "x86_64" "call.S")
register_artifact("tests_analysis" "fibonacci" "x86_64" "fibonacci.c")

register_artifact_category("tests_analysis_StackAnalysis" "OFF")
register_artifact("tests_analysis_StackAnalysis" "always-dead-return-value"
                  "x86_64" "always-dead-return-value.S")
register_artifact("tests_analysis_StackAnalysis" "dead-on-one-path" "x86_64"
                  "dead-on-one-path.S")
register_artifact("tests_analysis_StackAnalysis" "dead-register" "x86_64"
                  "dead-register.S")
register_artifact("tests_analysis_StackAnalysis" "draof" "x86_64" "draof.S")
register_artifact("tests_analysis_StackAnalysis" "drvofc" "x86_64" "drvofc.S")
register_artifact("tests_analysis_StackAnalysis" "raofc" "x86_64" "raofc.S")
register_artifact("tests_analysis_StackAnalysis" "recursion" "x86_64"
                  "recursion.S")
register_artifact("tests_analysis_StackAnalysis" "sometimes-dead-return-value"
                  "x86_64" "sometimes-dead-return-value.S")
register_artifact("tests_analysis_StackAnalysis" "uraof" "x86_64" "uraof.S")
register_artifact("tests_analysis_StackAnalysis" "urvofc" "x86_64" "urvofc.S")
register_artifact("tests_analysis_StackAnalysis" "urvof" "x86_64" "urvof.S")
register_artifact("tests_analysis_StackAnalysis" "push-pop" "x86_64"
                  "push-pop.S")
register_artifact("tests_analysis_StackAnalysis" "indirect-call-callee-saved"
                  "x86_64" "indirect-call-callee-saved.S")
register_artifact("tests_analysis_StackAnalysis" "helper" "x86_64" "helper.S")
register_artifact("tests_analysis_StackAnalysis" "return_value_to_argument"
                  "x86_64" "return-value-to-argument.S")

register_artifact_category("tests_analysis_RestructureCFGPass" "OFF")
register_artifact("tests_analysis_RestructureCFGPass" "throttle" "x86_64"
                  "throttle.c")

register_artifact_category("tests_analysis_Decompilation" "OFF")
register_artifact("tests_analysis_Decompilation" "struct" "dynamic_native"
                  "struct.c")
register_artifact("tests_analysis_Decompilation" "array" "dynamic_native"
                  "array.c")
register_artifact("tests_analysis_Decompilation" "linked_list" "dynamic_native"
                  "linked_list.c")
register_artifact("tests_analysis_Decompilation" "array_of_structs"
                  "dynamic_native" "array_of_structs.c")

register_artifact_category("tests_analysis_DLA" "OFF")
register_artifact("tests_analysis_DLA" "linked_list2" "dynamic_native"
                  "linked_list2.c")

register_artifact_category("tests_analysis_PromoteStackPointer" "OFF")
register_artifact("tests_analysis_PromoteStackPointer" "stackframe"
                  "dynamic_native" "stackframe.c")

register_artifact_category("tests_analysis_SegregateStackAccesses" "OFF")
register_artifact("tests_analysis_SegregateStackAccesses" "segregate"
                  "dynamic_native" "segregate.c")
