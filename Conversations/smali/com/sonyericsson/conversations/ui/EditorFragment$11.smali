.class Lcom/sonyericsson/conversations/ui/EditorFragment$11;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->onSetPriority()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get8(Lcom/sonyericsson/conversations/ui/EditorFragment;)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0, p2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-set1(Lcom/sonyericsson/conversations/ui/EditorFragment;I)I

    .line 1437
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get3(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get8(Lcom/sonyericsson/conversations/ui/EditorFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->setMessagePriority(I)V

    .line 1438
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-wrap10(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 1440
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1434
    return-void
.end method
