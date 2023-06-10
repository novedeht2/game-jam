/// @function wave(from, to, duration, offset);
/// @param {real} from
/// @param {real} to
/// @param {real} duration
/// @param {real} offset

function wave(from, to, duration, offset){

a4 = (to - from) * 0.5;
return from + a4 + sin((((current_time * 0.001) + duration * offset) / duration) * (pi*2)) * a4;

}