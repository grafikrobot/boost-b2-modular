#!/bin/bash

cd `dirname ${0}`
patchdir=`pwd`
cd ..
rootdir=`pwd`
cd "${patchdir}"
echo "*****" `pwd`

project_id=PVT_kwHOAC2_7c4Aa9R9
# {
#   "fields": [
#     {
#       "id": "PVTF_lAHOAC2_7c4Aa9R9zgRUW80",
#       "name": "Title",
#       "type": "ProjectV2Field"
#     },
#     {
#       "id": "PVTF_lAHOAC2_7c4Aa9R9zgRUW84",
#       "name": "Assignees",
#       "type": "ProjectV2Field"
#     },
#     {
#       "id": "PVTSSF_lAHOAC2_7c4Aa9R9zgRUW88",
#       "name": "Status",
#       "options": [
#         {
#           "id": "f75ad846",
#           "name": "Todo"
#         },
#         {
#           "id": "47fc9ee4",
#           "name": "In Progress"
#         },
#         {
#           "id": "98236657",
#           "name": "Done"
#         },
#         {
#           "id": "0fd8f719",
#           "name": "Blocked"
#         }
#       ],
#       "type": "ProjectV2SingleSelectField"
#     },
#     {
#       "id": "PVTF_lAHOAC2_7c4Aa9R9zgRUW9A",
#       "name": "Labels",
#       "type": "ProjectV2Field"
#     },
#     {
#       "id": "PVTF_lAHOAC2_7c4Aa9R9zgRUW9E",
#       "name": "Linked pull requests",
#       "type": "ProjectV2Field"
#     },
#     {
#       "id": "PVTF_lAHOAC2_7c4Aa9R9zgRUW9M",
#       "name": "Reviewers",
#       "type": "ProjectV2Field"
#     },
#     {
#       "id": "PVTF_lAHOAC2_7c4Aa9R9zgRUW9Q",
#       "name": "Repository",
#       "type": "ProjectV2Field"
#     },
#     {
#       "id": "PVTF_lAHOAC2_7c4Aa9R9zgRUW9U",
#       "name": "Milestone",
#       "type": "ProjectV2Field"
#     },
#     {
#       "id": "PVTSSF_lAHOAC2_7c4Aa9R9zgRUYo4",
#       "name": "Type",
#       "options": [
#         {
#           "id": "a19a988b",
#           "name": "Task"
#         },
#         {
#           "id": "11903f04",
#           "name": "PR"
#         },
#         {
#           "id": "502cf27a",
#           "name": "Module"
#         },
#         {
#           "id": "dfc2a82c",
#           "name": "ToMaster"
#         }
#       ],
#       "type": "ProjectV2SingleSelectField"
#     },
#     {
#       "id": "PVTF_lAHOAC2_7c4Aa9R9zgRUZc0",
#       "name": "Boost PR",
#       "type": "ProjectV2Field"
#     },
#     {
#       "id": "PVTSSF_lAHOAC2_7c4Aa9R9zgSvuOA",
#       "name": "Merge By",
#       "options": [
#         {
#           "id": "3120f7b3",
#           "name": "Boost"
#         },
#         {
#           "id": "78215ab9",
#           "name": "Maintainer"
#         },
#         {
#           "id": "f530a0f7",
#           "name": "Other"
#         }
#       ],
#       "type": "ProjectV2SingleSelectField"
#     },
#     {
#       "id": "PVTF_lAHOAC2_7c4Aa9R9zgSvuv0",
#       "name": "Maintainer",
#       "type": "ProjectV2Field"
#     }
#   ],
#   "totalCount": 12
# }

