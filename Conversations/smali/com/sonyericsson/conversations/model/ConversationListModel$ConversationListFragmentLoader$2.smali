.class Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$2;
.super Ljava/lang/Object;
.source "ConversationListModel.java"

# interfaces
.implements Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;
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
    .line 157
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$2;->this$1:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldIgnoreConversationItem(Lcom/sonyericsson/conversations/conversation/ConversationItem;)Z
    .locals 1
    .param p1, "conversationItem"    # Lcom/sonyericsson/conversations/conversation/ConversationItem;

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method
