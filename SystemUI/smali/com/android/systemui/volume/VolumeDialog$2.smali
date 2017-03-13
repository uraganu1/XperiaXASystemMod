.class Lcom/android/systemui/volume/VolumeDialog$2;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 963
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$2;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 966
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$2;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->-get7(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 967
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$2;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->-get8(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 968
    .local v0, "newExpand":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$2;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->-get3(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x3

    invoke-static {v1, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 969
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$2;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/VolumeDialog;->-wrap4(Lcom/android/systemui/volume/VolumeDialog;Z)V

    .line 965
    return-void

    .line 967
    .end local v0    # "newExpand":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "newExpand":Z
    goto :goto_0
.end method
