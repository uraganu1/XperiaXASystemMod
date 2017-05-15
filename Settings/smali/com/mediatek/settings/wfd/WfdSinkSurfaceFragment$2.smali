.class Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$2;
.super Ljava/lang/Object;
.source "WfdSinkSurfaceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->requestFullScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

.field final synthetic val$newUiOptions:I


# direct methods
.method constructor <init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;
    .param p2, "val$newUiOptions"    # I

    .prologue
    .line 343
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$2;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    iput p2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$2;->val$newUiOptions:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 347
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

    const-string/jumbo v2, "request full screen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$2;->val$newUiOptions:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$2;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get6(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$2;->val$newUiOptions:I

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setSystemUiVisibility(I)V

    .line 346
    return-void
.end method
