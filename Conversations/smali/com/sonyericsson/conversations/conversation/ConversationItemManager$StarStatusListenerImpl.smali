.class Lcom/sonyericsson/conversations/conversation/ConversationItemManager$StarStatusListenerImpl;
.super Ljava/lang/Object;
.source "ConversationItemManager.java"

# interfaces
.implements Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/conversation/ConversationItemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StarStatusListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    .prologue
    .line 656
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$StarStatusListenerImpl;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Lcom/sonyericsson/conversations/conversation/ConversationItemManager$StarStatusListenerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$StarStatusListenerImpl;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)V

    return-void
.end method


# virtual methods
.method public onStarStatusChanged(Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;)V
    .locals 1
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p2, "starStatus"    # Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$StarStatusListenerImpl;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-get5(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;->-wrap0(Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;)V

    .line 659
    return-void
.end method
