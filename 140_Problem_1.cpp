// code_report Solution
// Video Link:
// Problem Link:
// Wandbox Link: https://wandbox.org/permlink/AEhEejSPeDer55A5

// C++20 Ranges / Ranges-v3

namespace rv = ranges::view;
namespace ra = ranges::action;

auto findOcurrences(string s, string a, string b) -> vector<string> {
    auto t = s | rv::split(' ') 
               | ranges::to<vector<string>>;
    return t | rv::sliding(3)
             | rv::filter([a, b] (auto rng) {
                  return a == *ranges::cbegin(rng) && 
                         b == *next(ranges::cbegin(rng)); })
             | rv::transform([](auto rng) {
                  return *ranges::crbegin(rng); })
             | ranges::to<vector<string>>;
}
