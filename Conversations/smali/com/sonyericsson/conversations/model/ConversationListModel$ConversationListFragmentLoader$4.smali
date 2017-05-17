.class Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$4;
.super Ljava/lang/Object;
.source "ConversationListModel.java"

# interfaces
.implements Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->loadInBackgroundXMS(Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$4;->this$1:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldIgnoreConversationItem(Lcom/sonyericsson/conversations/conversation/ConversationItem;)Z
    .locals 1
    .param p1, "conversationItem"    # Lcom/sonyericsson/conversations/conversation/ConversationItem;

    .prologue
    .line 369
    iget-object v0, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
