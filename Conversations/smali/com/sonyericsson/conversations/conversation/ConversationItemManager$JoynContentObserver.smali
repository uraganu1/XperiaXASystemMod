.class Lcom/sonyericsson/conversations/conversation/ConversationItemManager$JoynContentObserver;
.super Landroid/database/ContentObserver;
.source "ConversationItemManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/conversation/ConversationItemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JoynContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$JoynContentObserver;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    .line 607
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 606
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 612
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$JoynContentObserver;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-get5(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;->-wrap0(Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;)V

    .line 611
    return-void
.end method
