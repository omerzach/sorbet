# typed: true

T.reveal_type([1, nil].compact) # error: Revealed type: `T::Array[Integer]`

T.reveal_type([1, 2, 3].compact) # error: Revealed type: `T::Array[Integer]`

T.reveal_type([[1], nil].compact)  # error: Revealed type: `T::Array[[Integer(1)]]`

T.reveal_type(T::Hash[Symbol, T.nilable(Integer)].new.compact) # error: Revealed type: `T::Hash[Symbol, Integer]`

T.reveal_type(T::Hash[String, T.nilable(Integer)].new.compact) # error: Revealed type: `T::Hash[String, Integer]`
