.class Lcom/android/contacts/editor/LinkedContactEditorView$2;
.super Ljava/lang/Object;
.source "LinkedContactEditorView.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/LinkedContactEditorView;->addContactEditorView(Lcom/android/contacts/editor/BaseRawContactEditorView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/LinkedContactEditorView;

.field final synthetic val$editor:Lcom/android/contacts/editor/BaseRawContactEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/LinkedContactEditorView;Lcom/android/contacts/editor/BaseRawContactEditorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/LinkedContactEditorView;
    .param p2, "val$editor"    # Lcom/android/contacts/editor/BaseRawContactEditorView;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$2;->this$0:Lcom/android/contacts/editor/LinkedContactEditorView;

    iput-object p2, p0, Lcom/android/contacts/editor/LinkedContactEditorView$2;->val$editor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView$2;->val$editor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    return-object v0
.end method
