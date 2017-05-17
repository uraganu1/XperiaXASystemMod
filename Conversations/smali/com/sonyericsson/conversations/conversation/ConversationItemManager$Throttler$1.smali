.class Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler$1;
.super Ljava/lang/Object;
.source "ConversationItemManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler$1;->this$1:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler$1;->this$1:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;->-wrap0(Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;)V

    .line 73
    return-void
.end method
