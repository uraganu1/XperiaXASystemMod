.class Lcom/android/settings/CryptKeeperConfirm$1;
.super Ljava/lang/Object;
.source "CryptKeeperConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperConfirm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/CryptKeeperConfirm;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 124
    return-void

    .line 128
    :cond_0
    iget-object v9, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-static {v9}, Lcom/android/settings/CryptKeeperConfirm;->-get0(Lcom/android/settings/CryptKeeperConfirm;)Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 129
    iget-object v9, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-static {v9}, Lcom/android/settings/CryptKeeperConfirm;->-get0(Lcom/android/settings/CryptKeeperConfirm;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/content/Intent;

    .line 130
    const-string/jumbo v11, "notify.deskclock.reset.alarms"

    .line 129
    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    const/4 v11, 0x0

    .line 129
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 149
    :cond_1
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v9, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v9}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 151
    .local v7, "utils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v9

    .line 152
    const/4 v10, 0x0

    .line 150
    invoke-virtual {v7, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 153
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 154
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v9

    .line 155
    const/4 v10, 0x0

    .line 154
    invoke-virtual {v7, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 157
    :cond_2
    iget-object v9, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v9}, Lcom/android/settings/CryptKeeperConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 158
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    const-string/jumbo v9, "type"

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 159
    .local v6, "type":I
    :goto_0
    const/4 v9, 0x1

    if-eq v6, v9, :cond_4

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v7, v9}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 161
    iget-object v9, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v9}, Lcom/android/settings/CryptKeeperConfirm;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 162
    const-string/jumbo v10, "show_password"

    .line 163
    const/4 v11, 0x1

    .line 161
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 164
    .local v8, "value":I
    if-eqz v8, :cond_5

    const/4 v9, 0x1

    :goto_2
    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    .line 166
    new-instance v3, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v9}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-class v10, Lcom/android/settings/CryptKeeperConfirm$Blank;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v3, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v9}, Lcom/android/settings/CryptKeeperConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 168
    iget-object v9, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v9, v3}, Lcom/android/settings/CryptKeeperConfirm;->startActivity(Landroid/content/Intent;)V

    .line 173
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v9, "somc.intent.action.ACTION_ENCRYPTION_TRIGGERED"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v2, "encrIntent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v9}, Lcom/android/settings/CryptKeeperConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 176
    iget-object v9, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v9}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v9

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v2, v10}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 180
    :try_start_0
    const-string/jumbo v9, "mount"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 181
    .local v5, "service":Landroid/os/IBinder;
    invoke-static {v5}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 182
    .local v4, "mountService":Landroid/os/storage/IMountService;
    const-string/jumbo v9, "SystemLocale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v4    # "mountService":Landroid/os/storage/IMountService;
    .end local v5    # "service":Landroid/os/IBinder;
    :goto_3
    return-void

    .line 158
    .end local v2    # "encrIntent":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "type":I
    .end local v8    # "value":I
    :cond_3
    const/4 v6, -0x1

    .restart local v6    # "type":I
    goto :goto_0

    .line 159
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 164
    .restart local v8    # "value":I
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 183
    .restart local v2    # "encrIntent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "CryptKeeperConfirm"

    const-string/jumbo v10, "Error storing locale for decryption UI"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
