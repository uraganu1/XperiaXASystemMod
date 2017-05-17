.class public Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;
.super Landroid/os/AsyncTask;
.source "InviteToConversationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask$InviteToConversationListener;
    }
.end annotation

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
.field private mContactNumbers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;"
        }
    .end annotation
.end field

.field private mImConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

.field private final mImGroupConversationId:Lcom/sonymobile/jms/conversation/ImGroupConversationId;

.field private mListener:Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask$InviteToConversationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->DEBUG:Z

    .line 24
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/List;Lcom/sonymobile/jms/conversation/ImGroupConversationId;Lcom/sonymobile/jms/conversation/ImConversationApi;Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask$InviteToConversationListener;)V
    .locals 0
    .param p2, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .param p3, "imConversationApi"    # Lcom/sonymobile/jms/conversation/ImConversationApi;
    .param p4, "listener"    # Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask$InviteToConversationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;",
            "Lcom/sonymobile/jms/conversation/ImGroupConversationId;",
            "Lcom/sonymobile/jms/conversation/ImConversationApi;",
            "Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask$InviteToConversationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "contactNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->mContactNumbers:Ljava/util/Collection;

    .line 51
    iput-object p3, p0, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->mImConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

    .line 52
    iput-object p2, p0, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->mImGroupConversationId:Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .line 53
    iput-object p4, p0, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->mListener:Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask$InviteToConversationListener;

    .line 49
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/conversations/util/AsyncTaskResult;
    .locals 3
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
    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->inviteImContacts()Lcom/sonyericsson/conversations/util/AsyncTaskResult;
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/ImPermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    new-instance v2, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    invoke-direct {v2, v0}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;-><init>(Ljava/lang/Exception;)V

    return-object v2

    .line 65
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_1
    move-exception v1

    .line 66
    .local v1, "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    new-instance v2, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    invoke-direct {v2, v1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;-><init>(Ljava/lang/Exception;)V

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    move-result-object v0

    return-object v0
.end method

.method public inviteImContacts()Lcom/sonyericsson/conversations/util/AsyncTaskResult;
    .locals 8
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
            Lcom/sonymobile/jms/permission/ImPermissionDeniedException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v6, p0, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->mImConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

    .line 84
    iget-object v7, p0, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->mImGroupConversationId:Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .line 83
    invoke-interface {v6, v7}, Lcom/sonymobile/jms/conversation/ImConversationApi;->getRecipients(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/util/Set;

    move-result-object v0

    .line 85
    .local v0, "existingRecipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v3, "invitees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    iget-object v6, p0, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->mContactNumbers:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "recipient$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 87
    .local v4, "recipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 90
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v4    # "recipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->mImConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

    iget-object v7, p0, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->mImGroupConversationId:Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    invoke-interface {v6, v7, v3}, Lcom/sonymobile/jms/conversation/ImConversationApi;->inviteImContacts(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Ljava/util/Collection;)V

    .line 93
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "invitee$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 94
    .local v1, "invitee":Lcom/sonymobile/jms/contact/ImContactNumber;
    sget-boolean v6, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 95
    const-string/jumbo v6, "Invited \'"

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' to im group conversation \'"

    invoke-virtual {v6, v7}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    .line 96
    iget-object v7, p0, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->mImGroupConversationId:Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .line 95
    invoke-virtual {v6, v7}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    .line 96
    const-string/jumbo v7, "\'"

    .line 95
    invoke-virtual {v6, v7}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    goto :goto_1

    .line 99
    .end local v1    # "invitee":Lcom/sonymobile/jms/contact/ImContactNumber;
    :cond_3
    new-instance v6, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    iget-object v7, p0, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->mImGroupConversationId:Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    invoke-direct {v6, v7}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;-><init>(Ljava/lang/Object;)V

    return-object v6
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
    .line 74
    .local p1, "result":Lcom/sonyericsson/conversations/util/AsyncTaskResult;, "Lcom/sonyericsson/conversations/util/AsyncTaskResult<Lcom/sonymobile/jms/conversation/ImConversationId;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->mListener:Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask$InviteToConversationListener;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask$InviteToConversationListener;->onInviteException(Ljava/lang/Exception;)V

    .line 73
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->mListener:Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask$InviteToConversationListener;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-interface {v1, v0}, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask$InviteToConversationListener;->onInviteSuccessful(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p1, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->onPostExecute(Lcom/sonyericsson/conversations/util/AsyncTaskResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->mListener:Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask$InviteToConversationListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask$InviteToConversationListener;->onPreInvite()V

    .line 57
    return-void
.end method
