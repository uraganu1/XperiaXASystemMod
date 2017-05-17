.class Lcom/sonyericsson/conversations/ui/EditorFragment$18;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1822
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$18;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$18;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onSubjectFieldClicked()V

    .line 1824
    return-void
.end method
