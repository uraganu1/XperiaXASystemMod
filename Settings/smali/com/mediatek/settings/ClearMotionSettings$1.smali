.class Lcom/mediatek/settings/ClearMotionSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ClearMotionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/ClearMotionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/ClearMotionSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/ClearMotionSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/settings/ClearMotionSettings;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mediatek/settings/ClearMotionSettings$1;->this$0:Lcom/mediatek/settings/ClearMotionSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context1"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    const-string/jumbo v0, "@M_ClearMotionSettingsLog"

    const-string/jumbo v1, "mUpdateClearMotionStatusReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings$1;->this$0:Lcom/mediatek/settings/ClearMotionSettings;

    invoke-static {v0}, Lcom/mediatek/settings/ClearMotionSettings;->-wrap3(Lcom/mediatek/settings/ClearMotionSettings;)V

    .line 77
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings$1;->this$0:Lcom/mediatek/settings/ClearMotionSettings;

    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings$1;->this$0:Lcom/mediatek/settings/ClearMotionSettings;

    invoke-static {v1}, Lcom/mediatek/settings/ClearMotionSettings;->-get0(Lcom/mediatek/settings/ClearMotionSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/settings/ClearMotionSettings;->-wrap2(Lcom/mediatek/settings/ClearMotionSettings;Z)V

    .line 78
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings$1;->this$0:Lcom/mediatek/settings/ClearMotionSettings;

    invoke-static {v0}, Lcom/mediatek/settings/ClearMotionSettings;->-wrap0(Lcom/mediatek/settings/ClearMotionSettings;)V

    .line 73
    return-void
.end method
