.class Lcom/sonyericsson/conversations/ui/MessageListFragment$5$1;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->onDeleteMarkedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$5;

.field final synthetic val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment$5;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/MessageListFragment$5;
    .param p2, "val$deleteStarred"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$1;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$5;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$1;->val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$1;->val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 1424
    return-void
.end method