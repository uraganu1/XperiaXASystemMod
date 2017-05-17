.class Lcom/sonyericsson/conversations/ui/SimMessageListFragment$1;
.super Ljava/lang/Object;
.source "SimMessageListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->-get1(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->-get1(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->deleteMessage()V

    .line 315
    :cond_0
    return-void
.end method
