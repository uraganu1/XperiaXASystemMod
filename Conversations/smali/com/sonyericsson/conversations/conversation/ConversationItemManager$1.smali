.class Lcom/sonyericsson/conversations/conversation/ConversationItemManager$1;
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
    .line 98
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$1;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$1;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$1;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$1;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-get2(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonyericsson/conversations/draft/DraftsApi;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-wrap1(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Lcom/sonyericsson/conversations/draft/DraftsApi;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-set0(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Ljava/util/List;)Ljava/util/List;

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$1;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-wrap4(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)V

    .line 100
    return-void
.end method
