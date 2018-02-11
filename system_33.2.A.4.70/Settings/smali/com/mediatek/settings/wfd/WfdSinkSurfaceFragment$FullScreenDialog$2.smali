.class Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$2;
.super Ljava/lang/Object;
.source "WfdSinkSurfaceFragment.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$2;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@M_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSystemUiVisibilityChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    if-nez p1, :cond_1

    .line 283
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$2;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;

    iget-object v0, v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get6(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->-wrap2(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;Z)V

    .line 285
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$2;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;

    iget-object v0, v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get6(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->-get0(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$2;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;

    iget-object v0, v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$2;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;

    invoke-static {v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->-get0(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-wrap4(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;I)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$2;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;

    iget-object v0, v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get6(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->-wrap2(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;Z)V

    goto :goto_0
.end method
