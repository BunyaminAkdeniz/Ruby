# frozen_string_literal: true

module HesapMakinesi
  def self.toplama(*i)
    a = 0
    i.each { |i| a += i }
    a
  end

  def self.carpma(*i)
    a = 1
    i.each { |i| a *= i }
    a
  end
end
