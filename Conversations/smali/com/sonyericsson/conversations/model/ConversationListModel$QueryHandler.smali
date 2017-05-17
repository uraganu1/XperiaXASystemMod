.class Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConversationListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/ConversationListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/model/ConversationListModel;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/model/ConversationListModel;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    .line 417
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 416
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    const/4 v5, 0x0

    .line 423
    if-lez p3, :cond_0

    .line 424
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v0

    .line 426
    .local v0, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->clearConversationsCache()V

    .line 428
    .end local v0    # "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    const-string/jumbo v2, "ConversationListModel_delete_obsolete_threads_complete"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 429
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 428
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/model/ConversationListModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    return-void
.end method
