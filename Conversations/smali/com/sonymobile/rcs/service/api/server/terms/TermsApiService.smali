.class public Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;
.super Lcom/sonymobile/rcs/service/api/client/terms/ITermsApi$Stub;
.source "TermsApiService.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/client/terms/ITermsApi$Stub;-><init>()V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 52
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Terms API is loaded"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public acceptTerms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 80
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testIms()V

    .line 84
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getTermsConditionsService()Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->acceptTerms(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Accept terms"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    :goto_1
    new-instance v1, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Unexpected error"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public close()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public receiveSystemRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "remote"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.rcs.TERMS_SIP_RECONFIGURE_NOTIFICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "mBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "id"

    .line 218
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    .line 219
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "text"

    .line 220
    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "action"

    const-string/jumbo v3, "com.sonymobile.rcs.TERMS_SIP_RECONFIGURE_NOTIFICATION"

    .line 221
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "EUCR"

    .line 222
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.sonymobile.rcs.provisioning.DIALOG_DATA"

    .line 223
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 224
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 226
    return-void
.end method

.method public receiveTermsAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "remote"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.rcs.TERMS_SIP_ACK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "mBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "id"

    .line 170
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "status"

    .line 171
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "subject"

    .line 172
    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "text"

    .line 173
    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "action"

    const-string/jumbo v3, "com.sonymobile.rcs.TERMS_SIP_ACK"

    .line 174
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "EUCR"

    .line 175
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.sonymobile.rcs.provisioning.DIALOG_DATA"

    .line 176
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 177
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 178
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 179
    return-void
.end method

.method public receiveTermsRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "remote"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "pin"    # Z
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "acceptButtonLabel"    # Ljava/lang/String;
    .param p8, "rejectButtonLabel"    # Ljava/lang/String;
    .param p9, "timeout"    # I

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.rcs.TERMS_SIP_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "mBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "id"

    .line 142
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    .line 143
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pin"

    .line 144
    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "subject"

    .line 145
    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "text"

    .line 146
    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "acceptButtonLabel"

    .line 147
    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "rejectButtonLabel"

    .line 148
    invoke-virtual {v1, v2, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "timeout"

    .line 149
    invoke-virtual {v1, v2, p9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "action"

    const-string/jumbo v3, "com.sonymobile.rcs.TERMS_SIP_REQUEST"

    .line 150
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "EUCR"

    .line 151
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.sonymobile.rcs.provisioning.DIALOG_DATA"

    .line 152
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 153
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    return-void
.end method

.method public receiveUserNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "remote"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "okButtonLabel"    # Ljava/lang/String;

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.rcs.TERMS_SIP_USER_NOTIFICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "mBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "id"

    .line 195
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "subject"

    .line 196
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "text"

    .line 197
    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "okButtonLabel"

    .line 198
    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "action"

    const-string/jumbo v3, "com.sonymobile.rcs.TERMS_SIP_USER_NOTIFICATION"

    .line 199
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "EUCR"

    .line 200
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.sonymobile.rcs.provisioning.DIALOG_DATA"

    .line 201
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 202
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 203
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 204
    return-void
.end method

.method public rejectTerms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 110
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testIms()V

    .line 114
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getTermsConditionsService()Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->rejectTerms(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Reject terms"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    :goto_1
    new-instance v1, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Unexpected error"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
