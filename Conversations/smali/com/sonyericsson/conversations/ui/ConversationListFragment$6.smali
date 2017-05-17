.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$6;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-wrap5(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    .line 342
    return-void
.end method
