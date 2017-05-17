.class final Lcom/sonyericsson/conversations/ui/EditorFragment$SendIsComposingTask;
.super Landroid/os/AsyncTask;
.source "EditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SendIsComposingTask"
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
.field private final mImConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

.field private final mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

.field private final mIsTyping:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/jms/conversation/ImConversationApi;Lcom/sonymobile/jms/conversation/ImConversationId;Z)V
    .locals 0
    .param p1, "imConversationApi"    # Lcom/sonymobile/jms/conversation/ImConversationApi;
    .param p2, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p3, "isTyping"    # Z

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$SendIsComposingTask;->mImConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

    .line 317
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$SendIsComposingTask;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 318
    iput-boolean p3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$SendIsComposingTask;->mIsTyping:Z

    .line 315
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 322
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment$SendIsComposingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 324
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$SendIsComposingTask;->mImConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

    .line 325
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$SendIsComposingTask;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$SendIsComposingTask;->mIsTyping:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;->IS_TYPING:Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

    .line 324
    :goto_0
    invoke-interface {v2, v3, v1}, Lcom/sonymobile/jms/conversation/ImConversationApi;->setComposingStatus(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;)V

    .line 331
    :goto_1
    const/4 v1, 0x0

    return-object v1

    .line 326
    :cond_0
    sget-object v1, Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;->IS_NOT_TYPING:Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v1, "Failed to set composing state for session \'"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$SendIsComposingTask;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    .line 329
    const-string/jumbo v2, "\'"

    .line 328
    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
