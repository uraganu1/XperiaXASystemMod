.class Lcom/android/contacts/activities/ContactEditorActivity$2;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/activities/ContactEditorActivity;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$2;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$2;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->-get0(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->doSaveAction()V

    .line 133
    return-void
.end method
