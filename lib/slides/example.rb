class Example < Slim::Filter
  def on_slim_embedded(engine, body)
    code = Slim::CollectText.new.call(body)
    html = Albino.colorize code, :php
    [:static, html]
  end
end
