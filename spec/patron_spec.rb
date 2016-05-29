## -------------------------------------------------------------------
##
## Copyright (c) 2008 The Hive http://www.thehive.com/
##
## Permission is hereby granted, free of charge, to any person obtaining a copy
## of this software and associated documentation files (the "Software"), to deal
## in the Software without restriction, including without limitation the rights
## to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
## copies of the Software, and to permit persons to whom the Software is
## furnished to do so, subject to the following conditions:
##
## The above copyright notice and this permission notice shall be included in
## all copies or substantial portions of the Software.
##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
## IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
## FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
## AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
## LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
## OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
## THE SOFTWARE.
##
## -------------------------------------------------------------------


require File.expand_path("./spec") + '/spec_helper.rb'

describe Patron do

  it 'should return the user agent string' do
    ua_str = Patron.user_agent_string
    expect(ua_str).to include('curl')
    expect(ua_str).to include('Patron')
  end
  
  it "should return the version number of the Patron library" do
    version = Patron.version
    expect(version).to match(%r|^\d+.\d+.\d+$|)
  end

  it "should return the version number of the libcurl library" do
    version = Patron.libcurl_version
    expect(version).to match(%r|^libcurl/\d+.\d+.\d+|)
  end

end
