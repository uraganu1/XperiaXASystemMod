.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZLcom/android/systemui/statusbar/phone/ActivityStarter$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$callback:Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Intent;ZZLcom/android/systemui/statusbar/phone/ActivityStarter$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "val$intent"    # Landroid/content/Intent;
    .param p3, "val$keyguardShowing"    # Z
    .param p4, "val$afterKeyguardGone"    # Z
    .param p5, "val$callback"    # Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;

    .prologue
    .line 3337
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$intent:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$keyguardShowing:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$afterKeyguardGone:Z

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$callback:Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 3339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/assist/AssistManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 3340
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$intent:Landroid/content/Intent;

    .line 3341
    const/high16 v1, 0x14000000

    .line 3340
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3342
    const/4 v13, -0x6

    .line 3344
    .local v13, "result":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3345
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 3346
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$intent:Landroid/content/Intent;

    .line 3347
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$intent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 3349
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 3345
    const/4 v1, 0x0

    .line 3348
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x10000000

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 3344
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 3353
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 3354
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$keyguardShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$afterKeyguardGone:Z

    if-eqz v0, :cond_2

    :cond_0
    move v0, v14

    .line 3353
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->overrideActivityPendingAppTransition(Z)V

    .line 3355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$callback:Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;

    if-eqz v0, :cond_1

    .line 3356
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$callback:Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;

    invoke-interface {v0, v13}, Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;->onActivityStarted(I)V

    .line 3338
    :cond_1
    return-void

    .line 3350
    :catch_0
    move-exception v12

    .line 3351
    .local v12, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "PhoneStatusBar"

    const-string/jumbo v1, "Unable to start activity"

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3354
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
