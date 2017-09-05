.class Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;
.super Ljava/lang/Thread;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$intent:Landroid/app/PendingIntent;

.field final synthetic val$keyguardShowing:Z

.field final synthetic val$notificationKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;ZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;
    .param p2, "val$keyguardShowing"    # Z
    .param p3, "val$afterKeyguardGone"    # Z
    .param p4, "val$intent"    # Landroid/app/PendingIntent;
    .param p5, "val$notificationKey"    # Ljava/lang/String;

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$afterKeyguardGone:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$intent:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$notificationKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1621
    :try_start_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$keyguardShowing:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$afterKeyguardGone:Z

    if-eqz v4, :cond_3

    .line 1630
    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1634
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$intent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_2

    .line 1636
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1644
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1645
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v4}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 1646
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$keyguardShowing:Z

    if-eqz v5, :cond_1

    .line 1647
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$afterKeyguardGone:Z

    if-eqz v5, :cond_4

    .line 1646
    :cond_1
    :goto_3
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideActivityPendingAppTransition(Z)V

    .line 1652
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v3, v3, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v3, v3, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$notificationKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1619
    :goto_4
    return-void

    .line 1622
    :cond_3
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1631
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 1637
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1640
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Sending contentIntent failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1647
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_4
    const/4 v3, 0x1

    goto :goto_3

    .line 1653
    :catch_2
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_4
.end method
