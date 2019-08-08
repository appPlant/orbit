# Apache 2.0 License
#
# Copyright (c) 2016 Sebastian Katzer, appPlant GmbH
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

class SystemCallError < StandardError
  # Constructs and raises a SystemCallError.
  #
  # @param [ Integer ] errno The error number.
  # @param [ String ] msg An optional message.
  #
  # @return [ Void ]
  def self._sys_fail(errno, msg = nil)
    raise new(errno, msg)
  end

  # Initializes a new error instance.
  #
  # @param [ Integer ] errno The error number.
  # @param [ String ] msg An optional message.
  #
  # @return [ Void ]
  def initialize(errno, msg = nil)
    @errno = errno
    super(msg)
  end

  # Return this SystemCallError's error number.
  #
  # @return [ Integer ]
  attr_reader :errno
end
