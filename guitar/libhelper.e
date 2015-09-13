namespace libhelper
include std/filesys.e

public function include_derived_ext_paths(sequence libdir, sequence lib)
    sequence inc_paths = include_paths(1)
    sequence retval = {}
    sequence dll_name = sprintf("%s.%s", {lib, SHARED_LIB_EXT})
    retval = append(retval, dll_name)
    sequence current = join_path({current_dir(), dll_name})
    retval = append(retval, current)
    for i = 1 to length(inc_paths) do
        sequence inc_path = inc_paths[i]
        sequence last_char = {inc_path[$]}
        if equal(last_char, SLASH) then
            inc_path = inc_path[1..$-1]
        end if
        retval = append(retval, join_path({inc_path, libdir, "ext", dll_name}))
    end for
    return retval
end function
