.class Lcom/android/contacts/editor/PhotoActionPopup$1$1;
.super Ljava/lang/Object;
.source "PhotoActionPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PhotoActionPopup$1;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/PhotoActionPopup$1;

.field final synthetic val$imageAdapter:Lcom/android/contacts/editor/ImageAdapter;

.field final synthetic val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/PhotoActionPopup$1;Lcom/android/contacts/editor/ImageAdapter;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/editor/PhotoActionPopup$1;
    .param p2, "val$imageAdapter"    # Lcom/android/contacts/editor/ImageAdapter;
    .param p3, "val$listener"    # Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1$1;->this$1:Lcom/android/contacts/editor/PhotoActionPopup$1;

    iput-object p2, p0, Lcom/android/contacts/editor/PhotoActionPopup$1$1;->val$imageAdapter:Lcom/android/contacts/editor/ImageAdapter;

    iput-object p3, p0, Lcom/android/contacts/editor/PhotoActionPopup$1$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 142
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1$1;->val$imageAdapter:Lcom/android/contacts/editor/ImageAdapter;

    invoke-virtual {v1, p3}, Lcom/android/contacts/editor/ImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 144
    .local v0, "photoValuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onDefaultPhotoSelected(J)V

    .line 145
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1$1;->this$1:Lcom/android/contacts/editor/PhotoActionPopup$1;

    invoke-virtual {v1}, Lcom/android/contacts/editor/PhotoActionPopup$1;->dismiss()V

    .line 141
    return-void
.end method
