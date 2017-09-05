.class Lcom/android/systemui/volume/VolumeDialog$1;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeDialogController$Callbacks;


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
    .line 905
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 3

    .prologue
    .line 933
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->-get2(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 934
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog;->-get3(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 933
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 935
    .local v0, "configDiff":I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 936
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->-wrap10(Lcom/android/systemui/volume/VolumeDialog;)V

    .line 938
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->-wrap11(Lcom/android/systemui/volume/VolumeDialog;)V

    .line 939
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->-get16(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/SpTexts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/volume/SpTexts;->update()V

    .line 940
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->-get18(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/ZenFooter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/volume/ZenFooter;->onConfigurationChanged()V

    .line 932
    return-void
.end method

.method public onDismissRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->dismissH(I)V

    .line 912
    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get6(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 927
    return-void
.end method

.method public onScreenOff()V
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->dismissH(I)V

    .line 917
    return-void
.end method

.method public onShowRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->-wrap6(Lcom/android/systemui/volume/VolumeDialog;I)V

    .line 907
    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->-wrap7(Lcom/android/systemui/volume/VolumeDialog;I)V

    .line 958
    return-void
.end method

.method public onShowSilentHint()V
    .locals 3

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get15(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get4(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 951
    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 945
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get15(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get4(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 944
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->-wrap1(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 922
    return-void
.end method
