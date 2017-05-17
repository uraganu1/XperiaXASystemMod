.class Lcom/android/contacts/editor/ContactEditorFragment$5;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/LinkedContactEditorView$DisplayNameSelectionListener;


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


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 900
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$5;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayNameChange(J)V
    .locals 1
    .param p1, "displayNameRawContactId"    # J

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$5;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->-set4(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    .line 902
    return-void
.end method
