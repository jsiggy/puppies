$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '../../', 'lib'))

require 'rspec'
require 'page-object'
require 'data_magic'
require 'require_all'
require 'fig_newton'

require_all 'lib'

World(PageObject::PageFactory)

FigNewton.load('default.yml')
