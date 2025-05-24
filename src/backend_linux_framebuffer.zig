const api = @import("api.zig");
const std = @import("std");


pub const BackendFramebufferAPI = struct {
    const This = @This();

    pub fn renderer(context: *This) api.SoftwareRenderer {
        return api.SoftwareRenderer {
            .context = context,
            .vtable = .{
                .init = &This.init,
                .deinit = &This.deinit,
                .present = &This.present,
                .get_framebuffer = &This.get_framebuffer,
                .clear = &This.clear
            }
        };
    }

    fn init(context: *This) anyerror!void {

    }

    fn deinit(context: *This) void {

    }

    fn present(context: *This, []const api.Color) anyerror!void {

    }

    fn get_framebuffer(context: *This) anyerror![]api.Color {
        
    }

    fn clear(context: *This, color: api.Color) anyerror!void {

    }
};




