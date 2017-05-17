.class Lcom/android/contacts/editor/ContactEditorFragment$7;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


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
    .line 925
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$7;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$7;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->-set3(Lcom/android/contacts/editor/ContactEditorFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 928
    return-void
.end method
