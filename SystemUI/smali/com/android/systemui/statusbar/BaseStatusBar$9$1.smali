.class Lcom/android/systemui/statusbar/BaseStatusBar$9$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$9;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$9;

.field final synthetic val$appUid:I

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$9;ZLandroid/content/Intent;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/BaseStatusBar$9;
    .param p2, "val$keyguardShowing"    # Z
    .param p3, "val$intent"    # Landroid/content/Intent;
    .param p4, "val$appUid"    # I

    .prologue
    .line 895
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$9;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$1;->val$keyguardShowing:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$1;->val$intent:Landroid/content/Intent;

    iput p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$1;->val$appUid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 898
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$1;->val$keyguardShowing:Z

    if-eqz v1, :cond_0

    .line 899
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    .line 902
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$9;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$9;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 903
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$1;->val$intent:Landroid/content/Intent;

    .line 902
    invoke-virtual {v1, v2}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 905
    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$1;->val$appUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 904
    const/4 v3, 0x0

    .line 902
    invoke-virtual {v1, v3, v2}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 906
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$9;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$9;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$1;->val$keyguardShowing:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideActivityPendingAppTransition(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :goto_0
    return-void

    .line 907
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
