.class Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl$1;
.super Ljava/lang/Object;
.source "ConversationItemManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl;->onDraftSaved(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl$1;->this$1:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl$1;->this$1:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl;

    iget-object v0, v0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-get1(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;->-wrap0(Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;)V

    .line 627
    return-void
.end method
