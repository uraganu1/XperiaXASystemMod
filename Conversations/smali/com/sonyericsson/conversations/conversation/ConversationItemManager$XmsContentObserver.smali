.class Lcom/sonyericsson/conversations/conversation/ConversationItemManager$XmsContentObserver;
.super Landroid/database/ContentObserver;
.source "ConversationItemManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/conversation/ConversationItemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XmsContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$XmsContentObserver;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    .line 647
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 646
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 652
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$XmsContentObserver;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-get7(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;->-wrap0(Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;)V

    .line 651
    return-void
.end method
