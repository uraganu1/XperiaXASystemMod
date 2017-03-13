.class Lcom/android/systemui/volume/VolumeDialog$3$1;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialog$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/volume/VolumeDialog$3;

    .prologue
    .line 976
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$3$1;->this$1:Lcom/android/systemui/volume/VolumeDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$3$1;->this$1:Lcom/android/systemui/volume/VolumeDialog$3;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get3(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 980
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$3$1;->this$1:Lcom/android/systemui/volume/VolumeDialog$3;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get1(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$3$1;->this$1:Lcom/android/systemui/volume/VolumeDialog$3;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get1(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumeDialog$Callback;->onSettingsClicked()V

    .line 978
    :cond_0
    return-void
.end method
