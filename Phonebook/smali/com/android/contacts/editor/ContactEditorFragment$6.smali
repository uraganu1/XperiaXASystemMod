.class Lcom/android/contacts/editor/ContactEditorFragment$6;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;

.field final synthetic val$linkedContactEditorView:Lcom/android/contacts/editor/LinkedContactEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/LinkedContactEditorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p2, "val$linkedContactEditorView"    # Lcom/android/contacts/editor/LinkedContactEditorView;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$linkedContactEditorView:Lcom/android/contacts/editor/LinkedContactEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 915
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$linkedContactEditorView:Lcom/android/contacts/editor/LinkedContactEditorView;

    invoke-virtual {v2}, Lcom/android/contacts/editor/LinkedContactEditorView;->getCurrentRawContactId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->-wrap0(Lcom/android/contacts/editor/ContactEditorFragment;J)Z

    .line 917
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->-get5(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 916
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 918
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 919
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->-get7(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 914
    :cond_0
    return-void
.end method
