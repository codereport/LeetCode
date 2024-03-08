// Godbolt Link: https://godbolt.org/z/vb668z7Y5

#include <print>
#include <range/v3/all.hpp>

auto max_ice_cream(std::vector<int> ice_cream, int money) -> int {
  return ranges::fold_left(
      ranges::actions::sort(ice_cream)              //
          | ranges::views::partial_sum(std::plus{}) //
          | ranges::views::transform([&](auto e) { return e <= money; }),
      0, std::plus{});
}

auto main() -> int {
  auto const ic = std::vector{1, 3, 2, 4, 1};
  std::print("{}\n", max_ice_cream(ic, 7));
  return 0;
}
