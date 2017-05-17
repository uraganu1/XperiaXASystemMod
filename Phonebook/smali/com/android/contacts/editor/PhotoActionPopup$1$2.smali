.class Lcom/android/contacts/editor/PhotoActionPopup$1$2;
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

.field final synthetic val$choices:Ljava/util/ArrayList;

.field final synthetic val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/PhotoActionPopup$1;Ljava/util/ArrayList;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/editor/PhotoActionPopup$1;
    .param p3, "val$listener"    # Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    .prologue
    .line 160
    .local p2, "val$choices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;>;"
    iput-object p1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1$2;->this$1:Lcom/android/contacts/editor/PhotoActionPopup$1;

    iput-object p2, p0, Lcom/android/contacts/editor/PhotoActionPopup$1$2;->val$choices:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/contacts/editor/PhotoActionPopup$1$2;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 165
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1$2;->val$choices:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    .line 166
    .local v0, "choice":Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;
    invoke-virtual {v0}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 185
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1$2;->this$1:Lcom/android/contacts/editor/PhotoActionPopup$1;

    invoke-virtual {v1}, Lcom/android/contacts/editor/PhotoActionPopup$1;->dismiss()V

    .line 164
    return-void

    .line 168
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1$2;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onUseAsPrimaryChosen()V

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1$2;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onRemovePictureChosen()V

    goto :goto_0

    .line 174
    :pswitch_2
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1$2;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onTakePhotoChosen()V

    goto :goto_0

    .line 177
    :pswitch_3
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1$2;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onPickFromGalleryChosen()V

    goto :goto_0

    .line 180
    :pswitch_4
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1$2;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onPickFromCloudChosen()V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
