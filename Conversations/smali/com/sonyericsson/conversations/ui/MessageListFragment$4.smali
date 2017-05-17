.class Lcom/sonyericsson/conversations/ui/MessageListFragment$4;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;


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
    .line 834
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public popupMenuShown(Lcom/sonyericsson/conversations/ui/MessageBubbleView;Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "messageBubbleView"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    .param p2, "popup"    # Landroid/widget/PopupMenu;

    .prologue
    .line 837
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v1, p2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-set0(Lcom/sonyericsson/conversations/ui/MessageListFragment;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;

    .line 838
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getActionController()Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v0

    .line 840
    .local v0, "msgActionController":Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    if-nez v0, :cond_0

    .line 841
    const-string/jumbo v1, "MessageActionsController should not be null"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 842
    return-void

    .line 844
    :cond_0
    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageListFragment$4$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$4$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment$4;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->setContentDeleteListener(Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;)V

    .line 836
    return-void
.end method
