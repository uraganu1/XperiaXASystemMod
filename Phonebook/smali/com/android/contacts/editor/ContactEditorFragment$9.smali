.class Lcom/android/contacts/editor/ContactEditorFragment$9;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor$EditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->createContactEditorView(Lcom/android/contacts/common/model/RawContactDelta;)Lcom/android/contacts/editor/BaseRawContactEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;

.field final synthetic val$rawContactEditor:Lcom/android/contacts/editor/RawContactEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p2, "val$rawContactEditor"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$9;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$9;->val$rawContactEditor:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
    .locals 0
    .param p1, "removedEditor"    # Lcom/android/contacts/editor/Editor;

    .prologue
    .line 1295
    return-void
.end method

.method public onRequest(I)V
    .locals 3
    .param p1, "request"    # I

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$9;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    return-void

    .line 1289
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$9;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-wrap2(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1284
    :cond_1
    :goto_0
    return-void

    .line 1290
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$9;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$9;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->-get5(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$9;->val$rawContactEditor:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->-wrap3(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/content/Context;Lcom/android/contacts/editor/RawContactEditorView;)V

    goto :goto_0
.end method
