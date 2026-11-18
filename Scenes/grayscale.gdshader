shader_type canvas_item;
uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;

void fragment() {
    // Sample the screen texture at the current UV coordinate
    vec4 screen_color = texture(SCREEN_TEXTURE, SCREEN_UV);

    // Calculate luminance (perceived brightness) for a more natural grayscale
    float luminance = (screen_color.r * 0.2126) + (screen_color.g * 0.7152) + (screen_color.b * 0.0722);

    // Set the output color to grayscale (same value for R, G, B)
    COLOR = vec4(vec3(luminance), screen_color.a);
}
