.class Lcom/android/contacts/editor/LabeledEditorView$1;
.super Ljava/lang/Object;
.source "LabeledEditorView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/LabeledEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/LabeledEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/LabeledEditorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/LabeledEditorView;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$1;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView$1;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-virtual {v0, p3}, Lcom/android/contacts/editor/LabeledEditorView;->onTypeSelectionChange(I)V

    .line 103
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
