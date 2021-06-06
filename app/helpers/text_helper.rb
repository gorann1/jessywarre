module TextHelper
  def simple_format(desc, html_options = {}, options = {})
    wrapper_tag = options.fetch(:wrapper_tag, :p)

    text = sanitize(desc) if options.fetch(:sanitize, true)
    paragraphs = split_paragraphs(desc)

    if paragraphs.empty?
      content_tag(wrapper_tag, nil, html_options)
    else
      paragraphs.map! { |paragraph|
        content_tag(wrapper_tag, raw(paragraph), html_options)
      }.join("\n\n").html_safe
    end
  end

  def truncate(desc, options = {}, &block)
      if desc
        length  = options.fetch(:length, 330)

        content = desc.truncate(length, options)
        content = options[:escape] == false ? content.html_safe : ERB::Util.html_escape(content)
        content << capture(&block) if block_given? && desc.length > length
        content
      end
    end
end
