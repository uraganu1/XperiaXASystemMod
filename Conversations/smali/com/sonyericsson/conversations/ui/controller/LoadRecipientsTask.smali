.class Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;
.super Landroid/os/AsyncTask;
.source "LoadRecipientsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask$LoadRecipientsForConversationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/Collection",
        "<",
        "Lcom/sonymobile/jms/contact/ImContactNumber;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

.field private final mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

.field private mLoadRecipientsForConversationListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask$LoadRecipientsForConversationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask$LoadRecipientsForConversationListener;)V
    .locals 1
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "listener"    # Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask$LoadRecipientsForConversationListener;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 54
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 56
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;->mLoadRecipientsForConversationListener:Ljava/lang/ref/WeakReference;

    .line 53
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "notUsed"    # [Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "notUsed":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;->doInBackground([Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/Collection;
    .locals 4
    .param p1, "notUsed"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-interface {v3}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v3

    .line 64
    invoke-interface {v2, v3}, Lcom/sonymobile/jms/conversation/ImConversationApi;->getRecipients(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 68
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 69
    .local v1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-object v1

    .line 71
    .end local v1    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "recipients"    # Ljava/lang/Object;

    .prologue
    .line 77
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "recipients":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;->onPostExecute(Ljava/util/Collection;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "recipients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;->mLoadRecipientsForConversationListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask$LoadRecipientsForConversationListener;

    .line 80
    .local v0, "listener":Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask$LoadRecipientsForConversationListener;
    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-interface {v0, p1, v1}, Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask$LoadRecipientsForConversationListener;->onRecipientsLoadedForConversation(Ljava/util/Collection;Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 77
    :cond_0
    return-void
.end method
