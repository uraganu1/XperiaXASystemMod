.class Lcom/android/contacts/editor/ContactEditorFragment$8;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$rawContactCommonEditor:Lcom/android/contacts/editor/RawContactCommonEditorView;

.field final synthetic val$rawContactId:J


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/RawContactCommonEditorView;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p2, "val$rawContactCommonEditor"    # Lcom/android/contacts/editor/RawContactCommonEditorView;
    .param p3, "val$rawContactId"    # J

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$8;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$8;->val$rawContactCommonEditor:Lcom/android/contacts/editor/RawContactCommonEditorView;

    iput-wide p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$8;->val$rawContactId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$8;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$8;->val$rawContactCommonEditor:Lcom/android/contacts/editor/RawContactCommonEditorView;

    iget-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$8;->val$rawContactId:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->-wrap11(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/RawContactCommonEditorView;J)V

    .line 1272
    return-void
.end method
