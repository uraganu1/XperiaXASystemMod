.class Lcom/sonyericsson/conversations/conversation/ConversationItemManager$2;
.super Ljava/lang/Object;
.source "ConversationItemManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/conversation/ConversationItemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$2;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, "xmsCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$2;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$2;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-get0(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-wrap0(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 112
    .local v0, "xmsCursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$2;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$2;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v2, v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-wrap3(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-set2(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Ljava/util/List;)Ljava/util/List;

    .line 113
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$2;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v1}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-wrap4(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_0
    return-void

    .line 114
    .end local v0    # "xmsCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 115
    if-eqz v0, :cond_1

    .line 116
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_1
    throw v1
.end method
