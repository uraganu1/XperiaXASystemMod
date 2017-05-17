.class Lcom/sonyericsson/conversations/ui/EditorFragment$17;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->initSubjectInput()V
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
    .line 1807
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$17;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1810
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 1811
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$17;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get4(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$17$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$17$1;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment$17;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1818
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
