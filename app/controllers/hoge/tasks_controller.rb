class Hoge::TasksController < ApplicationController
  def index
    respond_to do |format|
      format.xlsx {
        trace = TracePoint.trace(:call) {|tp| pp(class: tp.defined_class, method: tp.method_id)}
        render xlsx: 'all_tasks', template: 'hoge/tasks/index'
        trace.disable
      }
    end
  end
end
