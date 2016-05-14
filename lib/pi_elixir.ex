defmodule PiElixir do

  def get_camera_status() do
    [s, d] = ShellStream.shell(' vcgencmd get_camera')
    |> Enum.to_list
    |> List.first
    |> String.split " "
    [ List.to_tuple(String.split(d,"=")),  List.to_tuple(String.split(d, "="))]
  end


  def get_snapshot(opts \\ []) do
    
    
  end
  
end
