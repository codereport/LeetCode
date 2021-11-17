// Problem Link: https://leetcode.com/contest/biweekly-contest-63/problems/minimum-number-of-moves-to-seat-everyone/
// Rust Playground: https://play.rust-lang.org/?version=stable&mode=debug&edition=2018&gist=df9b4177eac1b83f341aee596866a683

fn min_moves_to_seat(a: Vec<i32>, b: Vec<i32>) -> i32 {
    sorted(a).into_iter()
        .zip(sorted(b))
        .map(|x| (x.0 - x.1).abs())
        .sum::<i32>()
}
