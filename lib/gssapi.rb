#############################################################################
# Copyright © 2010 Dan Wanek <dan.wanek@gmail.com>
#
#
# This file is part of the Ruby GSSAPI library.
# 
# GSSAPI is free software: you can redistribute it and/or
# modify it under the terms of the GNU General Public License as published
# by the Free Software Foundation, either version 3 of the License, or (at
# your option) any later version.
# 
# GSSAPI is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General
# Public License for more details.
# 
# You should have received a copy of the GNU General Public License along
# with GSSAPI.  If not, see <http://www.gnu.org/licenses/>.
#############################################################################
require 'ffi'
module GSSAPI
  module LibGSSAPI
    extend FFI::Library
    FFI::add_typedef(:uint32, :OM_uint32)

    GSSAPI_LIB_TYPE = :mit unless defined?(GSSAPI_LIB_TYPE)
  end
end

require 'gssapi/exceptions'
require 'gssapi/lib_gssapi'
require 'gssapi/simple'
