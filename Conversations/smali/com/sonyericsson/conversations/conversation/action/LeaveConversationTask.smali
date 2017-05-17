.class public Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;
.super Landroid/os/AsyncTask;
.source "LeaveConversationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask$LeaveConversationTaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field private final mImGroupConversationId:Lcom/sonymobile/jms/conversation/ImGroupConversationId;

.field private mListener:Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask$LeaveConversationTaskListener;


# direct methods
.method public constructor <init>(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .locals 0
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;->mImGroupConversationId:Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .line 20
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 36
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;->mImGroupConversationId:Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .line 36
    invoke-interface {v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationApi;->leaveImGroupConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    const/4 v1, 0x0

    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;->mListener:Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask$LeaveConversationTaskListener;

    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;->mImGroupConversationId:Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask$LeaveConversationTaskListener;->onFailedConversationLeave(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Ljava/lang/Exception;)V

    .line 45
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;->mListener:Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask$LeaveConversationTaskListener;

    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;->mImGroupConversationId:Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask$LeaveConversationTaskListener;->onSuccessfulConversationLeave(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method

.method public registerListener(Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask$LeaveConversationTaskListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask$LeaveConversationTaskListener;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;->mListener:Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask$LeaveConversationTaskListener;

    .line 29
    return-void
.end method
