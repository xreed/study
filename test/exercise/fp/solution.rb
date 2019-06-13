module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(_array)
        count = 0;

        sum = _array.reduce 0 do |sum, film|
          if film["rating_kinopoisk"].to_s.empty? || film["rating_kinopoisk"] == '0' ||
            film["country"].to_s.empty? || film["country"].to_s.count(',') < 1
            sum
          else
            count += 1
            sum + film["rating_kinopoisk"].to_f
          end
        end
        sum / count
      end

      def chars_count(_films, _threshold)
        _films.reduce 0 do |sum, film|
          if film["rating_kinopoisk"].to_s.empty? || film["rating_kinopoisk"].to_f < _threshold
            sum
          else
            sum + film["name"].count('и')
          end
        end
      end
    end
  end
end
