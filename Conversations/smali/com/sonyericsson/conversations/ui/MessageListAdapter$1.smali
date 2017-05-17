.class Lcom/sonyericsson/conversations/ui/MessageListAdapter$1;
.super Lcom/sonyericsson/conversations/util/WeakTask;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/WeakTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 88
    return-void
.end method
