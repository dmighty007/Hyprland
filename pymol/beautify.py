from pymol import cmd
def beautify():
    cmd.set('ambient', '0.57000')
    cmd.set('antialias', '10')
    cmd.set('cartoon_loop_radius', '0.16000')
    cmd.set('cartoon_oval_length', '1.20000')
    cmd.set('cartoon_oval_width', '0.16000')
    cmd.set('cartoon_rect_length', '1.20000')
    cmd.set('cartoon_rect_width', '0.16000')
    cmd.set('cartoon_sampling', '14')
    cmd.set('direct', '0.36000')
    cmd.set('field_of_view', '65.00000')
    cmd.set('light_count', '8')
    cmd.set('power', '2.51000')
    cmd.set('transparency', '0.60000')
    cmd.set('seq_view_format', '3')
    cmd.set('shininess', '21.30000')
    cmd.set('spec_count', '3')
    cmd.set('spec_direct', '0.11000')
    cmd.set('spec_direct_power', '44.00000')
    cmd.set('spec_power', '1200.00000')
    cmd.set('spec_reflect', '0.60000')
    cmd.set('sphere_scale', '0.35000')
    cmd.set('surface_quality', '1')
    cmd.set('ray_opaque_background', '1')
    cmd.set('ray_shadow', 'off')
    cmd.set('ray_shadows', 'off')
    cmd.set('ray_trace_mode', '1')
    cmd.set('reflect', '0.06000')
    cmd.set('reflect_power', '1.71000')
    cmd.set('ribbon_sampling', '10')
cmd.extend("beautify", beautify)
