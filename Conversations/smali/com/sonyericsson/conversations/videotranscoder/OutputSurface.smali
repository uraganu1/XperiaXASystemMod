.class Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;
.super Ljava/lang/Object;
.source "OutputSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private mFrameAvailable:Z

.field private mFrameSyncObject:Ljava/lang/Object;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureRender:Lcom/sonyericsson/conversations/videotranscoder/TextureRender;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 45
    return-void
.end method


# virtual methods
.method public awaitNewImage()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/videotranscoder/GLException;
        }
    .end annotation

    .prologue
    .line 127
    const/16 v0, 0x7d0

    .line 128
    .local v0, "TIMEOUT_MS":I
    iget-object v3, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v3

    .line 129
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 134
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 135
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mFrameAvailable:Z

    if-nez v2, :cond_0

    .line 137
    new-instance v2, Lcom/sonyericsson/conversations/videotranscoder/GLException;

    const-string/jumbo v4, "Surface frame wait timed out"

    invoke-direct {v2, v4}, Lcom/sonyericsson/conversations/videotranscoder/GLException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :catch_0
    move-exception v1

    .line 141
    .local v1, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Lcom/sonyericsson/conversations/videotranscoder/GLException;

    invoke-direct {v2, v1}, Lcom/sonyericsson/conversations/videotranscoder/GLException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 144
    :cond_1
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mFrameAvailable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    .line 148
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mTextureRender:Lcom/sonyericsson/conversations/videotranscoder/TextureRender;

    const-string/jumbo v3, "before updateTexImage"

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 126
    return-void
.end method

.method public drawImage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/videotranscoder/GLException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mTextureRender:Lcom/sonyericsson/conversations/videotranscoder/TextureRender;

    iget-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->drawFrame(Landroid/graphics/SurfaceTexture;)V

    .line 159
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 167
    iget-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mFrameAvailable:Z

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 171
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mFrameAvailable:Z

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 164
    return-void
.end method

.method public prepareForDrawing()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mTextureRender:Lcom/sonyericsson/conversations/videotranscoder/TextureRender;

    iget-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->prepareForDrawing(Landroid/graphics/SurfaceTexture;)V

    .line 152
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 109
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mTextureRender:Lcom/sonyericsson/conversations/videotranscoder/TextureRender;

    .line 110
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 111
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 105
    return-void
.end method

.method public setup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/videotranscoder/GLException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mTextureRender:Lcom/sonyericsson/conversations/videotranscoder/TextureRender;

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mTextureRender:Lcom/sonyericsson/conversations/videotranscoder/TextureRender;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->surfaceCreated()V

    .line 77
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mTextureRender:Lcom/sonyericsson/conversations/videotranscoder/TextureRender;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 99
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 64
    return-void
.end method
