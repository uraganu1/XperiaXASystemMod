.class public Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;
.super Landroid/app/DialogFragment;
.source "IceContactRemovalDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog$IceLoaderListener;
    }
.end annotation


# static fields
.field private static final KEY_CONTACTS:Ljava/lang/String; = "key_contacts"

.field private static final LOADER_ID:I = 0xbb9

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

.field private mIceLoaderListener:Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog$IceLoaderListener;

.field private mLoaderManager:Landroid/app/LoaderManager;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;)Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->mLoaderManager:Landroid/app/LoaderManager;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->mIceLoaderListener:Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog$IceLoaderListener;

    const/16 v3, 0xbb9

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 65
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->mLoaderManager:Landroid/app/LoaderManager;

    .line 61
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog$IceLoaderListener;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog$IceLoaderListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->mIceLoaderListener:Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog$IceLoaderListener;

    .line 57
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, "mCheckedItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 81
    const-string/jumbo v4, "key_contacts"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    .local v3, "serializable":Ljava/io/Serializable;
    move-object v2, v3

    .line 82
    check-cast v2, Ljava/util/HashSet;

    .line 85
    .end local v2    # "mCheckedItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v3    # "serializable":Ljava/io/Serializable;
    :cond_0
    new-instance v4, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

    .line 86
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

    sget-object v5, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;->CheckableContacts:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->setMode(Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;)V

    .line 87
    if-eqz v2, :cond_1

    .line 88
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->setCheckedItems(Ljava/util/HashSet;)V

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 93
    const v5, 0x7f040096

    .line 92
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 94
    .local v1, "list":Landroid/widget/ListView;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090321

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 100
    new-instance v4, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;)V

    const v5, 0x7f090200

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    const v4, 0x7f0901f9

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 118
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

    invoke-virtual {v0, p3}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->setClicked(I)V

    .line 117
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    const-string/jumbo v0, "key_contacts"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->getCheckedItems()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 71
    return-void
.end method

.method public updateContactView(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->setIceContacts(Ljava/util/List;)V

    .line 126
    :cond_0
    return-void
.end method
