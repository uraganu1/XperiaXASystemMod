.class Lcom/android/contacts/editor/ContactEditorFragment$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 399
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v1, p2, Lcom/android/contacts/editor/AggregationSuggestionView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 400
    check-cast v0, Lcom/android/contacts/editor/AggregationSuggestionView;

    .line 401
    .local v0, "suggestionView":Lcom/android/contacts/editor/AggregationSuggestionView;
    invoke-virtual {v0}, Lcom/android/contacts/editor/AggregationSuggestionView;->handleItemClickEvent()Z

    .line 402
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->-get4(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->-wrap7(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/ListPopupWindow;)V

    .line 398
    .end local v0    # "suggestionView":Lcom/android/contacts/editor/AggregationSuggestionView;
    :cond_0
    return-void
.end method
