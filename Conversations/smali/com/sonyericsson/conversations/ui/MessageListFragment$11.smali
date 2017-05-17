.class Lcom/sonyericsson/conversations/ui/MessageListFragment$11;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;->setListViewSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$listViewIndex:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Landroid/widget/ListView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;
    .param p2, "val$listView"    # Landroid/widget/ListView;
    .param p3, "val$listViewIndex"    # I

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;->val$listView:Landroid/widget/ListView;

    iput p3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;->val$listViewIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;->val$listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;->val$listViewIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1024
    return-void
.end method
