defmodule Try do

  # def start do
  #   throw :ok
  # end

  def start do
    a
    1
  end

  def a do
    b
    1
  end

  def b do
    c
    1
  end

  def c do
    try do
      x = 1
      throw(x + 1)
    catch
      1 -> 1
      3 -> 2
    end
  end

  def start2 do
    try do
      x = 1
      throw(x + 1)
    catch
      1 -> 1
      x -> x + 1
      _ -> 2
    end
  end

  def except do
    try do
      raise 1
    rescue
      x -> 2
    after
      3
    end
  end
end
