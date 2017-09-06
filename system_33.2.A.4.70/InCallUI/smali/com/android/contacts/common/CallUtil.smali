.class public Lcom/android/contacts/common/CallUtil;
.super Ljava/lang/Object;
.source "CallUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isVideoEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 99
    const-string/jumbo v5, "telecom"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 98
    check-cast v4, Landroid/telecom/TelecomManager;

    .line 100
    .local v4, "telecommMgr":Landroid/telecom/TelecomManager;
    if-nez v4, :cond_0

    .line 101
    return v6

    .line 104
    :cond_0
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    .line 105
    .local v3, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "accountHandle$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 106
    .local v1, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v4, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 107
    .local v0, "account":Landroid/telecom/PhoneAccount;
    if-eqz v0, :cond_1

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    const/4 v5, 0x1

    return v5

    .line 111
    .end local v0    # "account":Landroid/telecom/PhoneAccount;
    .end local v1    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_2
    return v6
.end method
