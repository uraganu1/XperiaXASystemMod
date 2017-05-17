.class public Lcom/sonyericsson/conversations/draft/SaveDraftTask;
.super Landroid/os/AsyncTask;
.source "SaveDraftTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;,
        Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftListener;
    }
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
.field private final mBodyText:Ljava/lang/String;

.field private final mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private final mParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private final mPriority:I

.field private mResult:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

.field private final mSaveDraftListener:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftListener;

.field private final mSubject:Ljava/lang/String;

.field private final mUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftListener;I)V
    .locals 1
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "bodyText"    # Ljava/lang/String;
    .param p6, "saveDraftListener"    # Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftListener;
    .param p7, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;",
            "Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p4, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .local p5, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 69
    iput-object p2, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mSubject:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mBodyText:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mUris:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mParticipants:Ljava/util/List;

    .line 73
    iput-object p6, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mSaveDraftListener:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftListener;

    .line 74
    iput p7, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mPriority:I

    .line 67
    return-void
.end method

.method private isContentEmpty()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mBodyText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveDraft()Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;
    .locals 8

    .prologue
    .line 97
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getDraftsManager()Lcom/sonyericsson/conversations/draft/DraftsApi;

    move-result-object v0

    .line 98
    .local v0, "draftsApi":Lcom/sonyericsson/conversations/draft/DraftsApi;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->isContentEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/draft/DraftsApi;->deleteDraft(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 101
    sget-object v1, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;->DELETED:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    return-object v1

    .line 104
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iget-object v2, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mSubject:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mBodyText:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mParticipants:Ljava/util/List;

    iget-object v5, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mUris:Ljava/util/List;

    .line 105
    iget v6, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mPriority:I

    .line 104
    invoke-interface/range {v0 .. v6}, Lcom/sonyericsson/conversations/draft/DraftsApi;->saveDraft(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)J
    :try_end_0
    .catch Lcom/sonyericsson/conversations/draft/DuplicateDraftException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    sget-object v1, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;->SAVED:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    return-object v1

    .line 106
    :catch_0
    move-exception v7

    .line 107
    .local v7, "e":Lcom/sonyericsson/conversations/draft/DuplicateDraftException;
    sget-object v1, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;->DUPLICATE:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    return-object v1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 78
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "arg0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->saveDraft()Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mResult:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 84
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mSaveDraftListener:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftListener;

    iget-object v1, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mResult:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftListener;->onDraftSaved(Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;)V

    .line 84
    return-void
.end method

.method public saveDraftSynchronously()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->saveDraft()Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mResult:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mSaveDraftListener:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftListener;

    iget-object v1, p0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->mResult:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftListener;->onDraftSaved(Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;)V

    .line 91
    return-void
.end method
