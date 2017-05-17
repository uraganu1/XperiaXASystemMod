.class Lcom/android/contacts/editor/LinkedContactEditorView$3;
.super Ljava/lang/Object;
.source "LinkedContactEditorView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/LinkedContactEditorView;->bindDisplayNameSelector(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/LinkedContactEditorView;

.field final synthetic val$displayNameAdapter:Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/LinkedContactEditorView;Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/LinkedContactEditorView;
    .param p2, "val$displayNameAdapter"    # Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$3;->this$0:Lcom/android/contacts/editor/LinkedContactEditorView;

    iput-object p2, p0, Lcom/android/contacts/editor/LinkedContactEditorView$3;->val$displayNameAdapter:Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 367
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$3;->val$displayNameAdapter:Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;

    invoke-virtual {v1, p3}, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;->getItem(I)Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;

    move-result-object v0

    .line 370
    .local v0, "selectedDisplayNameValues":Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;
    iget-object v1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$3;->this$0:Lcom/android/contacts/editor/LinkedContactEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LinkedContactEditorView;->-get1(Lcom/android/contacts/editor/LinkedContactEditorView;)Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    return-void

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$3;->this$0:Lcom/android/contacts/editor/LinkedContactEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LinkedContactEditorView;->-get1(Lcom/android/contacts/editor/LinkedContactEditorView;)Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;->setAsContactDefaultDisplayName(I)V

    .line 373
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;->setAsContactDefaultDisplayName(I)V

    .line 374
    iget-object v1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$3;->this$0:Lcom/android/contacts/editor/LinkedContactEditorView;

    invoke-static {v1, v0}, Lcom/android/contacts/editor/LinkedContactEditorView;->-set0(Lcom/android/contacts/editor/LinkedContactEditorView;Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;)Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;

    .line 375
    iget-object v1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$3;->this$0:Lcom/android/contacts/editor/LinkedContactEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LinkedContactEditorView;->-get3(Lcom/android/contacts/editor/LinkedContactEditorView;)Lcom/android/contacts/editor/LinkedContactEditorView$DisplayNameSelectionListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;->getRawContactValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/contacts/editor/LinkedContactEditorView$DisplayNameSelectionListener;->onDisplayNameChange(J)V

    .line 365
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
    .line 381
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
