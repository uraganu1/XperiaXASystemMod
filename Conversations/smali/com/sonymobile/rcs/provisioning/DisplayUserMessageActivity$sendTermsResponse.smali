.class Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$sendTermsResponse;
.super Landroid/os/AsyncTask;
.source "DisplayUserMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sendTermsResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private eucrId:Ljava/lang/String;

.field private eucrResponse:Z

.field final synthetic this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "eucrId"    # Ljava/lang/String;
    .param p3, "isTermsAccepted"    # Z

    .prologue
    .line 489
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$sendTermsResponse;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 490
    iput-object p2, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$sendTermsResponse;->eucrId:Ljava/lang/String;

    .line 491
    iput-boolean p3, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$sendTermsResponse;->eucrResponse:Z

    .line 492
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 484
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$sendTermsResponse;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 496
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$sendTermsResponse;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    # getter for: Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v2}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->access$500(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 499
    :goto_0
    new-instance v1, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;-><init>()V

    .line 501
    .local v1, "termsApi":Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;
    :try_start_0
    iget-boolean v2, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$sendTermsResponse;->eucrResponse:Z

    if-nez v2, :cond_1

    .line 504
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$sendTermsResponse;->eucrId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;->rejectTerms(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/server/ServerApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_1
    return-object v5

    .line 497
    .end local v1    # "termsApi":Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$sendTermsResponse;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    # getter for: Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v2}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->access$500(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending TermsResponse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$sendTermsResponse;->eucrResponse:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$sendTermsResponse;->eucrId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 502
    .restart local v1    # "termsApi":Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$sendTermsResponse;->eucrId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/rcs/service/api/server/terms/TermsApiService;->acceptTerms(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/sonymobile/rcs/service/api/server/ServerApiException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 508
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Lcom/sonymobile/rcs/service/api/server/ServerApiException;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;->printStackTrace()V

    goto :goto_1
.end method
