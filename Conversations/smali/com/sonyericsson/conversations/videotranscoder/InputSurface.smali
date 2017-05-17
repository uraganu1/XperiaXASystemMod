.class Lcom/sonyericsson/conversations/videotranscoder/InputSurface;
.super Ljava/lang/Object;
.source "InputSurface.java"


# instance fields
.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mSurface:Landroid/view/Surface;

    .line 55
    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/videotranscoder/EGLException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 167
    .local v1, "failed":Z
    :goto_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .local v0, "error":I
    const/16 v2, 0x3000

    if-eq v0, v2, :cond_0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 169
    const/4 v1, 0x1

    goto :goto_0

    .line 171
    :cond_0
    if-eqz v1, :cond_1

    .line 172
    new-instance v2, Lcom/sonyericsson/conversations/videotranscoder/EGLException;

    const-string/jumbo v3, "EGL error encountered (see log)"

    invoke-direct {v2, v3}, Lcom/sonyericsson/conversations/videotranscoder/EGLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_1
    return-void
.end method


# virtual methods
.method public makeCurrent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/videotranscoder/EGLException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/sonyericsson/conversations/videotranscoder/EGLException;

    const-string/jumbo v1, "Failed to set current context"

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/videotranscoder/EGLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    return-void
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 119
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 118
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 130
    iput-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 131
    iput-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 132
    iput-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 134
    iput-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mSurface:Landroid/view/Surface;

    .line 115
    return-void
.end method

.method public setPresentationTime(J)V
    .locals 3
    .param p1, "nsecs"    # J

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 157
    return-void
.end method

.method public setupEgl()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/videotranscoder/EGLException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x3038

    const/4 v12, 0x2

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v4, :cond_0

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unable to get EGL14 display"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    new-array v10, v12, [I

    .line 69
    .local v10, "version":[I
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v10, v2, v10, v11}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iput-object v5, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 71
    new-instance v0, Lcom/sonyericsson/conversations/videotranscoder/EGLException;

    const-string/jumbo v2, "Unable to initialize EGL14"

    invoke-direct {v0, v2}, Lcom/sonyericsson/conversations/videotranscoder/EGLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    const/16 v0, 0xb

    new-array v1, v0, [I

    .local v1, "attribList":[I
    fill-array-data v1, :array_0

    .line 81
    new-array v3, v11, [Landroid/opengl/EGLConfig;

    .line 82
    .local v3, "configs":[Landroid/opengl/EGLConfig;
    new-array v6, v11, [I

    .line 83
    .local v6, "numConfigs":[I
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    new-instance v0, Lcom/sonyericsson/conversations/videotranscoder/EGLException;

    const-string/jumbo v2, "Unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v2}, Lcom/sonyericsson/conversations/videotranscoder/EGLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    const/16 v0, 0x3098

    .line 89
    filled-new-array {v0, v12, v13}, [I

    move-result-object v8

    .line 92
    .local v8, "attrib_list":[I
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v4, v5, v8, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 94
    const-string/jumbo v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->checkEglError(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_3

    .line 96
    new-instance v0, Lcom/sonyericsson/conversations/videotranscoder/EGLException;

    const-string/jumbo v2, "Unable to create context"

    invoke-direct {v0, v2}, Lcom/sonyericsson/conversations/videotranscoder/EGLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_3
    new-array v9, v11, [I

    .line 101
    aput v13, v9, v2

    .line 103
    .local v9, "surfaceAttribs":[I
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    iget-object v5, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mSurface:Landroid/view/Surface;

    invoke-static {v0, v4, v5, v9, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 105
    const-string/jumbo v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->checkEglError(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_4

    .line 107
    new-instance v0, Lcom/sonyericsson/conversations/videotranscoder/EGLException;

    const-string/jumbo v2, "Unable to create a window surface"

    invoke-direct {v0, v2}, Lcom/sonyericsson/conversations/videotranscoder/EGLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_4
    return-void

    .line 76
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data
.end method

.method public swapBuffers()Z
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method
