.class Lcom/android/contacts/editor/LabeledEditorView$2$1;
.super Ljava/lang/Object;
.source "LabeledEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/LabeledEditorView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/LabeledEditorView$2;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/LabeledEditorView$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/editor/LabeledEditorView$2;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v0}, Lcom/android/contacts/editor/LabeledEditorView;->-get1(Lcom/android/contacts/editor/LabeledEditorView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v0}, Lcom/android/contacts/editor/LabeledEditorView;->-get3(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v0}, Lcom/android/contacts/editor/LabeledEditorView;->-get3(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-interface {v0, v1}, Lcom/android/contacts/editor/Editor$EditorListener;->onDeleteRequested(Lcom/android/contacts/editor/Editor;)V

    .line 142
    :cond_1
    return-void
.end method
