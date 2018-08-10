void Vertex() {
    gl_Position = projection * view * model * vec4(position, 1.0);

    vs_out.texture0 = texture;
    vs_out.normal0 = mat3(transpose(inverse(model))) * normal;
    vs_out.position0 = vec3(model * vec4(position, 1.0));
}