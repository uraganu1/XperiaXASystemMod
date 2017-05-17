.class Lcom/android/contacts/editor/PhotoActionPopup$2$1;
.super Ljava/lang/Object;
.source "PhotoActionPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PhotoActionPopup$2;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/PhotoActionPopup$2;

.field final synthetic val$choices:Ljava/util/ArrayList;

.field final synthetic val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/PhotoActionPopup$2;Ljava/util/ArrayList;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/editor/PhotoActionPopup$2;
    .param p3, "val$listener"    # Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    .prologue
    .line 241
    .local p2, "val$choices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;>;"
    iput-object p1, p0, Lcom/android/contacts/editor/PhotoActionPopup$2$1;->this$1:Lcom/android/contacts/editor/PhotoActionPopup$2;

    iput-object p2, p0, Lcom/android/contacts/editor/PhotoActionPopup$2$1;->val$choices:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/contacts/editor/PhotoActionPopup$2$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$2$1;->val$choices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    .line 246
    .local v0, "choice":Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;
    invoke-virtual {v0}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$2$1;->this$1:Lcom/android/contacts/editor/PhotoActionPopup$2;

    invoke-virtual {v1}, Lcom/android/contacts/editor/PhotoActionPopup$2;->dismiss()V

    .line 244
    return-void

    .line 248
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$2$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onUseAsPrimaryChosen()V

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$2$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onRemovePictureChosen()V

    goto :goto_0

    .line 254
    :pswitch_2
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$2$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onTakePhotoChosen()V

    goto :goto_0

    .line 257
    :pswitch_3
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$2$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onPickFromGalleryChosen()V

    goto :goto_0

    .line 260
    :pswitch_4
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$2$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onPickFromCloudChosen()V

    goto :goto_0

    .line 246
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
