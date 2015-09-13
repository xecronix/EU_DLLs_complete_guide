namespace guitar
include std/dll.e
include std/machine.e
include std/pretty.e
include libhelper.e

-- Globals
atom  dllid_guitar_dll, 
      rid_guitar_new, 
      rid_guitar_destroy, 
      rid_guitar_set_brand,
      rid_guitar_get_brand,
      rid_guitar_set_string_count,
      rid_guitar_get_string_count

-- Wrapper functions.  So using the dll seems more Euphoria like.
public function guitar_new()
  return c_func(rid_guitar_new, {})
end function

public procedure guitar_destroy(atom guitar)
  c_proc(rid_guitar_destroy, {guitar})
end procedure

public procedure guitar_set_brand(atom guitar, sequence brand)
  atom brand_ptr = allocate_string(brand)
  c_proc(rid_guitar_set_brand, {guitar, brand_ptr} )
end procedure

public function guitar_get_brand(atom guitar)
  atom brand_ptr = c_func(rid_guitar_get_brand, {guitar})
  sequence brand = {}
  brand = peek_string(brand_ptr)
  return brand  
end function

public procedure guitar_set_string_count(atom guitar, integer cnt)
  c_proc(rid_guitar_set_string_count, {guitar, cnt} )
end procedure

public function guitar_get_string_count(atom guitar)
  integer cnt = c_func(rid_guitar_get_string_count, {guitar})
  return cnt
end function

-- Pseduo Link --
-- Make sure we can open the dll before we go any further --
dllid_guitar_dll = open_dll(include_derived_ext_paths("guitar", "guitar"))
if dllid_guitar_dll = 0 then
  puts(2, "Could not find or open dynamic lib guitar.  Tried the following: ")
  pretty_print(2, include_derived_ext_paths("guitar", "guitar"), {2})
  abort(1)
end if

-- We need an identifier that represents our c routine.  This is accomplished by
-- mapping the dll function prototype (or signature if you prefer) to something 
-- Euphoira will know how to handle.
rid_guitar_new = define_c_func(dllid_guitar_dll, "guitar_new", {}, C_POINTER)
rid_guitar_destroy = define_c_proc(dllid_guitar_dll, "guitar_destroy", {C_POINTER})
rid_guitar_set_brand = define_c_proc(dllid_guitar_dll, "guitar_set_brand", {C_POINTER, C_POINTER})
rid_guitar_get_brand = define_c_func(dllid_guitar_dll, "guitar_get_brand", {C_POINTER}, C_POINTER)
rid_guitar_set_string_count = define_c_proc(dllid_guitar_dll, "guitar_set_string_count", {C_POINTER, C_INT})
rid_guitar_get_string_count = define_c_func(dllid_guitar_dll, "guitar_get_string_count", {C_POINTER}, C_INT)
