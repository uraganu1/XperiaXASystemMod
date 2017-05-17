.class Lcom/android/contacts/editor/TextFieldsEditorView$1;
.super Ljava/lang/Object;
.source "TextFieldsEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/TextFieldsEditorView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/TextFieldsEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/TextFieldsEditorView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "focusedChild":Landroid/view/View;
    if-nez v0, :cond_2

    const/4 v1, -0x1

    .line 105
    .local v1, "focusedViewId":I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-static {v3}, Lcom/android/contacts/editor/TextFieldsEditorView;->-get0(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 107
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-static {v3}, Lcom/android/contacts/editor/TextFieldsEditorView;->-get1(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-static {v4, v3}, Lcom/android/contacts/editor/TextFieldsEditorView;->-set0(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z

    .line 108
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/TextFieldsEditorView;->onOptionalFieldVisibilityChange()V

    .line 109
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/TextFieldsEditorView;->rebuildValues()V

    .line 112
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/TextFieldsEditorView;->notifyEditorListener()V

    .line 115
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v3, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 116
    .local v2, "newFocusView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    .line 120
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 99
    return-void

    .line 102
    .end local v1    # "focusedViewId":I
    .end local v2    # "newFocusView":Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    .restart local v1    # "focusedViewId":I
    goto :goto_0

    .line 107
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method
