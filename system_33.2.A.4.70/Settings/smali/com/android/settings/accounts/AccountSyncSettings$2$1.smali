.class Lcom/android/settings/accounts/AccountSyncSettings$2$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSyncSettings$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/accounts/AccountSyncSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/accounts/AccountSyncSettings$2;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$2$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings$2$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$2;

    iget-object v4, v4, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v4}, Lcom/android/settings/accounts/AccountSyncSettings;->isResumed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    const/4 v3, 0x1

    .line 111
    .local v3, "failed":Z
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 112
    const-string/jumbo v5, "booleanResult"

    .line 111
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    const/4 v3, 0x0

    .line 122
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings$2$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$2;

    iget-object v4, v4, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v4}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 123
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings$2$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$2;

    iget-object v4, v4, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v4}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 126
    :cond_2
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings$2$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$2;

    iget-object v4, v4, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v4}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    .line 104
    :goto_1
    return-void

    .line 124
    :cond_3
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings$2$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$2;

    iget-object v4, v4, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    const/16 v5, 0x65

    invoke-static {v4, v5}, Lcom/android/settings/accounts/AccountSyncSettings;->-wrap1(Lcom/android/settings/accounts/AccountSyncSettings;I)V

    goto :goto_1

    .line 115
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/accounts/OperationCanceledException;
    goto :goto_0

    .line 117
    .end local v1    # "e":Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    .line 119
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .local v0, "e":Landroid/accounts/AuthenticatorException;
    goto :goto_0
.end method
