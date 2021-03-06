// glew must be before glfw
#include <GL/glew.h>
#include <GLFW/glfw3.h>

// contains helper functions such as shader compiler
#include "icg_helper.h"

#include <glm/gtc/matrix_transform.hpp>
// Windows machines may not have M_PI defined
#ifndef M_PI
#define M_PI 3.1415
#endif

#include "cube/cube.h"
#include "quad/quad.h"

using namespace glm;

Cube cube;
Quad quad;

int window_width = 800;
int window_height = 600;

mat4 projection_matrix;
mat4 view_matrix;
mat4 quad_model_matrix;

mat4 OrthographicProjection(float left, float right, float bottom,
                            float top, float near, float far) {
    assert(right > left);
    assert(far > near);
    assert(top > bottom);
    mat4 projection = mat4(1.0f);
    projection[0][0] = 2.0f / (right - left);
    projection[1][1] = 2.0f / (top - bottom);
    projection[2][2] = -2.0f / (far - near);
    projection[3][3] = 1.0f;
    projection[3][0] = -(right + left) / (right - left);
    projection[3][1] = -(top + bottom) / (top - bottom);
    projection[3][2] = -(far + near) / (far - near);
    return projection;
}

mat4 PerspectiveProjection(float left, float right, float bottom,
                            float top, float near, float far) {
    assert(right > left);
    assert(far > near);
    assert(top > bottom);
    mat4 projection = mat4(1.0f);

    projection[0][0] = 2.0f*near / (right - left);
    projection[1][1] = 2.0f*near / (top - bottom);
    projection[2][0] = (right+left) / (right-left);
    projection[2][1] = (top+bottom) / (top - bottom);
    projection[2][2] = -(far+near) / (far - near);
    projection[2][3] = -1.0f;
    projection[3][2] = -(2.0f*far*near) / (far - near);
    projection[3][3] = 0.0f;
    return projection;
}

mat4 LookAt(vec3 eye, vec3 center, vec3 up) {
    // we need a function that converts from world coordinates into camera coordiantes.
    //
    // cam coords to world coords is given by:
    // X_world = R * X_cam + eye
    //
    // inverting it leads to:
    //
    // X_cam = R^T * X_world - R^T * eye
    //
    // or as a homogeneous matrix:
    // [ r_00 r_10 r_20 -r_0*eye
    //   r_01 r_11 r_21 -r_1*eye
    //   r_02 r_12 r_22 -r_2*eye
    //      0    0    0        1 ]

    vec3 z_cam = normalize(eye - center);
    vec3 x_cam = normalize(cross(up, z_cam));
    vec3 y_cam = cross(z_cam, x_cam);

    mat3 R(x_cam, y_cam, z_cam);
    R = transpose(R);

    mat4 look_at(vec4(R[0], 0.0f),
                 vec4(R[1], 0.0f),
                 vec4(R[2], 0.0f),
                 vec4(-R * (eye), 1.0f));
    return look_at;
}

void Init() {
    // sets background color
    glClearColor(0.937, 0.937, 0.937 /*gray*/, 1.0 /*solid*/);

    cube.Init();
    quad.Init();

    // enable depth test.
    glEnable(GL_DEPTH_TEST);

    view_matrix = LookAt(vec3(2.0f, 2.0f, 4.0f),
                         vec3(0.0f, 0.0f, 0.0f),
                         vec3(0.0f, 1.0f, 0.0f));

    quad_model_matrix = translate(mat4(1.0f), vec3(0.0f, -0.25f, 0.0f));
    quad_model_matrix = rotate(quad_model_matrix, (float)M_PI * 0.5f,
                               -vec3(1.0f, 0.0f, 0.0f));
}

// gets called for every frame.
void Display() {
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    // scaling matrix to scale the cube down to a reasonable size.
    mat4 cube_scale = scale(mat4(1.0f), vec3(0.25f));
    const float time = glfwGetTime();

    mat4 cube_trafo = mat4(1.0f);

    //mat4 cube_trafo = rotate(mat4(1.0f), 2.0f*time, vec3(0.0f, 1.0f, 0.0f));
    cube_trafo = translate(cube_trafo, vec3(0.75f, 0.0f, 0.0f));
    //cube_trafo = rotate(cube_trafo, 2.0f*time, vec3(0.0f, 1.0f, 0.0f));

    // mat4 cube_trafo = Affine3f(AngleAxisf(time, vec3::UnitY())).matrix();
    mat4 cube_model_matrix = cube_trafo * cube_scale;


    cube.Draw(cube_model_matrix, view_matrix, projection_matrix);

    // draw a quad on the ground.
    quad.Draw(quad_model_matrix, view_matrix, projection_matrix);

    // check_error_gl();
}

// Gets called when the windows/framebuffer is resized.
void SetupProjection(GLFWwindow* window, int width, int height) {
    window_width = width;
    window_height = height;
    cout << "Window has been resized to " << window_width << "x"
         << window_height << "." << endl;
    glViewport(0, 0, window_width, window_height);


    GLfloat top = 1.0f;
    GLfloat right = (GLfloat)window_width / window_height * top;
    //projection_matrix = OrthographicProjection(-right, right, -top, top, -10.0f, 10.0f);
    projection_matrix = PerspectiveProjection(-right, right, -top, top, 3.0f, -3.0f);
}

void ErrorCallback(int error, const char* description) {
    fputs(description, stderr);
}

void KeyCallback(GLFWwindow* window, int key, int scancode, int action, int mods) {
    if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS) {
        glfwSetWindowShouldClose(window, GL_TRUE);
    }
}

int main(int argc, char *argv[]) {
    // GLFW Initialization
    if(!glfwInit()) {
        fprintf(stderr, "Failed to initialize GLFW\n");
        return EXIT_FAILURE;
    }

    glfwSetErrorCallback(ErrorCallback);

    // hint GLFW that we would like an OpenGL 3 context (at least)
    // http://www.glfw.org/faq.html#how-do-i-create-an-opengl-30-context
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 2);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    // attempt to open the window: fails if required version unavailable
    // note some Intel GPUs do not support OpenGL 3.2
    // note update the driver of your graphic card
    GLFWwindow* window = glfwCreateWindow(window_width, window_height,
                                          "3D Transformations", NULL, NULL);
    if(!window) {
        glfwTerminate();
        return EXIT_FAILURE;
    }

    // makes the OpenGL context of window current on the calling thread
    glfwMakeContextCurrent(window);

    // set the callback for escape key
    glfwSetKeyCallback(window, KeyCallback);

    // set the framebuffer resize callback
    glfwSetFramebufferSizeCallback(window, SetupProjection);

    // GLEW Initialization (must have a context)
    // https://www.opengl.org/wiki/OpenGL_Loading_Library
    glewExperimental = GL_TRUE; // fixes glew error (see above link)
    if(glewInit() != GLEW_NO_ERROR) {
        fprintf( stderr, "Failed to initialize GLEW\n");
        return EXIT_FAILURE;
    }

    cout << "OpenGL" << glGetString(GL_VERSION) << endl;

    // initialize our OpenGL program
    Init();

    // update the window size with the framebuffer size (on hidpi screens the
    // framebuffer is bigger)
    glfwGetFramebufferSize(window, &window_width, &window_height);
    SetupProjection(window, window_width, window_height);

    // render loop
    while(!glfwWindowShouldClose(window)){
        Display();
        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    quad.Cleanup();
    cube.Cleanup();

    // close OpenGL window and terminate GLFW
    glfwDestroyWindow(window);
    glfwTerminate();
    return EXIT_SUCCESS;
}
