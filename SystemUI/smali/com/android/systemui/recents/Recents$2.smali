.class Lcom/android/systemui/recents/Recents$2;
.super Landroid/content/BroadcastReceiver;
.source "Recents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/Recents;->onAnimationStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/Recents;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/Recents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/Recents;

    .prologue
    .line 954
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$2;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 957
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents$2;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$2;->this$0:Lcom/android/systemui/recents/Recents;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/Recents;->mStartAnimationTriggered:Z

    .line 959
    return-void

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$2;->this$0:Lcom/android/systemui/recents/Recents;

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/Recents$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/Recents$2$1;-><init>(Lcom/android/systemui/recents/Recents$2;)V

    .line 968
    const-wide/16 v2, 0x19

    .line 963
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 956
    return-void
.end method
