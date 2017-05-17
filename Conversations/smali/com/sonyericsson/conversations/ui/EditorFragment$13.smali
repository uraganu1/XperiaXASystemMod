.class Lcom/sonyericsson/conversations/ui/EditorFragment$13;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->initWarningTextView(Landroid/view/View;)V
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
    .line 1569
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$13;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllTextDeleted()V
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$13;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-wrap9(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 1573
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$13;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-wrap2(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 1571
    return-void
.end method

.method public onFirstTextEntered()V
    .locals 1

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$13;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-wrap9(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 1578
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$13;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-wrap5(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 1576
    return-void
.end method
