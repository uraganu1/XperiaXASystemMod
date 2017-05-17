.class Lcom/sonyericsson/conversations/ui/MessageListFragment$1;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 265
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .line 268
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    const v2, 0x7f0b00eb

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 267
    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-wrap5(Lcom/sonyericsson/conversations/ui/MessageListFragment;ILjava/lang/String;)V

    .line 266
    return-void
.end method