ready="\
https://github.com/boostorg/accumulators/pull/64
https://github.com/boostorg/algorithm/pull/121
https://github.com/boostorg/align/pull/20
https://github.com/boostorg/any/pull/29
https://github.com/boostorg/array/pull/24
https://github.com/boostorg/asio/pull/434
https://github.com/boostorg/assert/pull/39
https://github.com/boostorg/assign/pull/44
https://github.com/boostorg/atomic/pull/69
https://github.com/boostorg/beast/pull/2905
https://github.com/boostorg/bimap/pull/44
https://github.com/boostorg/bind/pull/36
https://github.com/boostorg/boost_install/pull/69
https://github.com/boostorg/boostbook/pull/25
https://github.com/boostorg/boostdep/pull/21
https://github.com/boostorg/callable_traits/pull/194
https://github.com/boostorg/charconv/pull/218
https://github.com/boostorg/chrono/pull/77
https://github.com/boostorg/circular_buffer/pull/49
https://github.com/boostorg/cobalt/pull/192
https://github.com/boostorg/compat/pull/13
https://github.com/boostorg/compatibility/pull/4
https://github.com/boostorg/compute/pull/885
https://github.com/boostorg/concept_check/pull/45
https://github.com/boostorg/config/pull/500
https://github.com/boostorg/container_hash/pull/38
https://github.com/boostorg/container/pull/287
https://github.com/boostorg/context/pull/264
https://github.com/boostorg/contract/pull/34
https://github.com/boostorg/conversion/pull/29
https://github.com/boostorg/convert/pull/66
https://github.com/boostorg/core/pull/178
https://github.com/boostorg/coroutine/pull/65
https://github.com/boostorg/coroutine2/pull/52
https://github.com/boostorg/crc/pull/27
https://github.com/boostorg/date_time/pull/239
https://github.com/boostorg/describe/pull/48
https://github.com/boostorg/detail/pull/24
https://github.com/boostorg/dll/pull/71
https://github.com/boostorg/docca/pull/143
https://github.com/boostorg/dynamic_bitset/pull/79
https://github.com/boostorg/endian/pull/56
https://github.com/boostorg/exception/pull/57
https://github.com/boostorg/fiber/pull/322
https://github.com/boostorg/filesystem/pull/318
https://github.com/boostorg/flyweight/pull/14
https://github.com/boostorg/foreach/pull/21
https://github.com/boostorg/format/pull/102
https://github.com/boostorg/function_types/pull/14
https://github.com/boostorg/function/pull/52
https://github.com/boostorg/functional/pull/23
https://github.com/boostorg/fusion/pull/274
https://github.com/boostorg/geometry/pull/1292
https://github.com/boostorg/gil/pull/752
https://github.com/boostorg/graph_parallel/pull/38
https://github.com/boostorg/graph/pull/382
https://github.com/boostorg/hana/pull/531
https://github.com/boostorg/headers/pull/2
https://github.com/boostorg/heap/pull/40
https://github.com/boostorg/histogram/pull/401
https://github.com/boostorg/hof/pull/228
https://github.com/boostorg/icl/pull/48
https://github.com/boostorg/inspect/pull/19
https://github.com/boostorg/integer/pull/34
https://github.com/boostorg/interprocess/pull/223
https://github.com/boostorg/interval/pull/40
https://github.com/boostorg/intrusive/pull/87
https://github.com/boostorg/io/pull/16
https://github.com/boostorg/iostreams/pull/174
https://github.com/boostorg/iterator/pull/84
https://github.com/boostorg/json/pull/1030
https://github.com/boostorg/lambda/pull/28
https://github.com/boostorg/lambda2/pull/10
https://github.com/boostorg/leaf/pull/73
https://github.com/boostorg/lexical_cast/pull/78
https://github.com/boostorg/local_function/pull/12
https://github.com/boostorg/locale/pull/234
https://github.com/boostorg/lockfree/pull/102
https://github.com/boostorg/log/pull/233
https://github.com/boostorg/logic/pull/31
https://github.com/boostorg/math/pull/1160
https://github.com/boostorg/metaparse/pull/17
https://github.com/boostorg/move/pull/54
https://github.com/boostorg/mp11/pull/94
https://github.com/boostorg/mpi/pull/159
https://github.com/boostorg/mpl/pull/79
https://github.com/boostorg/msm/pull/75
https://github.com/boostorg/multi_array/pull/36
https://github.com/boostorg/multi_index/pull/73
https://github.com/boostorg/mysql/pull/320
https://github.com/boostorg/nowide/pull/183
https://github.com/boostorg/numeric_conversion/pull/26
https://github.com/boostorg/odeint/pull/88
https://github.com/boostorg/optional/pull/125
https://github.com/boostorg/parameter_python/pull/4
https://github.com/boostorg/parameter/pull/114
https://github.com/boostorg/pfr/pull/174
https://github.com/boostorg/phoenix/pull/121
https://github.com/boostorg/poly_collection/pull/21
https://github.com/boostorg/polygon/pull/93
https://github.com/boostorg/pool/pull/59
https://github.com/boostorg/predef/pull/136
https://github.com/boostorg/preprocessor/pull/56
https://github.com/boostorg/process/pull/389
https://github.com/boostorg/program_options/pull/138
https://github.com/boostorg/property_map_parallel/pull/3
https://github.com/boostorg/property_map/pull/33
https://github.com/boostorg/property_tree/pull/122
https://github.com/boostorg/proto/pull/35
https://github.com/boostorg/ptr_container/pull/40
https://github.com/boostorg/python/pull/444
https://github.com/boostorg/quickbook/pull/25
https://github.com/boostorg/qvm/pull/52
https://github.com/boostorg/random/pull/107
https://github.com/boostorg/range/pull/151
https://github.com/boostorg/ratio/pull/13
https://github.com/boostorg/rational/pull/52
https://github.com/boostorg/redis/pull/204
https://github.com/boostorg/regex/pull/215
https://github.com/boostorg/safe_numerics/pull/140
https://github.com/boostorg/scope_exit/pull/17
https://github.com/boostorg/scope/pull/21
https://github.com/boostorg/serialization/pull/317
https://github.com/boostorg/signals2/pull/77
https://github.com/boostorg/smart_ptr/pull/113
https://github.com/boostorg/sort/pull/84
https://github.com/boostorg/spirit/pull/787
https://github.com/boostorg/stacktrace/pull/172
https://github.com/boostorg/statechart/pull/26
https://github.com/boostorg/static_assert/pull/17
https://github.com/boostorg/static_string/pull/60
https://github.com/boostorg/stl_interfaces/pull/67
https://github.com/boostorg/system/pull/124
https://github.com/boostorg/test/pull/426
https://github.com/boostorg/thread/pull/403
https://github.com/boostorg/throw_exception/pull/27
https://github.com/boostorg/timer/pull/22
https://github.com/boostorg/tokenizer/pull/26
https://github.com/boostorg/tti/pull/5
https://github.com/boostorg/tuple/pull/27
https://github.com/boostorg/type_erasure/pull/23
https://github.com/boostorg/type_index/pull/40
https://github.com/boostorg/type_traits/pull/195
https://github.com/boostorg/typeof/pull/26
https://github.com/boostorg/ublas/pull/196
https://github.com/boostorg/units/pull/63
https://github.com/boostorg/unordered/pull/266
https://github.com/boostorg/url/pull/850
https://github.com/boostorg/uuid/pull/159
https://github.com/boostorg/variant/pull/111
https://github.com/boostorg/variant2/pull/44
https://github.com/boostorg/vmd/pull/15
https://github.com/boostorg/wave/pull/214
https://github.com/boostorg/winapi/pull/94
https://github.com/boostorg/xpressive/pull/26
https://github.com/boostorg/yap/pull/111
"

