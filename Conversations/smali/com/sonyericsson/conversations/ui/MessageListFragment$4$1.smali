.class Lcom/sonyericsson/conversations/ui/MessageListFragment$4$1;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment$4;->popupMenuShown(Lcom/sonyericsson/conversations/ui/MessageBubbleView;Landroid/widget/PopupMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$4;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/MessageListFragment$4;

    .prologue
    .line 844
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$4$1;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDeleted(Z)V
    .locals 1
    .param p1, "lastXmsMessageDeleted"    # Z

    .prologue
    .line 847
    if-eqz p1, :cond_0

    .line 848
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$4$1;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$4;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->triggerLastXmsInConversationDeletedCallback()V

    .line 846
    :cond_0
    return-void
.end method
