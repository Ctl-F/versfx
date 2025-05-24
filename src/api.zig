const std = @import("std");

pub const Color = packed struct {
    b: u8,
    g: u8,
    r: u8,
    a: u8,
};

pub const SoftwareRenderer = struct {
    context: *anyopaque,
    vtable: VTable,

    pub const VTable = struct {
        init: *const fn(*anyopaque) anyerror!void,
        deinit: *const fn(*anyopaque) void,
        present: *const fn(*anyopaque, []const Color) anyerror!void,
        clear: *const fn(*anyopaque, Color) anyerror!void,
        get_framebuffer: *const fn(*anyopaque) anyerror![]Color,
    };

};