while true ; do
    if read -r l_name ; then
        read -r l_path
        read -r l_url
        read -r l_frs
        read -r l_branch
        [[ $l_name =~ submodule..([a-z_0-9]+) ]]
        l_name=${BASH_REMATCH[1]}
        [[ $l_path =~ path...(.*) ]]
        l_path=${BASH_REMATCH[1]}
        [[ $l_url =~ url...(.*) ]]
        l_url=${BASH_REMATCH[1]}
        if [[ $l_path =~ ^(${1}).* ]] ; then
            echo "===== ${l_name} -- ${l_url} -- ${l_path}"
            cd "${rootdir}/${l_path}"
            echo git status -s -b
            git status -s -b
            repo=`echo ${l_url} | grep -E 'boostorg[.]([^.]+)' -o`
            repo=${repo/boostorg./}
            echo "gh pr list --repo=boostorg/${repo} --head=modular --json=number | grep -E \"([0-9]+)\" -o"
            pr=`gh pr list --repo=boostorg/${repo} --head=modular --json=number | grep -E "([0-9]+)" -o`
            # Set branch for PR state..
            if test -n "${pr}" ; then
                echo PR number: ${pr}
                echo git switch --no-guess "modular"
                git switch --no-guess "modular"
            else
                echo git switch --no-guess "develop"
                git switch --no-guess "develop"
            fi
            echo git pull
            git pull
            # if test -n "${pr}" ; then
            #     echo PR number: ${pr}
            #     # Ping PR is ready..
            #     # if [[ "${ready}" == *"${repo}"* ]] ; then
            #     #     echo "Status: In Progress"
            #     #     echo gh pr comment ${pr} --repo=boostorg/${repo} -b "Please review and merge this PR at your earliest convenience."
            #     #     gh pr comment ${pr} --repo=boostorg/${repo} -b "Please review and merge this PR at your earliest convenience."
            #     # fi
            #     # Mark PR "Ready"..
            #     # if [[ "${ready}" == *"${repo}"* ]] ; then
            #     #     echo "Status: Ready"
            #     #     echo gh pr ready ${pr} --repo=boostorg/${repo}
            #     #     gh pr ready ${pr} --repo=boostorg/${repo}
            #     # fi
            #     # Set PR description..
            #     # echo gh pr edit ${pr} --repo=boostorg/${repo} -F "${patchdir}/mod-pr-${1}.md"
            #     # gh pr edit ${pr} --repo=boostorg/${repo} -F "${patchdir}/mod-pr-${1}.md"
            # fi
            sleep 5
        fi
    else
        break
    fi
done < "${rootdir}/.gitmodules"

cd "${rootdir}"
echo "*****" `pwd`
