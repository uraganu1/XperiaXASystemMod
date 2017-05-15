.class Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$1;
.super Ljava/lang/Object;
.source "WfdSinkSurfaceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->addWfdSinkGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$1;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
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

    const-string/jumbo v1, "ok button onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$1;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-wrap3(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V

    .line 158
    return-void
.end method
