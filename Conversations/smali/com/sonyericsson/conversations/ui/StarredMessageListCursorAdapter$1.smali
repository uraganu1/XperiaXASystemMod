.class Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;
.super Ljava/lang/Object;
.source "StarredMessageListCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

.field final synthetic val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field final synthetic val$messageUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;Lcom/sonyericsson/conversations/conversation/ConversationId;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;
    .param p2, "val$conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "val$messageUri"    # Landroid/net/Uri;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->this$0:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->val$messageUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    const-string/jumbo v1, "starred_messages"

    .line 105
    const-string/jumbo v2, "selected"

    .line 104
    invoke-static {v1, v2}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->this$0:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->-get0(Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v0, "onClickIntent":Landroid/content/Intent;
    const-string/jumbo v1, "thread_id"

    .line 109
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v2

    .line 108
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 110
    const-string/jumbo v1, "chatID"

    .line 111
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->val$messageUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 113
    const-string/jumbo v1, "view_msg_uri"

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->val$messageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->this$0:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->-get0(Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->this$0:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->-get0(Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method
