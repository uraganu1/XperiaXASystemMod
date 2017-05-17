.class Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$5;
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
    .line 373
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$5;->this$1:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldIgnoreConversationItem(Lcom/sonyericsson/conversations/conversation/ConversationItem;)Z
    .locals 6
    .param p1, "conversationItem"    # Lcom/sonyericsson/conversations/conversation/ConversationItem;

    .prologue
    const/4 v0, 0x0

    .line 376
    iget-object v1, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippet:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 377
    iget-wide v2, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDate:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 376
    :cond_0
    return v0
.end method
