.class Lcom/android/systemui/statusbar/BaseStatusBar$14$1;
.super Ljava/lang/Thread;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$14;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$14;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$intent:Landroid/app/PendingIntent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$14;ZZLandroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/BaseStatusBar$14;
    .param p2, "val$keyguardShowing"    # Z
    .param p3, "val$afterKeyguardGone"    # Z
    .param p4, "val$intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1539
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$14;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$afterKeyguardGone:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$intent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1543
    :try_start_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$keyguardShowing:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$afterKeyguardGone:Z

    if-eqz v3, :cond_3

    .line 1552
    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1557
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1565
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1566
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$14;

    iget-object v3, v3, Lcom/android/systemui/statusbar/BaseStatusBar$14;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v3}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 1567
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$14;

    iget-object v3, v3, Lcom/android/systemui/statusbar/BaseStatusBar$14;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$keyguardShowing:Z

    if-eqz v4, :cond_1

    .line 1568
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$afterKeyguardGone:Z

    if-eqz v4, :cond_4

    .line 1567
    :cond_1
    :goto_3
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideActivityPendingAppTransition(Z)V

    .line 1541
    :cond_2
    return-void

    .line 1544
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1553
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 1558
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1561
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sending intent failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1568
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_4
    const/4 v2, 0x1

    goto :goto_3
.end method
