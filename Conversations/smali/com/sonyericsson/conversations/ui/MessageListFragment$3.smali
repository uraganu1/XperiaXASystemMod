.class Lcom/sonyericsson/conversations/ui/MessageListFragment$3;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 527
    if-nez p6, :cond_0

    if-nez p8, :cond_0

    if-nez p9, :cond_0

    if-nez p7, :cond_0

    .line 528
    return-void

    .line 531
    :cond_0
    if-ne p2, p6, :cond_1

    if-eq p4, p8, :cond_3

    .line 532
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get8(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/model/MessageListModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MessageListModel;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setWallpaper(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 524
    :cond_2
    return-void

    .line 531
    :cond_3
    if-ne p5, p9, :cond_1

    if-eq p3, p7, :cond_2

    goto :goto_0
.end method
