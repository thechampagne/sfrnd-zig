// Copyright 2023 XXIV
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
pub const RND_U32 = c_uint;
pub const RND_U64 = c_ulonglong;

pub const rnd_pcg_t = extern struct {
    state: [2]RND_U64,
};

pub const rnd_well_t = extern struct {
    state: [17]RND_U32,
};

pub const rnd_gamerand_t = extern struct {
    state: [2]RND_U32,
};

pub const rnd_xorshift_t = extern struct {
    state: [2]RND_U64,
};

pub extern "C" fn rnd_pcg_seed(pcg: [*c]rnd_pcg_t, seed: RND_U32) void;
pub extern "C" fn rnd_pcg_next(pcg: [*c]rnd_pcg_t) RND_U32;
pub extern "C" fn rnd_pcg_nextf(pcg: [*c]rnd_pcg_t) f32;
pub extern "C" fn rnd_pcg_range(pcg: [*c]rnd_pcg_t, min: c_int, max: c_int) c_int;
pub extern "C" fn rnd_well_seed(well: [*c]rnd_well_t, seed: RND_U32) void;
pub extern "C" fn rnd_well_next(well: [*c]rnd_well_t) RND_U32;
pub extern "C" fn rnd_well_nextf(well: [*c]rnd_well_t) f32;
pub extern "C" fn rnd_well_range(well: [*c]rnd_well_t, min: c_int, max: c_int) c_int;
pub extern "C" fn rnd_gamerand_seed(gamerand: [*c]rnd_gamerand_t, seed: RND_U32) void;
pub extern "C" fn rnd_gamerand_next(gamerand: [*c]rnd_gamerand_t) RND_U32;
pub extern "C" fn rnd_gamerand_nextf(gamerand: [*c]rnd_gamerand_t) f32;
pub extern "C" fn rnd_gamerand_range(gamerand: [*c]rnd_gamerand_t, min: c_int, max: c_int) c_int;
pub extern "C" fn rnd_xorshift_seed(xorshift: [*c]rnd_xorshift_t, seed: RND_U64) void;
pub extern "C" fn rnd_xorshift_next(xorshift: [*c]rnd_xorshift_t) RND_U64;
pub extern "C" fn rnd_xorshift_nextf(xorshift: [*c]rnd_xorshift_t) f32;
pub extern "C" fn rnd_xorshift_range(xorshift: [*c]rnd_xorshift_t, min: c_int, max: c_int) c_int;
