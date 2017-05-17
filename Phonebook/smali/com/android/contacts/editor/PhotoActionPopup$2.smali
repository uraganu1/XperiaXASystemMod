.class final Lcom/android/contacts/editor/PhotoActionPopup$2;
.super Landroid/app/DialogFragment;
.source "PhotoActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PhotoActionPopup;->createPopupDialog(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;IZ)Landroid/app/DialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$choices:Ljava/util/ArrayList;

.field final synthetic val$isGroup:Z

.field final synthetic val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;


# direct methods
.method constructor <init>(ZLandroid/widget/ListAdapter;Ljava/util/ArrayList;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V
    .locals 0
    .param p1, "val$isGroup"    # Z
    .param p2, "val$adapter"    # Landroid/widget/ListAdapter;
    .param p4, "val$listener"    # Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    .prologue
    .line 224
    .local p3, "val$choices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;>;"
    iput-boolean p1, p0, Lcom/android/contacts/editor/PhotoActionPopup$2;->val$isGroup:Z

    iput-object p2, p0, Lcom/android/contacts/editor/PhotoActionPopup$2;->val$adapter:Landroid/widget/ListAdapter;

    iput-object p3, p0, Lcom/android/contacts/editor/PhotoActionPopup$2;->val$choices:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/contacts/editor/PhotoActionPopup$2;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/PhotoActionPopup$2;->setRetainInstance(Z)V

    .line 227
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v1, 0x7f090245

    .line 234
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoActionPopup$2;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoActionPopup$2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/contacts/editor/PhotoActionPopup$2;->val$isGroup:Z

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 241
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$2;->val$adapter:Landroid/widget/ListAdapter;

    new-instance v2, Lcom/android/contacts/editor/PhotoActionPopup$2$1;

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoActionPopup$2;->val$choices:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/contacts/editor/PhotoActionPopup$2;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/contacts/editor/PhotoActionPopup$2$1;-><init>(Lcom/android/contacts/editor/PhotoActionPopup$2;Ljava/util/ArrayList;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 269
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 239
    :cond_0
    const v1, 0x7f090246

    goto :goto_0
.end method
