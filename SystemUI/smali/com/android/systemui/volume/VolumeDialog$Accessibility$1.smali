.class Lcom/android/systemui/volume/VolumeDialog$Accessibility$1;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog$Accessibility;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialog$Accessibility;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility$1;->this$1:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1119
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialog;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onViewAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility$1;->this$1:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->-wrap0(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)V

    .line 1118
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1113
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialog;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onViewDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_0
    return-void
.end method
