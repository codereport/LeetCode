
// without blackbird
// compiler explorer: https://godbolt.org/z/v1o1rThT7
auto sum_of_squares(std::vector<int> nums) -> int {
  return flux::zip(flux::ref(nums), flux::ints(1))
      .filter([&](auto pair) { return nums.size() % pair.second == 0; })
      .map([](auto pair) { return pair.first * pair.first; })
      .sum();
};

// with blackbird
// compiler explorer: https://godbolt.org/z/adE74P7oW
auto sum_of_squares(std::vector<int> nums) -> int {
  return flux::zip(flux::ref(nums), flux::ints(1))
      .filter(_b(_eq(0), _b(_mod(nums.size()), _snd)))
      .map(_b(_w(_mul_), _fst))
      .sum();
};
