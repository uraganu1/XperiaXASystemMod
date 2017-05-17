.class final Lcom/android/contacts/editor/PhotoActionPopup$1;
.super Landroid/app/DialogFragment;
.source "PhotoActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PhotoActionPopup;->createPopupDialogForLinkedContact(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;ILjava/util/ArrayList;)Landroid/app/DialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contactPictureValues:Ljava/util/ArrayList;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ILcom/android/contacts/editor/PhotoActionPopup$Listener;)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;
    .param p3, "val$mode"    # I
    .param p4, "val$listener"    # Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    .prologue
    .line 114
    .local p2, "val$contactPictureValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    iput-object p1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$contactPictureValues:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$mode:I

    iput-object p4, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/PhotoActionPopup$1;->setRetainInstance(Z)V

    .line 117
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 125
    iget-object v8, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$context:Landroid/content/Context;

    .line 126
    const-string/jumbo v9, "layout_inflater"

    .line 125
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 127
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f0400cc

    invoke-virtual {v4, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 128
    .local v7, "root":Landroid/view/View;
    const v8, 0x7f0e0209

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    .line 131
    .local v6, "photoGridView":Landroid/widget/GridView;
    iget-object v8, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$contactPictureValues:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$contactPictureValues:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 132
    :cond_0
    invoke-virtual {v6, v10}, Landroid/widget/GridView;->setVisibility(I)V

    .line 150
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v8, 0x7f090245

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 153
    const v8, 0x7f0e020a

    .line 152
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 155
    .local v0, "actionsListView":Landroid/widget/ListView;
    iget v8, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$mode:I

    const/4 v9, 0x5

    if-eq v8, v9, :cond_2

    .line 156
    iget-object v8, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$context:Landroid/content/Context;

    iget v9, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$mode:I

    invoke-static {v8, v9}, Lcom/android/contacts/editor/PhotoActionPopup;->-wrap0(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 157
    .local v2, "choices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;>;"
    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$context:Landroid/content/Context;

    .line 158
    const v9, 0x7f0400ce

    .line 157
    invoke-direct {v5, v8, v9, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 159
    .local v5, "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    new-instance v8, Lcom/android/contacts/editor/PhotoActionPopup$1$2;

    iget-object v9, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-direct {v8, p0, v2, v9}, Lcom/android/contacts/editor/PhotoActionPopup$1$2;-><init>(Lcom/android/contacts/editor/PhotoActionPopup$1;Ljava/util/ArrayList;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 195
    .end local v2    # "choices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;>;"
    .end local v5    # "listAdapter":Landroid/widget/ListAdapter;
    :goto_1
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 196
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8

    .line 134
    .end local v0    # "actionsListView":Landroid/widget/ListView;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    new-instance v3, Lcom/android/contacts/editor/ImageAdapter;

    iget-object v8, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$context:Landroid/content/Context;

    .line 135
    iget-object v9, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$contactPictureValues:Ljava/util/ArrayList;

    .line 134
    invoke-direct {v3, v8, v9}, Lcom/android/contacts/editor/ImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 136
    .local v3, "imageAdapter":Lcom/android/contacts/editor/ImageAdapter;
    invoke-virtual {v6, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    new-instance v8, Lcom/android/contacts/editor/PhotoActionPopup$1$1;

    iget-object v9, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-direct {v8, p0, v3, v9}, Lcom/android/contacts/editor/PhotoActionPopup$1$1;-><init>(Lcom/android/contacts/editor/PhotoActionPopup$1;Lcom/android/contacts/editor/ImageAdapter;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V

    invoke-virtual {v6, v8}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 192
    .end local v3    # "imageAdapter":Lcom/android/contacts/editor/ImageAdapter;
    .restart local v0    # "actionsListView":Landroid/widget/ListView;
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method
