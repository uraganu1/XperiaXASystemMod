.class public Lcom/android/systemui/recents/RecentsUserEventProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RecentsUserEventProxyReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 40
    invoke-static {p1}, Lcom/android/systemui/recents/Recents;->getInstanceAndStartIfNeeded(Landroid/content/Context;)Lcom/android/systemui/recents/Recents;

    move-result-object v0

    .line 41
    .local v0, "recents":Lcom/android/systemui/recents/Recents;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.android.systemui.recents.action.SHOW_RECENTS_FOR_USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    const-string/jumbo v3, "triggeredFromAltTab"

    .line 43
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 45
    .local v1, "triggeredFromAltTab":Z
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/Recents;->showRecentsInternal(Z)V

    .line 39
    .end local v1    # "triggeredFromAltTab":Z
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string/jumbo v4, "com.android.systemui.recents.action.HIDE_RECENTS_FOR_USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 50
    const-string/jumbo v3, "triggeredFromAltTab"

    .line 49
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 52
    .restart local v1    # "triggeredFromAltTab":Z
    const-string/jumbo v3, "triggeredFromHomeKey"

    .line 51
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 53
    .local v2, "triggeredFromHome":Z
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/Recents;->hideRecentsInternal(ZZ)V

    goto :goto_0

    .line 41
    .end local v1    # "triggeredFromAltTab":Z
    .end local v2    # "triggeredFromHome":Z
    :cond_2
    const-string/jumbo v4, "com.android.systemui.recents.action.TOGGLE_RECENTS_FOR_USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    invoke-virtual {v0}, Lcom/android/systemui/recents/Recents;->toggleRecentsInternal()V

    goto :goto_0

    .line 41
    :cond_3
    const-string/jumbo v4, "com.android.systemui.recents.action.PRELOAD_RECENTS_FOR_USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 60
    invoke-virtual {v0}, Lcom/android/systemui/recents/Recents;->preloadRecentsInternal()V

    goto :goto_0

    .line 41
    :cond_4
    const-string/jumbo v4, "com.android.systemui.recents.action.CONFIG_CHANGED_FOR_USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/android/systemui/recents/Recents;->configurationChanged()V

    goto :goto_0
.end method
