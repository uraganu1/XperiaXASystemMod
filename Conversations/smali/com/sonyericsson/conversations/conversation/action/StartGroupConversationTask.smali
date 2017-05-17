.class public Lcom/sonyericsson/conversations/conversation/action/StartGroupConversationTask;
.super Landroid/os/AsyncTask;
.source "StartGroupConversationTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/conversations/util/AsyncTaskResult",
        "<",
        "Lcom/sonymobile/jms/conversation/ImConversationId;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mContactNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;

.field private final mSubject:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/conversations/conversation/action/StartGroupConversationTask;->DEBUG:Z

    .line 22
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;)V
    .locals 0
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "contactNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupConversationTask;->mContactNumbers:Ljava/util/List;

    .line 38
    iput-object p2, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupConversationTask;->mSubject:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupConversationTask;->mListener:Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;

    .line 36
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/conversations/util/AsyncTaskResult;
    .locals 5
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/sonyericsson/conversations/util/AsyncTaskResult",
            "<",
            "Lcom/sonymobile/jms/conversation/ImConversationId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/conversation/action/StartGroupConversationTask;->sendGroupInvite()Lcom/sonyericsson/conversations/util/AsyncTaskResult;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sonymobile/jms/permission/ImPermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    new-instance v4, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    invoke-direct {v4, v0}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;-><init>(Ljava/lang/Exception;)V

    return-object v4

    .line 55
    .end local v0    # "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    :catch_1
    move-exception v3

    .line 56
    .local v3, "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    new-instance v4, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    invoke-direct {v4, v3}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;-><init>(Ljava/lang/Exception;)V

    return-object v4

    .line 53
    .end local v3    # "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    :catch_2
    move-exception v1

    .line 54
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    new-instance v4, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    invoke-direct {v4, v1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;-><init>(Ljava/lang/Exception;)V

    return-object v4

    .line 51
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_3
    move-exception v2

    .line 52
    .local v2, "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    new-instance v4, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    invoke-direct {v4, v2}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;-><init>(Ljava/lang/Exception;)V

    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/conversation/action/StartGroupConversationTask;->doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonyericsson/conversations/util/AsyncTaskResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/util/AsyncTaskResult",
            "<",
            "Lcom/sonymobile/jms/conversation/ImConversationId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "result":Lcom/sonyericsson/conversations/util/AsyncTaskResult;, "Lcom/sonyericsson/conversations/util/AsyncTaskResult<Lcom/sonymobile/jms/conversation/ImConversationId;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupConversationTask;->mListener:Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;->onStartConversationException(Ljava/lang/Exception;)V

    .line 63
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupConversationTask;->mListener:Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-interface {v1, v0}, Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;->onStartConversationSuccessful(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p1, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/conversation/action/StartGroupConversationTask;->onPostExecute(Lcom/sonyericsson/conversations/util/AsyncTaskResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupConversationTask;->mListener:Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;->onPreConversationStart()V

    .line 43
    return-void
.end method

.method public sendGroupInvite()Lcom/sonyericsson/conversations/util/AsyncTaskResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonyericsson/conversations/util/AsyncTaskResult",
            "<",
            "Lcom/sonymobile/jms/conversation/ImConversationId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/permission/ImPermissionDeniedException;,
            Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupConversationTask;->mContactNumbers:Ljava/util/List;

    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupConversationTask;->mSubject:Ljava/lang/String;

    .line 75
    invoke-interface {v1, v2, v3}, Lcom/sonymobile/jms/conversation/ImConversationApi;->startImGroupConversation(Ljava/util/Collection;Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v0

    .line 77
    .local v0, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    sget-boolean v1, Lcom/sonyericsson/conversations/conversation/action/StartGroupConversationTask;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 78
    const-string/jumbo v1, "Group conversation \'"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    .line 79
    const-string/jumbo v2, "\' initialized with subject \'"

    .line 78
    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupConversationTask;->mSubject:Ljava/lang/String;

    .line 78
    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    .line 79
    const-string/jumbo v2, "\'"

    .line 78
    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 81
    :cond_0
    new-instance v1, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    invoke-direct {v1, v0}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
