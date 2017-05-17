.class Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl;
.super Ljava/lang/Object;
.source "ConversationItemManager.java"

# interfaces
.implements Lcom/sonyericsson/conversations/draft/DraftsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/conversation/ConversationItemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DraftsListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    .prologue
    .line 621
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)V

    return-void
.end method


# virtual methods
.method public onDraftDeleted(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 1
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 635
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl$2;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 634
    return-void
.end method

.method public onDraftSaved(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 1
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 625
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl$1;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 624
    return-void
.end method
