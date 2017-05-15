.class Lcom/mediatek/audioprofile/AudioProfileSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "AudioProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/AudioProfileSettings;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const-string/jumbo v1, "@M_Settings/AudioP"

    const-string/jumbo v2, "User switched"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->-set0(Lcom/mediatek/audioprofile/AudioProfileSettings;Z)Z

    .line 157
    :cond_0
    return-void
.end method
