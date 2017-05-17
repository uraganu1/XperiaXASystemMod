.class Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$1;
.super Ljava/lang/Object;
.source "InlineCameraFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->setupScreenAndTexture()V

    .line 169
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get1(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-wrap1(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)V

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-set1(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Z)Z

    .line 175
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 189
    return-void
.end method
