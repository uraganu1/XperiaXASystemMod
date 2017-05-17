.class Lcom/sonyericsson/conversations/ui/EditorFragment$17$1;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment$17;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$17;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/EditorFragment$17;

    .prologue
    .line 1811
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$17$1;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$17$1;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$17;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$17;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get1(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 1813
    return-void
.end method
