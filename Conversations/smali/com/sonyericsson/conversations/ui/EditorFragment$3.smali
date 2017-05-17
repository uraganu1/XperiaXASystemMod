.class Lcom/sonyericsson/conversations/ui/EditorFragment$3;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->setJoynActive(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

.field final synthetic val$isComposingImMessage:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p2, "val$isComposingImMessage"    # Z

    .prologue
    .line 432
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iput-boolean p2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->val$isComposingImMessage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 435
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->val$isComposingImMessage:Z

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get6(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    new-instance v1, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {v1, v2}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;-><init>(Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ComposingListener;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-set0(Lcom/sonyericsson/conversations/ui/EditorFragment;Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    .line 438
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get1(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get6(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get9(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 449
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-wrap3(Lcom/sonyericsson/conversations/ui/EditorFragment;Z)V

    .line 450
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-wrap9(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 434
    return-void

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get6(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 443
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get1(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get6(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 444
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get6(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->hasNoActivity()V

    .line 445
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-set0(Lcom/sonyericsson/conversations/ui/EditorFragment;Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get9(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method
