module SprintsHelper


  def class_from_status(status)
    if status=='todo'
      return 'col-sm-3'
    end
    if status=='in_progress'
      return 'col-sm-3 col-sm-offset-3'
    end

    if status == 'done'
      return 'col-sm-3 col-sm-offset-6'
    end

    if status == 'delivered'
      return 'col-sm-3 col-sm-offset-9'
    end


  end
end
